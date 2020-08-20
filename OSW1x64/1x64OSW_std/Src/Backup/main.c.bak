/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
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
#include "main.h"
#include "cmsis_os.h"
#include "adc.h"
#include "dma.h"
#include "i2c.h"
#include "iwdg.h"
#include "rtc.h"
#include "spi.h"
#include "usart.h"
#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
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

/* USER CODE BEGIN PV */
uint8_t reset_flag = 0;
uint8_t flash_in_use;
UpgradeFlashState upgrade_status;
LogFileState log_file_state;
ThresholdStruct thr_table;
const uint32_t file_flash_addr[] =  {  0x08100000, 0x08104000, 0x08108000, 0x0810C000, 0x08110000, 0x08120000,\
                                       0x08140000, 0x08160000, 0x08180000, 0x081A0000, 0x081C0000, 0x081E0000};
const uint32_t file_flash_end = 0x081FFFFF;
const uint8_t file_flash_count = sizeof(file_flash_addr) / sizeof (file_flash_addr[0]);

RunTimeStatus run_status __attribute__((at(0x2002FC00)));
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
void MX_FREERTOS_Init(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
extern UpgradeStruct up_state;
/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */
  

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_DMA_Init();
  MX_ADC1_Init();
  MX_I2C1_Init();
  MX_I2C2_Init();
  MX_IWDG_Init();
  MX_SPI1_Init();
  MX_SPI4_Init();
  MX_SPI5_Init();
  MX_USART1_UART_Init();
  MX_USART3_UART_Init();
  MX_RTC_Init();
  /* USER CODE BEGIN 2 */
  uint8_t buf[3] = {0};
  if (HAL_SPI_Transmit(&hspi1, buf, 1, 10) != HAL_OK) {
    EPT("spi1 transmit filed when init\n");
  }
  HAL_GPIO_WritePin(SPI4_CS_GPIO_Port, SPI4_CS_Pin, GPIO_PIN_SET);
  HAL_GPIO_WritePin(SPI5_CS_GPIO_Port, SPI5_CS_Pin, GPIO_PIN_SET);
  /* USER CODE END 2 */
  /* Init scheduler */
  osKernelInitialize();
 
  /* Call init function for freertos objects (in freertos.c) */
  MX_FREERTOS_Init(); 
 
  /* Start scheduler */
  osKernelStart();
 
  /* We should never get here as control is now taken by the scheduler */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};
  RCC_PeriphCLKInitTypeDef PeriphClkInitStruct = {0};

  /** Configure the main internal regulator output voltage 
  */
  __HAL_RCC_PWR_CLK_ENABLE();
  __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);
  /** Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_LSI|RCC_OSCILLATORTYPE_HSE;
  RCC_OscInitStruct.HSEState = RCC_HSE_ON;
  RCC_OscInitStruct.LSIState = RCC_LSI_ON;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
  RCC_OscInitStruct.PLL.PLLM = 20;
  RCC_OscInitStruct.PLL.PLLN = 360;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = 4;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Activate the Over-Drive mode 
  */
  if (HAL_PWREx_EnableOverDrive() != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV4;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV2;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_5) != HAL_OK)
  {
    Error_Handler();
  }
  PeriphClkInitStruct.PeriphClockSelection = RCC_PERIPHCLK_RTC;
  PeriphClkInitStruct.RTCClockSelection = RCC_RTCCLKSOURCE_LSI;
  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */

extern RespondStu resp_buf;
void OSW_Init(void)
{
  osStatus_t status;
  uint32_t i;
  uint8_t buf[TAG_MAX_SPACE];
  char *p = (char*)resp_buf.buf;

  EPT("Firmware version: %s\n", fw_version);

  if (__HAL_RCC_GET_FLAG(RCC_FLAG_BORRST) != RESET){
    SET_RESETFLAG(BOR_RESET_BIT);
    //EPT("BOR Reset is set\n");
  }
  if (__HAL_RCC_GET_FLAG(RCC_FLAG_PINRST) != RESET){
    SET_RESETFLAG(PIN_RESET_BIT);
    //EPT("PIN Reset is set\n");
  }
  if (__HAL_RCC_GET_FLAG(RCC_FLAG_PORRST) != RESET){
    SET_RESETFLAG(POR_RESET_BIT);
    //EPT("POR/PDR Reset is set\n");
  }
  if (__HAL_RCC_GET_FLAG(RCC_FLAG_SFTRST) != RESET){
    SET_RESETFLAG(SFT_RESET_BIT);
    //EPT("Software Reset is set\n");
  }
  if (__HAL_RCC_GET_FLAG(RCC_FLAG_IWDGRST) != RESET){
    SET_RESETFLAG(IWDG_RESET_BIT);
    //EPT("Independent Watchdog Reset is set\n");
  }
  if (__HAL_RCC_GET_FLAG(RCC_FLAG_WWDGRST) != RESET){
    SET_RESETFLAG(WWDG_RESET_BIT);
    //EPT("Window Watchdog Reset is set\n");
  }
  if (__HAL_RCC_GET_FLAG(RCC_FLAG_LPWRRST) != RESET){
    SET_RESETFLAG(LPWR_RESET_BIT);
    //EPT("Low-Power Reset is set\n");
  }
  __HAL_RCC_CLEAR_RESET_FLAGS();
  EPT("Run status maigc = %#X, uart_reset = %u\n", run_status.maigc, run_status.uart_reset);

  if (IS_RESETFLAG_SET(SFT_RESET_BIT) || IS_RESETFLAG_SET(IWDG_RESET_BIT)) {
    if (run_status.maigc == RUN_MAGIC) {
      if (run_status.uart_reset) {
        run_status.uart_reset = 0;
        EPT("Startup with UART Reset\n");
        THROW_LOG("Startup with SOFT Reset\n");
        memset(p, 0, 116);
        p += 4; p += 36;
        strcpy((char*)p, fw_version);
        p += 37;
        status = RTOS_EEPROM_Read(EEPROM_ADDR, EE_TAG_ASN, buf, 12);
        memcpy(p, buf, 12);
        p += 20;
        status |= RTOS_EEPROM_Read(EEPROM_ADDR, EE_TAG_FSN, buf, 23);
        memcpy(p, buf, 23);
        p += 23;
        if (status != osOK) {
          EPT("EEPROM ERROR! status = %d\n", status);
          //THROW_LOG("Read EEPROM Failed! status = %d\n", status);
        }
        Uart_Respond(CMD_SOFTRESET, RESPOND_SUCCESS, resp_buf.buf, 120);
      } else {
        if (IS_RESETFLAG_SET(IWDG_RESET_BIT)) {
          EPT("Startup with WATCHDOG Reset\n");
          THROW_LOG("Startup with WATCHDOG Reset\n");
        } else {
          EPT("Startup with HARD Reset\n");
          THROW_LOG("Startup with HARD Reset\n");
        }
      }
      
      EPT("The optical switch channel configured last time is %u\n", run_status.switch_channel);
      if (run_status.switch_channel != (uint32_t)Get_Current_Switch_Channel()) {
        EPT("Detect optical switch channel incorrect while initializing\n");
        THROW_LOG("Detect optical switch channel %u incorrect while initializing\n", run_status.switch_channel);
        Reset_Switch();
      }
      
      if (run_status.exp) {
        HAL_GPIO_WritePin(ALARM_GPIO_Port, ALARM_Pin, GPIO_PIN_RESET);
      } else {
        HAL_GPIO_WritePin(ALARM_GPIO_Port, ALARM_Pin, GPIO_PIN_SET);
      }
      if (run_status.switch_channel) {
        HAL_GPIO_WritePin(SW_READY_GPIO_Port, SW_READY_Pin, GPIO_PIN_RESET);
      } else {
        HAL_GPIO_WritePin(SW_READY_GPIO_Port, SW_READY_Pin, GPIO_PIN_SET);
      }
    } else {
      // Init device
      HAL_GPIO_WritePin(SW_READY_GPIO_Port, SW_READY_Pin, GPIO_PIN_SET);
      HAL_GPIO_WritePin(ALARM_GPIO_Port, ALARM_Pin, GPIO_PIN_SET);
      HAL_GPIO_WritePin(LATCH_GPIO_Port, LATCH_Pin, GPIO_PIN_SET);
      osDelay(pdMS_TO_TICKS(1));
      HAL_GPIO_WritePin(LATCH_GPIO_Port, LATCH_Pin, GPIO_PIN_RESET);
      Init_Run_Status();
      EPT("Variable run_status exception\n");
      THROW_LOG("Variable run_status exception\n");
    }
  } else if (IS_RESETFLAG_SET(BOR_RESET_BIT) || IS_RESETFLAG_SET(POR_RESET_BIT)) {
    // Init device
    HAL_GPIO_WritePin(SW_READY_GPIO_Port, SW_READY_Pin, GPIO_PIN_SET);
    HAL_GPIO_WritePin(ALARM_GPIO_Port, ALARM_Pin, GPIO_PIN_SET);
    HAL_GPIO_WritePin(LATCH_GPIO_Port, LATCH_Pin, GPIO_PIN_SET);
    osDelay(pdMS_TO_TICKS(1));
    HAL_GPIO_WritePin(LATCH_GPIO_Port, LATCH_Pin, GPIO_PIN_RESET);
    Init_Run_Status();
    EPT("Startup with POWER Reset\n");
    //THROW_LOG("Startup with POWER Reset\n");
  } else {
    Reset_Switch();
    // Init device
    HAL_GPIO_WritePin(SW_READY_GPIO_Port, SW_READY_Pin, GPIO_PIN_SET);
    HAL_GPIO_WritePin(ALARM_GPIO_Port, ALARM_Pin, GPIO_PIN_SET);
    HAL_GPIO_WritePin(LATCH_GPIO_Port, LATCH_Pin, GPIO_PIN_SET);
    osDelay(pdMS_TO_TICKS(1));
    HAL_GPIO_WritePin(LATCH_GPIO_Port, LATCH_Pin, GPIO_PIN_RESET);
    Init_Run_Status();
    EPT("Startup with MASTER Reset\n");
    THROW_LOG("Startup with MASTER Reset\n");
  }

  // Read threshold to variable
  status = Get_Threshold_Table(&thr_table);
  if (status) {
    EPT("Get threshold table failed, status = %d\n", status);
    THROW_LOG("Get threshold table failed, status = %d\n", status);
  }

  // upgrade
  up_state.run = RUN_MODE_APPLICATION;
  up_state.is_erasing = 0;
  flash_in_use = 0;
  
  FLASH_If_Init();
  status = Get_Up_Status(&upgrade_status);
  if (status) {
    EPT("Get upgrade status failed, status = %d\n", status);
    THROW_LOG("Get upgrade status failed, status = %d\n", status);
  }
  EPT("upgrade_status: %#X, %u, %u, %u, %#X, %u, %#X\n", upgrade_status.magic, upgrade_status.run, upgrade_status.flash_empty, upgrade_status.length, upgrade_status.crc32,\
                upgrade_status.factory_length, upgrade_status.factory_crc32);

  if (upgrade_status.magic != UPGRADE_MAGIC) {
    EPT("Verify upgrade magic failed\n");
    THROW_LOG("Verify upgrade magic failed\n");
  }
  switch (upgrade_status.run) {
    case 0:
      EPT("Boot from factory\n");
      up_state.upgrade_addr = APPLICATION_1_ADDRESS;
      up_state.upgrade_sector = APPLICATION_1_SECTOR;
      break;
    case 1:
      EPT("Boot from Application 1\n");
      up_state.upgrade_addr = APPLICATION_2_ADDRESS;
      up_state.upgrade_sector = APPLICATION_2_SECTOR;
      break;
    case 2:
      EPT("Boot from Application 2\n");
      up_state.upgrade_addr = APPLICATION_1_ADDRESS;
      up_state.upgrade_sector = APPLICATION_1_SECTOR;
      break;
    default:
      EPT("f_state.run invalid\n");
      THROW_LOG("f_state.run invalid\n");
      up_state.upgrade_addr = RESERVE_ADDRESS;
      up_state.upgrade_sector = RESERVE_SECTOR;
      break;
  }
  EPT("FLASH->OPTCR = %#X\n", FLASH->OPTCR);
  if (!upgrade_status.flash_empty) {
    flash_in_use = 1;
    up_state.is_erasing = 1;
    // erase flash
    EPT("flash is not empty\n");
    if (up_state.upgrade_addr != RESERVE_ADDRESS)
      FLASH_If_Erase_IT(up_state.upgrade_sector);
    EPT("erase sector...\n");
  } else {
    EPT("flash is empty\n");
  }
  
  // log
  Get_Log_Status(&log_file_state);
  EPT("log_file_state: %#X, %#X\n", log_file_state.offset, log_file_state.header);
  for (i = 0; i < file_flash_count - 1; ++i) {
    if (log_file_state.offset < file_flash_addr[i + 1]) {
      break;
    }
  }
  log_file_state.cur_sector = LOG_FIRST_SECTOR + i;
}

