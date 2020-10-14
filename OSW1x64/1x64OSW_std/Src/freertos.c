/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * File Name          : freertos.c
  * Description        : Code for freertos applications
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2020 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under Ultimate Liberty license
  * SLA0044, the "License"; You may not use this file except in compliance with
  * the License. You may obtain a copy of the License at:
  *                             www.st.com/SLA0044
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "FreeRTOS.h"
#include "task.h"
#include "main.h"
#include "cmsis_os.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */     
#include "command.h"
#include "iwdg.h"
#include "flash_if.h"
#include "functions.h"

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN Variables */
osSemaphoreId_t uartProcessSemaphore;
osSemaphoreId_t cmdProcessSemaphore;
osSemaphoreId_t logEraseSemaphore;                  // semaphore id

osMessageQueueId_t mid_LogMsg;
osMessageQueueId_t mid_ISR;                // message queue id

osMutexId_t i2c1Mutex;
osMutexId_t i2c2Mutex;
osMutexId_t spi1Mutex;
osMutexId_t spi4Mutex;
osMutexId_t spi5Mutex;
const osMutexAttr_t Thread_Mutex_attr = {
  "Mutex",                              // human readable mutex name
  osMutexPrioInherit,                       // attr_bits
  NULL,                                     // memory for control block   
  0U                                        // size for control block
};

osThreadId_t cmdProcessTaskHandle;
const osThreadAttr_t cmdProcessTask_attributes = {
  .name = "cmdProcessTask",
  .priority = (osPriority_t) CMD_PROCESS_PRIORITY,
  .stack_size = 2048
};

osThreadId_t uartProcessTaskHandle;
const osThreadAttr_t uartProcessTask_attributes = {
  .name = "uartProcessTask",
  .priority = (osPriority_t) UART_PROCESS_PRIORITY,
  .stack_size = 1024
};

osThreadId_t watchdogTaskHandle;
const osThreadAttr_t watchdogTask_attributes = {
  .name = "watchdogTask",
  .priority = (osPriority_t) WATCHDOG_PRIORITY,
  .stack_size = 512
};

osThreadId_t isrTaskHandle;
const osThreadAttr_t isrTask_attributes = {
  .name = "isrTask",
  .priority = (osPriority_t) INTERRUPT_TASK_PRIORITY,
  .stack_size = 1024
};

osThreadId_t logTaskHandle;
const osThreadAttr_t logTask_attributes = {
  .name = "logTask",
  .priority = (osPriority_t) LOG_MESSAGE_PRIORITY,
  .stack_size = 1024
};

osThreadId_t monTaskHandle;
const osThreadAttr_t monTask_attributes = {
  .name = "monTask",
  .priority = (osPriority_t) MONITOR_PRIORITY,
  .stack_size = 1024
};

/* USER CODE END Variables */
/* Definitions for defaultTask */
osThreadId_t defaultTaskHandle;
const osThreadAttr_t defaultTask_attributes = {
  .name = "defaultTask",
  .priority = (osPriority_t) osPriorityNormal,
  .stack_size = 128
};

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN FunctionPrototypes */
void uartProcessTask(void *argument);
void cmdProcessTask(void *argument);
void watchdogTask(void *argument);
void isrTask(void *argument);
void logTask(void *argument);
void monitorTask(void *argument);

/* USER CODE END FunctionPrototypes */

void StartDefaultTask(void *argument);

void MX_FREERTOS_Init(void); /* (MISRA C 2004 rule 8.1) */

/**
  * @brief  FreeRTOS initialization
  * @param  None
  * @retval None
  */
void MX_FREERTOS_Init(void) {
  /* USER CODE BEGIN Init */
       
  /* USER CODE END Init */

  /* USER CODE BEGIN RTOS_MUTEX */
  /* add mutexes, ... */
  /* USER CODE END RTOS_MUTEX */

  /* USER CODE BEGIN RTOS_SEMAPHORES */
  /* add semaphores, ... */
  uartProcessSemaphore = osSemaphoreNew(1U, 0U, NULL);
  if (uartProcessSemaphore == NULL) {
    Set_Flag(&run_status.internal_exp, INT_EXP_INIT);
  }

  cmdProcessSemaphore = osSemaphoreNew(1U, 0U, NULL);
  if (cmdProcessSemaphore == NULL) {
    Set_Flag(&run_status.internal_exp, INT_EXP_INIT);
  }

  logEraseSemaphore = osSemaphoreNew(1U, 0U, NULL);
  if (logEraseSemaphore == NULL) {
    Set_Flag(&run_status.internal_exp, INT_EXP_INIT);
  }

  mid_LogMsg = osMessageQueueNew(LOG_QUEUE_LENGTH, sizeof(MsgStruct), NULL);
  if (mid_LogMsg == NULL) {
    Set_Flag(&run_status.internal_exp, INT_EXP_INIT);
  }

  mid_ISR = osMessageQueueNew(ISR_QUEUE_LENGTH, sizeof(MsgStruct), NULL);
  if (mid_ISR == NULL) {
    Set_Flag(&run_status.internal_exp, INT_EXP_INIT);
  }

  i2c1Mutex = osMutexNew(&Thread_Mutex_attr);
  if (i2c1Mutex == NULL) {
    Set_Flag(&run_status.internal_exp, INT_EXP_INIT);
  }

  i2c2Mutex = osMutexNew(&Thread_Mutex_attr);
  if (i2c2Mutex == NULL) {
    Set_Flag(&run_status.internal_exp, INT_EXP_INIT);
  }

  spi1Mutex = osMutexNew(&Thread_Mutex_attr);
  if (spi1Mutex == NULL) {
    Set_Flag(&run_status.internal_exp, INT_EXP_INIT);
  }

  spi4Mutex = osMutexNew(&Thread_Mutex_attr);
  if (spi4Mutex == NULL) {
    Set_Flag(&run_status.internal_exp, INT_EXP_INIT);
  }

  spi5Mutex = osMutexNew(&Thread_Mutex_attr);
  if (spi5Mutex == NULL) {
    Set_Flag(&run_status.internal_exp, INT_EXP_INIT);
  }

  /* USER CODE END RTOS_SEMAPHORES */

  /* USER CODE BEGIN RTOS_TIMERS */
  /* start timers, add new ones, ... */
  /* USER CODE END RTOS_TIMERS */

  /* USER CODE BEGIN RTOS_QUEUES */
  /* add queues, ... */
  /* USER CODE END RTOS_QUEUES */

  /* Create the thread(s) */
  /* creation of defaultTask */
  defaultTaskHandle = osThreadNew(StartDefaultTask, NULL, &defaultTask_attributes);

  /* USER CODE BEGIN RTOS_THREADS */
  /* add threads, ... */
  uartProcessTaskHandle = osThreadNew(uartProcessTask, NULL, &uartProcessTask_attributes);
  cmdProcessTaskHandle = osThreadNew(cmdProcessTask, NULL, &cmdProcessTask_attributes);
  watchdogTaskHandle = osThreadNew(watchdogTask, NULL, &watchdogTask_attributes);
  isrTaskHandle = osThreadNew(isrTask, NULL, &isrTask_attributes);
  logTaskHandle = osThreadNew(logTask, NULL, &logTask_attributes);
  monTaskHandle = osThreadNew(monitorTask, NULL, &monTask_attributes);

  /* USER CODE END RTOS_THREADS */

}

/* USER CODE BEGIN Header_StartDefaultTask */
/**
  * @brief  Function implementing the defaultTask thread.
  * @param  argument: Not used 
  * @retval None
  */
/* USER CODE END Header_StartDefaultTask */
void StartDefaultTask(void *argument)
{
  /* USER CODE BEGIN StartDefaultTask */
  /* Infinite loop */
  for(;;)
  {
    osDelay(1);
  }
  /* USER CODE END StartDefaultTask */
}

/* Private application code --------------------------------------------------*/
/* USER CODE BEGIN Application */
extern TransStu trans_buf;
extern RespondStu resp_buf;
struct UartTaskSync{
  uint8_t ProcessOnGoing;
  uint8_t ProcessTimeout;
} uart_sync;