extern FLASH_ProcessTypeDef pFlash;
extern osMutexId_t i2cMutex;
extern osMessageQueueId_t mid_ISR;
extern osSemaphoreId_t logEraseSemaphore;
void HAL_FLASH_EndOfOperationCallback(uint32_t ReturnValue)
{
  MsgStruct isr_msg;
  if (0xFFFFFFFFU == ReturnValue) {
    EPT("Erase flash operation completely\n");
    HAL_FLASH_Lock();
    flash_in_use = 0;
    if (up_state.is_erasing == 0) {
      // send signal to logTask
      osSemaphoreRelease(logEraseSemaphore);
    } else {
      upgrade_status.flash_empty = 1;
      up_state.is_erasing = 0;
      isr_msg.type = MSG_TYPE_FLASH_ISR;
      osMessageQueuePut(mid_ISR, &isr_msg, 0U, 0U);
    }
  }
}
void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
  MsgStruct isr_msg;

  if (GPIO_Pin == Strobe_N_Pin) {
    if (HAL_GPIO_ReadPin(SW_MODE_SEL_GPIO_Port, SW_MODE_SEL_Pin) == GPIO_PIN_SET) {
      //EPT("Switch strobe signal come but switch mode is wrong\n");
      //THROW_LOG("Switch strobe signal come but switch mode is wrong\n");
    } else {
      isr_msg.type = MSG_TYPE_SWITCH_ISR;
      osMessageQueuePut(mid_ISR, &isr_msg, 0U, 0U);
    }
  } else if (GPIO_Pin == HARD_RST_N_Pin) {
    __NVIC_SystemReset();
    while (1) {
    }
  }
}

/* USER CODE END 4 */

/**
  * @brief  Period elapsed callback in non blocking mode
  * @note   This function is called  when TIM11 interrupt took place, inside
  * HAL_TIM_IRQHandler(). It makes a direct call to HAL_IncTick() to increment
  * a global variable "uwTick" used as application time base.
  * @param  htim : TIM handle
  * @retval None
  */
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
  /* USER CODE BEGIN Callback 0 */

  /* USER CODE END Callback 0 */
  if (htim->Instance == TIM11) {
    HAL_IncTick();
  }
  /* USER CODE BEGIN Callback 1 */

  /* USER CODE END Callback 1 */
}

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */

  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{ 
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     tex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