void uartProcessTask(void *argument)
{
  uint32_t msg_length;
  uint32_t msg_id;
  uint32_t chk;
  uint32_t wait_time;
  uint32_t *p32;
  osStatus_t status;

  CLEAR_BIT(huart1.Instance->SR, USART_SR_RXNE);
  __HAL_UART_FLUSH_DRREGISTER(&huart1);
  HAL_UART_Receive_IT(&huart1, trans_buf.buf, 1);

  uart_sync.ProcessTimeout = 0;
  uart_sync.ProcessOnGoing = 0;
  trans_buf.stage = TRANS_WAIT_START;

  for(;;)
  {
    if (trans_buf.stage == TRANS_WAIT_START) {
      wait_time = osWaitForever;
    } else if (trans_buf.stage == TRANS_WAIT_HEADER) {
      wait_time = pdMS_TO_TICKS(TRANS_WAIT_HEAD_TIME);
    } else if (trans_buf.stage == TRANS_RECV_DATA) {
      wait_time = pdMS_TO_TICKS(TRANS_WAIT_TIME);
    }
    status = osSemaphoreAcquire(uartProcessSemaphore, wait_time);
    if (status != osOK) {
      HAL_UART_DMAStop(&huart1);
      EPT("DMA timeout, stage = %u, ErrorCode = %#X\n", trans_buf.stage, huart1.ErrorCode);
      THROW_LOG("DMA timeout, stage = %u, ErrorCode = %#X\n", trans_buf.stage, huart1.ErrorCode);
      Uart_Respond(msg_id, RESPOND_LENGTH_ERR, NULL, 0);
      trans_buf.stage = TRANS_WAIT_START;
      HAL_UART_Receive_IT(&huart1, trans_buf.buf, 1);
      continue;
    }

    if (trans_buf.stage == TRANS_WAIT_START) {
      // Received start byte
      if (trans_buf.buf[0] != TRANS_START_BYTE) {
        // Invalid data
        EPT("Invalid character: %#X\n", trans_buf.buf[0]);
        HAL_UART_Receive_IT(&huart1, trans_buf.buf, 1);
      } else {
        // Prepare to receive message header
        msg_id = 0;
        trans_buf.stage = TRANS_WAIT_HEADER;
        HAL_UART_Receive_DMA(&huart1, &trans_buf.buf[CMD_SEQ_MSG_ID], 8);
      }
    } else if (trans_buf.stage == TRANS_WAIT_HEADER) {
      // Received message header
      p32 = (uint32_t*)&trans_buf.buf[CMD_SEQ_MSG_ID];
      msg_id = switch_endian(*p32);
      p32 = (uint32_t*)&trans_buf.buf[CMD_SEQ_MSG_LENGTH];
      msg_length = switch_endian(*p32);
      if (msg_length > TRANS_MAX_LENGTH - 1 || msg_length < 4 * 5) {
        // Length invalid
        PRINT_HEX("buf", trans_buf.buf, 9);
        EPT("Invalid length %#X\n", msg_length);
        THROW_LOG("Invalid length %#X\n", msg_length);
        Uart_Respond(msg_id, RESPOND_LENGTH_ERR, NULL, 0);
        trans_buf.stage = TRANS_WAIT_START;
        HAL_UART_Receive_IT(&huart1, trans_buf.buf, 1);
      } else {
        trans_buf.stage = TRANS_RECV_DATA;
        HAL_UART_Receive_DMA(&huart1, &trans_buf.buf[CMD_SEQ_MSG_DATA], msg_length - 8);
        //EPT("Message Length: %u, ID: %u\n", msg_length, msg_id);
        trans_buf.length = msg_length + 1;
      }
    } else if (trans_buf.stage == TRANS_RECV_DATA){
      // Received message data

      // TODO: Check CRC
      chk = Cal_CRC32((uint8_t*)&trans_buf.buf[CMD_SEQ_MSG_ID], trans_buf.length - 4 - 1);
      p32 = (uint32_t*)&trans_buf.buf[trans_buf.length - 4];
      if (chk ^ switch_endian(*p32)) {
        // Incorrect
        THROW_LOG("UART CRC32 verification failed, msg_length = %#X, trans_buf.length = %#X, chk = %#X, rcv_chk = %#X\n",\
          msg_length, trans_buf.length, chk, switch_endian(*(uint32_t*)&trans_buf.buf[trans_buf.length - 4]));
        EPT("UART CRC32 verification failed\n");
        EPT("msg_length = %#X, trans_buf.length = %#X, chk = %#X, rcv_chk = %#X\n", msg_length, trans_buf.length, chk, switch_endian((uint32_t)trans_buf.buf[trans_buf.length - 4]));
        PRINT_HEX("buf", trans_buf.buf, trans_buf.length);
        FILL_RESP_MSG(msg_id, RESPOND_CHECKSUM_ERR, 0);
      } else {
        if (!uart_sync.ProcessOnGoing) {
          // Process Command and Respond
          xTaskNotifyGive(cmdProcessTaskHandle);
          status = osSemaphoreAcquire(cmdProcessSemaphore, pdMS_TO_TICKS(COMMAND_PROCESS_TIME));
          if (status == osErrorTimeout) {
            // TODO: Process command timeout
            THROW_LOG("Process command %#X timeout\n", msg_id);
            EPT("Process command timeout\n");
            uart_sync.ProcessTimeout = 1;
            FILL_RESP_MSG(msg_id, RESPOND_LENGTH_ERR, 0);
          } else if (status != osOK) {
            EPT("Error, status=%#X\n", status);
            THROW_LOG("Error, status=%#X\n", status);
            FILL_RESP_MSG(msg_id, RESPOND_LENGTH_ERR, 0);
          } else {
            // success
          }
        } else {
            EPT("Detected process is ongoing\n");
            THROW_LOG("Detected process is ongoing\n");
            FILL_RESP_MSG(msg_id, RESPOND_LENGTH_ERR, 0);
        }
      }

      trans_buf.stage = TRANS_WAIT_START;
      HAL_UART_Receive_IT(&huart1, trans_buf.buf, 1);
      Uart_Respond(resp_buf.cmd, resp_buf.status, resp_buf.buf, resp_buf.length);
    }
  }
}

void cmdProcessTask(void *argument)
{
  for (;;)
  {
    ulTaskNotifyTake(pdTRUE, portMAX_DELAY);
    if (trans_buf.stage != TRANS_RECV_DATA) {
      EPT("Stage incorrect\n");
      THROW_LOG("Stage incorrect\n");
      continue;
    }

    uart_sync.ProcessOnGoing = 1;
    Cmd_Process();

    if (uart_sync.ProcessTimeout == 0) {
      osSemaphoreRelease(cmdProcessSemaphore);
      //Uart_Respond(resp_buf.cmd, resp_buf.status, resp_buf.buf, resp_buf.length);
    } else {
      EPT("Detected process timeout\n");
      THROW_LOG("Detected process timeout\n");
      uart_sync.ProcessTimeout = 0;
    }

    uart_sync.ProcessOnGoing = 0;
  }
}

void watchdogTask(void *argument)
{
  uint32_t delay = pdMS_TO_TICKS(WATCH_DOG_DELAY_TIME);

  HAL_IWDG_Refresh(&hiwdg);
  for(;;)
  {
    osDelay(delay);
    HAL_IWDG_Refresh(&hiwdg);
  }
}

extern UpgradeFlashState upgrade_status;
void isrTask(void *argument)
{
  osStatus_t status;
  MsgStruct msg;
  uint32_t switch_channel;

  OSW_Init();

  for (;;)
  {
    status = osMessageQueueGet(mid_ISR, &msg, 0U, osWaitForever);
    if (status != osOK)
      continue;

    if (msg.type == MSG_TYPE_FLASH_ISR) {
      EPT("Received MSG_TYPE_FLASH_ISR, flash_empty = %u\n", upgrade_status.flash_empty);
      status = Update_Up_Status(&upgrade_status);
      if (status != osOK) {
        EPT("Update upgrade status to eeprom failed\n");
      }
    } else if (msg.type == MSG_TYPE_SWITCH_ISR) {
      switch_channel = Get_Switch_Channel_By_IO();
      EPT("Switch number is %u\n", switch_channel);
      if (switch_channel < 1 || switch_channel > 64) {
        EPT("Invalid switch chennel\n");
        THROW_LOG("Invalid switch chennel = %u [io]\n", switch_channel);
        continue;
      }

      Clear_Switch_Ready();
      if (Set_Switch(switch_channel)) {
        run_status.switch_channel = 0;
        if (!Is_Flag_Set(&run_status.exp, EXP_SWITCH)) {
          THROW_LOG("Switch abnormal\n");
          Set_Flag(&run_status.exp, EXP_SWITCH);
        }
        continue;
      }

      run_status.switch_channel = switch_channel;
      osDelay(pdMS_TO_TICKS(4));

      // Check
      if (Get_Current_Switch_Channel() != switch_channel) {
        Reset_Switch();
        if (!Is_Flag_Set(&run_status.exp, EXP_SWITCH)) {
          THROW_LOG("Switch abnormal\n");
          Set_Flag(&run_status.exp, EXP_SWITCH);
        }
        continue;
      }

      Set_Switch_Ready();
      if (Is_Flag_Set(&run_status.exp, EXP_SWITCH)) {
        THROW_LOG("Switch back to normal\n");
        Clear_Flag(&run_status.exp, EXP_SWITCH);
      }
    }
  }
}

extern UpgradeStruct up_state;
void logTask(void *argument)
{
  MsgStruct log_msg;
  osStatus_t status;
  uint32_t write_length;

  uint32_t overflow_addr;
  uint32_t next_sector_addr;
  uint8_t next_sector;
  uint8_t remainder;

  osDelay(pdMS_TO_TICKS(1000));

  if (log_file_state.cur_sector == LOG_FIRST_SECTOR + file_flash_count - 1) {
    overflow_addr = file_flash_end + 1;
    next_sector_addr = file_flash_addr[0];
    next_sector = LOG_FIRST_SECTOR;
  } else {
    next_sector_addr = overflow_addr = file_flash_addr[log_file_state.cur_sector - LOG_FIRST_SECTOR + 1];
    next_sector = log_file_state.cur_sector + 1;
  }

  for (;;)
  {
    status = osMessageQueueGet(mid_LogMsg, &log_msg, 0U, osWaitForever);
    if (status != osOK)
      continue;
    
    if (log_file_state.offset >= file_flash_end + 1 || log_file_state.offset < file_flash_addr[0])
      continue;

    // The final amount of data written to flash must be an integer multiple of 4
    remainder = log_msg.length % 4;
    if (remainder) remainder = 4 - remainder;
    if (log_file_state.offset + log_msg.length + remainder >= overflow_addr) {
      // 1. fill the rest space with ' '
      Log_Write_byte(log_file_state.offset, ' ', overflow_addr - log_file_state.offset - 4);
      Log_Write_byte(log_file_state.offset + overflow_addr - log_file_state.offset - 4, '\n', 4);

      // 2. erase flash
      while (flash_in_use) {
        osDelay(pdMS_TO_TICKS(200));
      }
      //THROW_LOG("Log space overflow, erasing flash sector %u\n", next_sector);
      osSemaphoreAcquire(logEraseSemaphore, 0);
      if (FLASH_If_Erase_IT(next_sector) == FLASHIF_OK) {
        flash_in_use = 1;
      } else {
        Set_Flag(&run_status.internal_exp, INT_EXP_LOG_ERASE);
      }

      // 3. waiting for completion
      osSemaphoreAcquire(logEraseSemaphore, osWaitForever);

      // 4. update log_file_state, overflow_addr and next_***s
      log_file_state.offset = next_sector_addr;
      log_file_state.cur_sector = next_sector;
      if (log_file_state.cur_sector == LOG_FIRST_SECTOR + file_flash_count - 1) {
        overflow_addr = file_flash_end + 1;
        next_sector_addr = file_flash_addr[0];
        next_sector = LOG_FIRST_SECTOR;
      } else {
        next_sector_addr = overflow_addr = file_flash_addr[log_file_state.cur_sector - LOG_FIRST_SECTOR + 1];
        next_sector = log_file_state.cur_sector + 1;
      }
      if (log_file_state.offset == log_file_state.header) {
        log_file_state.header = next_sector_addr;
      }
    }

    EPT("Writing log to flash address %#X, header = %#X\n", log_file_state.offset, log_file_state.header);
    while (flash_in_use) {
      EPT("Flash in using...\n");
      osDelay(pdMS_TO_TICKS(200));
    }
    write_length = Log_Write(log_file_state.offset, log_msg.pbuf, log_msg.length);
    log_file_state.offset += write_length;
    
    vPortFree(log_msg.pbuf);
    
    if (osMessageQueueGetCount(mid_LogMsg) == 0) {
      // update log_file_state to eeprom/flash
      Update_Log_Status(&log_file_state);
    }
  }
}

void monitorTask(void *argument)
{
  osStatus_t status;
  uint16_t value;
  double voltage, temp;
  uint8_t pre_alarm;

  osDelay(pdMS_TO_TICKS(1000));
  pre_alarm = run_status.exp == 0 ? 0: 1;

  for (;;) {

    status = RTOS_ADC7828_Read(VOLTAGE_2_5_CHANNEL, &value);
    if (status != osOK) {
      EPT("Read adc7828 failed\n");
    } else {
      voltage = (double)value / 4096 * 2.5 * 2;
    }
#if 0
    if (voltage > thr_table.vol_2_5_high || voltage < thr_table.vol_2_5_low) {
      if (!Is_Flag_Set(&run_status.exp, EXP_VOLTAGE_2_5)) {
        THROW_LOG("Voltage 2.5V abnormal\n");
        Set_Flag(&run_status.exp, EXP_VOLTAGE_2_5);
      }
    } else {
      if (Is_Flag_Set(&run_status.exp, EXP_VOLTAGE_2_5)) {
        THROW_LOG("Voltage 2.5V back to normal\n");
        Clear_Flag(&run_status.exp, EXP_VOLTAGE_2_5);
      }
    }
#else
    if (!Is_Flag_Set(&run_status.exp, EXP_VOLTAGE_2_5)) {
      if (voltage > run_status.thr_table.vol_2_5_high_alarm || voltage < run_status.thr_table.vol_2_5_low_alarm) {
        THROW_LOG("Voltage 2.5V abnormal, current voltage = %.3lfV\n", voltage);
        Set_Flag(&run_status.exp, EXP_VOLTAGE_2_5);
      }
    } else {
      if (voltage <= run_status.thr_table.vol_2_5_high_clear && voltage >= run_status.thr_table.vol_2_5_low_clear) {
        THROW_LOG("Voltage 2.5V back to normal\n");
        Clear_Flag(&run_status.exp, EXP_VOLTAGE_2_5);
      }
    }
#endif

    status = RTOS_ADC7828_Read(VOLTAGE_3_3_CHANNEL, &value);
    if (status != osOK) {
      EPT("Read adc7828 failed\n");
    } else {
      voltage = (double)value / 4096 * 2.5 * 2;
    }
#if 0
    if (voltage > thr_table.vol_3_3_high || voltage < thr_table.vol_3_3_low) {
      if (!Is_Flag_Set(&run_status.exp, EXP_VOLTAGE_3_3)) {
        THROW_LOG("Voltage 3.3V abnormal\n");
        Set_Flag(&run_status.exp, EXP_VOLTAGE_3_3);
      }
    } else {
      if (Is_Flag_Set(&run_status.exp, EXP_VOLTAGE_3_3)) {
        THROW_LOG("Voltage 3.3V back to normal\n");
        Clear_Flag(&run_status.exp, EXP_VOLTAGE_3_3);
      }
    }
#else
    if (!Is_Flag_Set(&run_status.exp, EXP_VOLTAGE_3_3)) {
      if (voltage > run_status.thr_table.vol_3_3_high_alarm || voltage < run_status.thr_table.vol_3_3_low_alarm) {
        THROW_LOG("Voltage 3.3V abnormal, current voltage = %.3lfV\n", voltage);
        Set_Flag(&run_status.exp, EXP_VOLTAGE_3_3);
      }
    } else {
      if (voltage <= run_status.thr_table.vol_3_3_high_clear && voltage >= run_status.thr_table.vol_3_3_low_clear) {
        THROW_LOG("Voltage 3.3V back to normal\n");
        Clear_Flag(&run_status.exp, EXP_VOLTAGE_3_3);
      }
    }
#endif

    status = RTOS_ADC7828_Read(VOLTAGE_5_0_CHANNEL, &value);
    if (status != osOK) {
      EPT("Read adc7828 failed\n");
      value = 0;
    } else {
      voltage = (double)value / 4096 * 2.5 * 3;
    }
#if 0
    if (voltage > thr_table.vol_5_0_high || voltage < thr_table.vol_5_0_low) {
      if (!Is_Flag_Set(&run_status.exp, EXP_VOLTAGE_5_0)) {
        THROW_LOG("Voltage 5V abnormal\n");
        Set_Flag(&run_status.exp, EXP_VOLTAGE_5_0);
      }
    } else {
      if (Is_Flag_Set(&run_status.exp, EXP_VOLTAGE_5_0)) {
        THROW_LOG("Voltage 5V back to normal\n");
        Clear_Flag(&run_status.exp, EXP_VOLTAGE_5_0);
      }
    }
#else
    if (!Is_Flag_Set(&run_status.exp, EXP_VOLTAGE_5_0)) {
      if (voltage > run_status.thr_table.vol_5_0_high_alarm || voltage < run_status.thr_table.vol_5_0_low_alarm) {
        THROW_LOG("Voltage 5V abnormal, current voltage = %.3lfV\n", voltage);
        Set_Flag(&run_status.exp, EXP_VOLTAGE_5_0);
      }
    } else {
      if (voltage <= run_status.thr_table.vol_5_0_high_clear && voltage >= run_status.thr_table.vol_5_0_low_clear) {
        THROW_LOG("Voltage 5V back to normal\n");
        Clear_Flag(&run_status.exp, EXP_VOLTAGE_5_0);
      }
    }
#endif

    status = RTOS_ADC7828_Read(VOLTAGE_64_0_CHANNEL, &value);
    if (status != osOK) {
      EPT("Read adc7828 failed\n");
      value = 0;
    } else {
      voltage = (double)value / 4096 * 2.5 * 51;
    }
#if 0
    if (voltage > thr_table.vol_64_0_high || voltage < thr_table.vol_64_0_low) {
      if (!Is_Flag_Set(&run_status.exp, EXP_VOLTAGE_64_0)) {
        THROW_LOG("Voltage 64V abnormal\n");
        Set_Flag(&run_status.exp, EXP_VOLTAGE_64_0);
      }
    } else {
      if (Is_Flag_Set(&run_status.exp, EXP_VOLTAGE_64_0)) {
        THROW_LOG("Voltage 64V back to normal\n");
        Clear_Flag(&run_status.exp, EXP_VOLTAGE_64_0);
      }
    }
#else
    if (!Is_Flag_Set(&run_status.exp, EXP_VOLTAGE_64_0)) {
      if (voltage > run_status.thr_table.vol_64_0_high_alarm || voltage < run_status.thr_table.vol_64_0_low_alarm) {
        THROW_LOG("Voltage 64V abnormal, current voltage = %.3lfV\n", voltage);
        Set_Flag(&run_status.exp, EXP_VOLTAGE_64_0);
      }
    } else {
      if (voltage <= run_status.thr_table.vol_64_0_high_clear && voltage >= run_status.thr_table.vol_64_0_low_clear) {
        THROW_LOG("Voltage 64V back to normal\n");
        Clear_Flag(&run_status.exp, EXP_VOLTAGE_64_0);
      }
    }
#endif

    status = RTOS_ADC7828_Read(TEMPERATURE_CHANNEL, &value);
    if (status != osOK) {
      EPT("Read adc7828 failed\n");
      value = 0;
    } else {
      temp = Cal_Temp(value);
    }
#if 0
    if (temp > thr_table.temp_high || temp < thr_table.temp_low) {
      if (!Is_Flag_Set(&run_status.exp, EXP_TEMPERATURE)) {
        THROW_LOG("Temperature abnormal\n");
        Set_Flag(&run_status.exp, EXP_TEMPERATURE);
      }
    } else {
      if (Is_Flag_Set(&run_status.exp, EXP_TEMPERATURE)) {
        THROW_LOG("Temperature back to normal\n");
        Clear_Flag(&run_status.exp, EXP_TEMPERATURE);
      }
    }
#else
    if (!Is_Flag_Set(&run_status.exp, EXP_TEMPERATURE)) {
      if (temp > run_status.thr_table.temp_high_alarm || temp < run_status.thr_table.temp_low_alarm) {
        THROW_LOG("Temperature abnormal, current temperature = %.3lfC\n", temp);
        Set_Flag(&run_status.exp, EXP_TEMPERATURE);
      }
    } else {
      if (temp <= run_status.thr_table.temp_high_clear && temp >= run_status.thr_table.temp_low_clear) {
        THROW_LOG("Temperature back to normal\n");
        Clear_Flag(&run_status.exp, EXP_TEMPERATURE);
      }
    }
#endif

    if (run_status.exp && !pre_alarm) {
      Set_Alarm();
      pre_alarm = 1;
    } else if (!run_status.exp && pre_alarm) {
      Clear_Alarm();
      pre_alarm = 0;
    }

    osDelay(pdMS_TO_TICKS(500));
  } 
}

/* USER CODE END Application */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
