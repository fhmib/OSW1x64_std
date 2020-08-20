#include "main.h"
#include "common.h"
#include "command.h"
#include "flash_if.h"
#include "FreeRTOS.h"
#include "task.h"
#include "adc.h"
#include "iwdg.h"
#include "i2c.h"
#include "spi.h"
#include "rtc.h"

ChannelSwitchMapStruct channel_map[] = {
  { 1, 11, SWITCH_NUM_2, EE_CAL_SWITCH2},
  {12, 22, SWITCH_NUM_3, EE_CAL_SWITCH3},
  {23, 33, SWITCH_NUM_4, EE_CAL_SWITCH4},
  {34, 44, SWITCH_NUM_5, EE_CAL_SWITCH5},
  {45, 55, SWITCH_NUM_6, EE_CAL_SWITCH6},
  {56, 64, SWITCH_NUM_7, EE_CAL_SWITCH7},
};
uint32_t channel_map_count = sizeof(channel_map) / sizeof(channel_map[0]);

SwitchDacMapStruct switch_map[] = {
  {SWITCH_NUM_1, /*DAC channel*/  6,  2,  3,  5, /*ADC channel*/  0,  1,  2,  3},
  {SWITCH_NUM_2, /*DAC channel*/  4,  8,  1,  0, /*ADC channel*/  4,  5,  6,  7},
  {SWITCH_NUM_3, /*DAC channel*/ 12, 10,  7,  9, /*ADC channel*/  8,  9, 10, 11},
  {SWITCH_NUM_4, /*DAC channel*/ 14, 13, 15, 11, /*ADC channel*/ 12, 13, 14, 15},
  {SWITCH_NUM_5, /*DAC channel*/ 22, 17, 26, 21, /*ADC channel*/ 16, 17, 18, 19},
  {SWITCH_NUM_6, /*DAC channel*/ 18, 20, 19, 16, /*ADC channel*/ 20, 21, 22, 23},
  {SWITCH_NUM_7, /*DAC channel*/ 23, 29, 31, 25, /*ADC channel*/ 24, 25, 26, 27}
};

extern osMessageQueueId_t mid_LogMsg;
extern UpgradeFlashState upgrade_status;
extern RespondStu resp_buf;

#define LOG_HEADER "%04u-%02u-%02u %02u:%02u:%02u : "

void Throw_Log(uint8_t *buf, uint32_t length)
{
  MsgStruct log_msg;
  RTC_DateTypeDef date;
  RTC_TimeTypeDef time;
#ifdef PRINT_DEBUG_MESSAGE
  osStatus_t status;
#endif

  HAL_RTC_GetTime(&hrtc, &time, RTC_FORMAT_BIN);
  HAL_RTC_GetDate(&hrtc, &date, RTC_FORMAT_BIN);

  log_msg.pbuf = pvPortMalloc(length + 32);
  sprintf(log_msg.pbuf, LOG_HEADER, 2000 + date.Year, date.Month, date.Date, time.Hours, time.Minutes, time.Seconds);
  log_msg.length = strlen((char*)log_msg.pbuf);
  memcpy((char*)log_msg.pbuf + log_msg.length, buf, length);
  log_msg.length += length;
  log_msg.type = MSG_TYPE_LOG;
#ifdef PRINT_DEBUG_MESSAGE
  if ((status = osMessageQueuePut(mid_LogMsg, &log_msg, 0U, 0U)) != osOK) {
    EPT("Put Message to Queue failed, status = %d\n", status);
  }
#else
  osMessageQueuePut(mid_LogMsg, &log_msg, 0U, 0U);
#endif
}

uint32_t Log_Write(uint32_t addr, uint8_t *pbuf, uint32_t length)
{
  uint32_t w_len = 0, data, i;
  uint8_t remainder = length % 4;

  /* Unlock the Flash to enable the flash control register access *************/
  HAL_FLASH_Unlock();

  while (w_len < length) {
    if (w_len + 4 > length) {
      for (i = 0, data = 0; i < 4; ++i) {
        data |= (i < remainder ? pbuf[w_len + i] : ' ') << i * 8;
      }
    } else {
      memcpy(&data, pbuf + w_len, 4);
    }
    HAL_FLASH_Program(FLASH_TYPEPROGRAM_WORD, addr, (uint64_t)data);
    addr += 4;
    w_len += 4;
  }

  /* Lock the Flash to disable the flash control register access (recommended
     to protect the FLASH memory against possible unwanted operation) *********/
  HAL_FLASH_Lock();

  return w_len;
}

uint32_t Log_Write_byte(uint32_t addr, uint8_t ch, uint32_t length)
{
  uint32_t w_len = 0, data;

  data = ch << 24 | ch << 16 | ch << 8 | ch;
  /* Unlock the Flash to enable the flash control register access *************/
  HAL_FLASH_Unlock();

  while (w_len < length) {
    HAL_FLASH_Program(FLASH_TYPEPROGRAM_WORD, addr, (uint64_t)data);
    addr += 4;
    w_len += 4;
  }

  /* Lock the Flash to disable the flash control register access (recommended
     to protect the FLASH memory against possible unwanted operation) *********/
  HAL_FLASH_Lock();

  return w_len;
}

uint32_t Log_Read(uint32_t addr, uint8_t *pbuf, uint32_t length)
{
  memcpy(pbuf, (void*)addr, length);

  return length;
}

osStatus_t Get_Up_Status(UpgradeFlashState *up_status)
{
  osStatus_t status;
  uint8_t buf[EE_UP_FACTORY_CRC32 + 4 - EE_UP_MAGIC];

  status = RTOS_EEPROM_Read(EEPROM_ADDR, EE_UP_MAGIC, buf, sizeof(buf));
  if (status != osOK) {
    return status;
  }
  
  up_status->magic = Buffer_To_BE32(&buf[EE_UP_MAGIC - EE_UP_MAGIC]);
  up_status->run = buf[EE_UP_RUN - EE_UP_MAGIC];
  up_status->flash_empty = buf[EE_UP_FLASH_EMPTY - EE_UP_MAGIC];
  up_status->length = Buffer_To_BE32(&buf[EE_UP_LENGTH - EE_UP_MAGIC]);
  up_status->crc32 = Buffer_To_BE32(&buf[EE_UP_CRC32 - EE_UP_MAGIC]);
  up_status->factory_length = Buffer_To_BE32(&buf[EE_UP_FACTORY_LENGTH - EE_UP_MAGIC]);
  up_status->factory_crc32 = Buffer_To_BE32(&buf[EE_UP_FACTORY_CRC32 - EE_UP_MAGIC]);
  return status;
}

osStatus_t Update_Up_Status(UpgradeFlashState *up_status)
{
  uint8_t buf[EE_UP_FACTORY_CRC32 + 4 - EE_UP_MAGIC];
  
  BE32_To_Buffer(up_status->magic, &buf[EE_UP_MAGIC - EE_UP_MAGIC]);
  buf[EE_UP_RUN - EE_UP_MAGIC] = up_status->run;
  buf[EE_UP_FLASH_EMPTY - EE_UP_MAGIC] = up_status->flash_empty;
  BE32_To_Buffer(up_status->length, &buf[EE_UP_LENGTH - EE_UP_MAGIC]);
  BE32_To_Buffer(up_status->crc32, &buf[EE_UP_CRC32 - EE_UP_MAGIC]);
  BE32_To_Buffer(up_status->factory_length, &buf[EE_UP_FACTORY_LENGTH - EE_UP_MAGIC]);
  BE32_To_Buffer(up_status->factory_crc32, &buf[EE_UP_FACTORY_CRC32 - EE_UP_MAGIC]);

  return RTOS_EEPROM_Write(EEPROM_ADDR, EE_UP_MAGIC, buf, sizeof(buf));
}

osStatus_t Get_Log_Status(LogFileState *log_status)
{
  osStatus_t status;
  uint8_t buf[12];

  status = RTOS_EEPROM_Read(EEPROM_ADDR, EE_LOG_MAGIC, buf, sizeof(buf));
  if (status != osOK) {
    return status;
  }

  log_status->magic = Buffer_To_BE32(&buf[EE_LOG_MAGIC - EE_LOG_MAGIC]);
  log_status->offset = Buffer_To_BE32(&buf[EE_LOG_OFFSET - EE_LOG_MAGIC]);
  log_status->header = Buffer_To_BE32(&buf[EE_LOG_HEADER - EE_LOG_MAGIC]);
  return status;
}

osStatus_t Update_Log_Status(LogFileState *log_status)
{
  uint8_t buf[8];
  
  BE32_To_Buffer(log_status->offset, &buf[EE_LOG_OFFSET - EE_LOG_OFFSET]);
  BE32_To_Buffer(log_status->header, &buf[EE_LOG_HEADER - EE_LOG_OFFSET]);

  return RTOS_EEPROM_Write(EEPROM_ADDR, EE_LOG_OFFSET, buf, sizeof(buf));
}

osStatus_t Reset_Log_Status()
{
  uint8_t buf[4] = {0};

  return RTOS_EEPROM_Write(EEPROM_ADDR, EE_LOG_MAGIC, buf, sizeof(buf));
}

osStatus_t Get_Threshold_Table(ThresholdStruct *table)
{
  osStatus_t status;
  int32_t value;

  status = get_32_from_eeprom(EEPROM_ADDR, EE_VOLTAGE_2_5_THR, (uint32_t*)&value);
  if (value == 0xFFFFFFFF) {
    table->vol_2_5_high = 2.6;
  } else {
    table->vol_2_5_high = (double)value / 10;
  }

  status |= get_32_from_eeprom(EEPROM_ADDR, EE_VOLTAGE_2_5_THR + 4, (uint32_t*)&value);
  if (value == 0xFFFFFFFF) {
    table->vol_2_5_low = 2.4;
  } else {
    table->vol_2_5_low = (double)value / 10;
  }

  status |= get_32_from_eeprom(EEPROM_ADDR, EE_VOLTAGE_3_3_THR, (uint32_t*)&value);
  if (value == 0xFFFFFFFF) {
    table->vol_3_3_high = 3.5;
  } else {
    table->vol_3_3_high = (double)value / 10;
  }

  status |= get_32_from_eeprom(EEPROM_ADDR, EE_VOLTAGE_3_3_THR + 4, (uint32_t*)&value);
  if (value == 0xFFFFFFFF) {
    table->vol_3_3_low = 3.1;
  } else {
    table->vol_3_3_low = (double)value / 10;
  }

  status |= get_32_from_eeprom(EEPROM_ADDR, EE_VOLTAGE_5_0_THR, (uint32_t*)&value);
  if (value == 0xFFFFFFFF) {
    table->vol_5_0_high = 5.3;
  } else {
    table->vol_5_0_high = (double)value / 10;
  }

  status |= get_32_from_eeprom(EEPROM_ADDR, EE_VOLTAGE_5_0_THR + 4, (uint32_t*)&value);
  if (value == 0xFFFFFFFF) {
    table->vol_5_0_low = 4.7;
  } else {
    table->vol_5_0_low = (double)value / 10;
  }

  status |= get_32_from_eeprom(EEPROM_ADDR, EE_VOLTAGE_64_0_THR, (uint32_t*)&value);
  if (value == 0xFFFFFFFF) {
    table->vol_64_0_high = 68;
  } else {
    table->vol_64_0_high = (double)value / 10;
  }

  status |= get_32_from_eeprom(EEPROM_ADDR, EE_VOLTAGE_64_0_THR + 4, (uint32_t*)&value);
  if (value == 0xFFFFFFFF) {
    table->vol_64_0_low = 60;
  } else {
    table->vol_64_0_low = (double)value / 10;
  }

  status |= get_32_from_eeprom(EEPROM_ADDR, EE_TEMPERATURE_THR, (uint32_t*)&value);
  if (value == 0xFFFFFFFF) {
    table->temp_high = 85;
  } else {
    table->temp_high = (double)value / 10;
  }

  status |= get_32_from_eeprom(EEPROM_ADDR, EE_TEMPERATURE_THR + 4, (uint32_t*)&value);
  if (value == 0xFFFFFFFF) {
    table->temp_low = -10;
  } else {
    table->temp_low = (double)value / 10;
  }
  
  return status;
}

uint32_t Get_Switch_Channel_By_IO()
{
  uint32_t val = 0;

  if (HAL_GPIO_ReadPin(SW_D5_GPIO_Port, SW_D5_Pin) == GPIO_PIN_SET)
    val |= 1 << 5;
  if (HAL_GPIO_ReadPin(SW_D4_GPIO_Port, SW_D4_Pin) == GPIO_PIN_SET)
    val |= 1 << 4;
  if (HAL_GPIO_ReadPin(SW_D3_GPIO_Port, SW_D3_Pin) == GPIO_PIN_SET)
    val |= 1 << 3;
  if (HAL_GPIO_ReadPin(SW_D2_GPIO_Port, SW_D2_Pin) == GPIO_PIN_SET)
    val |= 1 << 2;
  if (HAL_GPIO_ReadPin(SW_D1_GPIO_Port, SW_D1_Pin) == GPIO_PIN_SET)
    val |= 1 << 1;
  if (HAL_GPIO_ReadPin(SW_D0_GPIO_Port, SW_D0_Pin) == GPIO_PIN_SET)
    val |= 1 << 0;
  
  return val + 1;
}

int8_t Set_Switch(uint32_t switch_channel)
{
  int32_t pre_index, index;
  uint8_t first_switch, second_switch;
  uint16_t addr;
  int val_x, val_y;
  osStatus_t status;

  index = Get_Index_Of_Channel_Map(switch_channel);
  if (index < 0) {
    EPT("Invalid switch channel number : %u\n", switch_channel);
    return -1;
  }

  first_switch = channel_map[index].first_switch;
  second_switch = SWITCH_NUM_1;

  // TODO: Disable previous switch channel
  if (run_status.switch_channel != 0) {
    pre_index = Get_Index_Of_Channel_Map(run_status.switch_channel);
    if (pre_index != index) {
      Clear_Switch_Dac(channel_map[pre_index].first_switch);
    } else {
      Clear_Switch_Dac(second_switch);
    }
  }

  // Configure new switch channel

  addr = channel_map[index].first_eeprom_addr + (switch_channel - channel_map[index].min_channel_num) * 8;
  status = get_32_from_eeprom(EEPROM_ADDR, addr, (uint32_t*)&val_x);
  if (status != osOK) {
    EPT("Get val_x failed 1. status = %d\n", status);
    return -2;
  }
  status = get_32_from_eeprom(EEPROM_ADDR, addr + 4, (uint32_t*)&val_y);
  if (status != osOK) {
    EPT("Get val_y failed 1. status = %d\n", status);
    return -3;
  }

  if (set_sw_dac(first_switch, val_x, val_y)) {
    EPT("Write DAC faliled\n");
    return -4;
  }
  addr = EE_CAL_SWITCH1 + index * 8;
  status = get_32_from_eeprom(EEPROM_ADDR, addr, (uint32_t*)&val_x);
  if (status != osOK) {
    EPT("Get val_x failed 2. status = %d\n", status);
    return -5;
  }
  status = get_32_from_eeprom(EEPROM_ADDR, addr + 4, (uint32_t*)&val_y);
  if (status != osOK) {
    EPT("Get val_y failed 2. status = %d\n", status);
    return -6;
  }

  if (set_sw_dac(second_switch, val_x, val_y)) {
    EPT("Write DAC faliled\n");
    return -7;
  }

  return 0;
}

int8_t Clear_Switch_Dac(uint32_t switch_id)
{
  if (set_sw_dac(switch_id, 0, 0)) {
    EPT("Write DAC faliled\n");
    return -1;
  }

  return 0;
}

void Reset_Switch(void)
{
  uint32_t index;

  if (run_status.maigc == RUN_MAGIC && run_status.switch_channel != 0) {
    index = Get_Index_Of_Channel_Map(run_status.switch_channel);
    Clear_Switch_Dac(channel_map[index].first_switch);
    Clear_Switch_Dac(SWITCH_NUM_1);
  }

  run_status.switch_channel = 0;
  Clear_Switch_Ready();
}

int8_t Get_Switch_Adc(uint32_t switch_id, uint16_t *px, uint16_t *nx, uint16_t *py, uint16_t *ny)
{
  uint32_t i;
  osStatus_t status;

  if (switch_id >= SWITCH_NUM_TOTAL || switch_id == 0) {
    return -1;
  }

  for (i = 0; i < sizeof(switch_map)/sizeof(switch_map[0]); ++i) {
    if (switch_map[i].sw_num == switch_id)
      break;
  }
  status = RTOS_ADC7953_Read(switch_map[i].adc_px_chan, px);
  status |= RTOS_ADC7953_Read(switch_map[i].adc_nx_chan, nx);
  status |= RTOS_ADC7953_Read(switch_map[i].adc_py_chan, py);
  status |= RTOS_ADC7953_Read(switch_map[i].adc_ny_chan, ny);
  if (status != osOK) {
    EPT("Read adc failed\n");
    return -2;
  }

  return 0;
}

int32_t Get_Current_Switch_Channel(void)
{
  int32_t index, std_x, std_y;
  uint8_t first_switch, second_switch;
  uint16_t addr;
  osStatus_t status;
  uint32_t val_x, val_y;
  uint16_t px, nx, py, ny;

  if (run_status.switch_channel == 0) {
    //THROW_LOG("No switch channel is valid\n");
    return 0;
  }

  index = Get_Index_Of_Channel_Map(run_status.switch_channel);
  if (index < 0) {
    EPT("Invalid switch channel number : %u\n", run_status.switch_channel);
    THROW_LOG("Invalid switch channel number : %u\n", run_status.switch_channel);
    return -1;
  }

  first_switch = channel_map[index].first_switch;
  addr = channel_map[index].first_eeprom_addr + (run_status.switch_channel - channel_map[index].min_channel_num) * 8;
  status = get_32_from_eeprom(EEPROM_ADDR, addr, (uint32_t*)&std_x);
  if (status != osOK) {
    EPT("Get val_x failed 1. status = %d\n", status);
    return -2;
  }
  status = get_32_from_eeprom(EEPROM_ADDR, addr + 4, (uint32_t*)&std_y);
  if (status != osOK) {
    EPT("Get val_y failed 1. status = %d\n", status);
    return -3;
  }
  if (Get_Switch_Adc(first_switch, &px, &nx, &py, &ny)) {
    EPT("Get_Switch_Adc failed 1\n");
    return -4;
  }
  if (std_x >= 0)
    val_x = (uint32_t)px;
  else
    val_x = (uint32_t)nx;
  if (std_y >= 0)
    val_y = (uint32_t)py;
  else
    val_y = (uint32_t)ny;
  EPT("First switch DA/AD value: val_x = %d, std_x = %d, val_y = %d, std_y = %d\n", val_x, std_x, val_y, std_y);
  if (!Is_Value_Approximate(val_x, my_abs(std_x), 0.05) || !Is_Value_Approximate(val_y, my_abs(std_y), 0.05)) {
    EPT("First level switch DA/AD different: %u, %d, %u, %d\n", val_x, std_x, val_y, std_y);
    THROW_LOG("First level switch DA/AD different: %u, %d, %u, %d\n", val_x, std_x, val_y, std_y);
    return -5;
  }

  second_switch = SWITCH_NUM_1;
  addr = EE_CAL_SWITCH1 + index * 8;
  status = get_32_from_eeprom(EEPROM_ADDR, addr, (uint32_t*)&std_x);
  if (status != osOK) {
    EPT("Get val_x failed 2. status = %d\n", status);
    return -6;
  }
  status = get_32_from_eeprom(EEPROM_ADDR, addr + 4, (uint32_t*)&std_y);
  if (status != osOK) {
    EPT("Get val_y failed 2. status = %d\n", status);
    return -7;
  }
  if (Get_Switch_Adc(second_switch, &px, &nx, &py, &ny)) {
    EPT("Get_Switch_Adc failed 1\n");
    return -8;
  }
  if (std_x >= 0)
    val_x = (uint32_t)px;
  else
    val_x = (uint32_t)nx;
  if (std_y >= 0)
    val_y = (uint32_t)py;
  else
    val_y = (uint32_t)ny;
  EPT("Second switch DA/AD value: val_x = %d, std_x = %d, val_y = %d, std_y = %d\n", val_x, std_x, val_y, std_y);
  if (!Is_Value_Approximate(val_x, my_abs(std_x), 0.05) || !Is_Value_Approximate(val_y, my_abs(std_y), 0.05)) {
    EPT("Second level switch DA/AD different: %u, %d, %u, %d\n", val_x, std_x, val_y, std_y);
    THROW_LOG("Second level switch DA/AD different: %u, %d, %u, %d\n", val_x, std_x, val_y, std_y);
    return -9;
  }

  return run_status.switch_channel;
}

int32_t Get_Index_Of_Channel_Map(uint32_t switch_channel)
{
  int i;

  for (i = 0; i < channel_map_count; ++i) {
    if (switch_channel >= channel_map[i].min_channel_num && switch_channel <= channel_map[i].max_channel_num) {
      break;
    }
  }
  
  if (i >= channel_map_count) {
    return -1;
  }
  
  return i;
}


inline void Set_Alarm(void)
{
  HAL_GPIO_WritePin(ALARM_GPIO_Port, ALARM_Pin, GPIO_PIN_RESET);
  HAL_GPIO_WritePin(LATCH_GPIO_Port, LATCH_Pin, GPIO_PIN_SET);
  osDelay(pdMS_TO_TICKS(1));
  HAL_GPIO_WritePin(LATCH_GPIO_Port, LATCH_Pin, GPIO_PIN_RESET);
}

inline void Clear_Alarm(void)
{
  HAL_GPIO_WritePin(ALARM_GPIO_Port, ALARM_Pin, GPIO_PIN_SET);
  HAL_GPIO_WritePin(LATCH_GPIO_Port, LATCH_Pin, GPIO_PIN_SET);
  osDelay(pdMS_TO_TICKS(1));
  HAL_GPIO_WritePin(LATCH_GPIO_Port, LATCH_Pin, GPIO_PIN_RESET);
}

inline void Set_Switch_Ready(void)
{
  HAL_GPIO_WritePin(SW_READY_GPIO_Port, SW_READY_Pin, GPIO_PIN_RESET);
  HAL_GPIO_WritePin(LATCH_GPIO_Port, LATCH_Pin, GPIO_PIN_SET);
  osDelay(pdMS_TO_TICKS(1));
  HAL_GPIO_WritePin(LATCH_GPIO_Port, LATCH_Pin, GPIO_PIN_RESET);
}

inline void Clear_Switch_Ready(void)
{
  HAL_GPIO_WritePin(SW_READY_GPIO_Port, SW_READY_Pin, GPIO_PIN_SET);
  HAL_GPIO_WritePin(LATCH_GPIO_Port, LATCH_Pin, GPIO_PIN_SET);
  osDelay(pdMS_TO_TICKS(1));
  HAL_GPIO_WritePin(LATCH_GPIO_Port, LATCH_Pin, GPIO_PIN_RESET);
}

void Init_Run_Status(void)
{
  memset(&run_status, 0, sizeof(run_status));
  run_status.maigc = RUN_MAGIC;
}

void Set_Flag(uint32_t *status, uint32_t bit_addr)
{
  *status |= 1 << bit_addr;
}

void Clear_Flag(uint32_t *status, uint32_t bit_addr)
{
  *status &= ~(1 << bit_addr);
}  

uint8_t Is_Flag_Set(uint32_t *status, uint32_t bit_addr)
{
  if (*status & (1 << bit_addr)) return 1;
  else return 0;
}

double Cal_Temp(uint16_t adc)
{
  double d_value, temp;
  d_value = (double)adc / 4096 * 2.5;
  d_value = d_value / (2.5 - d_value);
  d_value = log(d_value);
  temp = 503620 / (149 * d_value + 1690) - 273;
  return temp;
}

uint32_t debug_sw_dac(uint8_t sw_num, int32_t val_x, int32_t val_y)
{

  if (sw_num >= SWITCH_NUM_TOTAL) {
    return RESPOND_FAILURE;
  }
  
  if (set_sw_dac(sw_num, val_x, val_y)) {
    return RESPOND_FAILURE;
  }

  return RESPOND_SUCCESS;
}

int8_t set_sw_dac(uint8_t sw_num, int32_t val_x, int32_t val_y)
{
  uint32_t i;
  uint16_t dac_px_val, dac_nx_val, dac_py_val, dac_ny_val;
  osStatus_t status;

  if (sw_num != SWITCH_ALL_CHANNEL) {
    for (i = 0; i < sizeof(switch_map)/sizeof(switch_map[0]); ++i) {
      if (switch_map[i].sw_num == sw_num) {
        // x
        if (val_x >= 0) {
          dac_px_val = (uint16_t)val_x;
          dac_nx_val = 0;
        } else {
          dac_px_val = 0;
          dac_nx_val = (uint16_t)my_abs(val_x);
        }
        // y
        if (val_y >= 0) {
          dac_py_val = (uint16_t)val_y;
          dac_ny_val = 0;
        } else {
          dac_py_val = 0;
          dac_ny_val = (uint16_t)my_abs(val_y);
        }
        break;
      }
    }
    // write dac
    status = RTOS_DAC5535_Write(switch_map[i].px_chan, dac_px_val);
    status |= RTOS_DAC5535_Write(switch_map[i].nx_chan, dac_nx_val);
    status |= RTOS_DAC5535_Write(switch_map[i].py_chan, dac_py_val);
    status |= RTOS_DAC5535_Write(switch_map[i].ny_chan, dac_ny_val);
    EPT("Set switch info : sw_num = %u, px = %u, nx = %u, py = %u, ny = %u\n", sw_num, dac_px_val, dac_nx_val, dac_py_val, dac_ny_val);
    if (status != osOK) {
      EPT("Write dac failed\n");
      return -1;
    }
#if 0
    val_x = switch_map[i].px_chan << 24;
    val_x |= switch_map[i].nx_chan << 16;
    val_x |= switch_map[i].py_chan << 8;
    val_x |= switch_map[i].ny_chan << 0;
    BE32_To_Buffer(val_x, resp_buf.buf);
    val_x = dac_px_val << 16;
    val_x |= dac_nx_val << 0;
    BE32_To_Buffer(val_x, resp_buf.buf + 4);
    val_x = dac_py_val << 16;
    val_x |= dac_ny_val << 0;
    BE32_To_Buffer(val_x, resp_buf.buf + 8);
#endif
  } else {
    dac_px_val = (uint16_t)my_abs(val_x);
    for (i = 0; i < 32; ++i) {
      status = RTOS_DAC5535_Write((uint8_t)i, dac_px_val);
      if (status != osOK) {
        EPT("Write dac failed\n");
        return -1;
      }
    }
  }
  
  return 0;
}

uint32_t debug_sw_adc(uint8_t sw_num)
{
  uint32_t i;
  osStatus_t status;
  uint16_t px, nx, py, ny;

  if (sw_num >= SWITCH_NUM_TOTAL || sw_num == 0) {
    return RESPOND_FAILURE;
  }

  for (i = 0; i < sizeof(switch_map)/sizeof(switch_map[0]); ++i) {
    if (switch_map[i].sw_num == sw_num)
      break;
  }
  status = RTOS_ADC7953_Read(switch_map[i].adc_px_chan, &px);
  status |= RTOS_ADC7953_Read(switch_map[i].adc_nx_chan, &nx);
  status |= RTOS_ADC7953_Read(switch_map[i].adc_py_chan, &py);
  status |= RTOS_ADC7953_Read(switch_map[i].adc_ny_chan, &ny);
  if (status != osOK) {
    EPT("Read adc failed\n");
    return RESPOND_FAILURE;
  }
  i = px << 16;
  i |= nx << 0;
  BE32_To_Buffer(i, resp_buf.buf);
  i = py << 16;
  i |= ny << 0;
  BE32_To_Buffer(i, resp_buf.buf + 4);

  return RESPOND_SUCCESS;
}

uint32_t debug_vol_adc(uint8_t chan)
{
  osStatus_t status;
  uint16_t value;

  if (chan > 7) {
    return RESPOND_FAILURE;
  }

  status = RTOS_ADC7828_Read(chan, &value);
  if (status != osOK) {
    EPT("Read adc failed\n");
    return RESPOND_FAILURE;
  }
  BE32_To_Buffer((uint32_t)value, resp_buf.buf);

  return RESPOND_SUCCESS;
}

uint32_t debug_tag(uint8_t type, uint8_t *p, uint32_t length)
{
  osStatus_t status;
  uint16_t addr;
  uint8_t buf[TAG_MAX_SPACE] = {0};

  if (type > 3 || length > TAG_MAX_SPACE) {
    return RESPOND_FAILURE;
  }
  
  switch (type) {
    case 0:
      addr = EE_TAG_PN;
      break;
    case 1:
      addr = EE_TAG_DATE;
      break;
    case 2:
      addr = EE_TAG_ASN;
      break;
    case 3:
      addr = EE_TAG_FSN;
      break;
    default:
      break;
  }

  memcpy(buf, p, length);
  status = RTOS_EEPROM_Write(EEPROM_ADDR, addr, buf, sizeof(buf));

  if (status != osOK) {
    EPT("Read adc failed\n");
    return RESPOND_FAILURE;
  }

  return RESPOND_SUCCESS;
}

uint32_t debug_pin(uint8_t pin, uint8_t val)
{
  GPIO_TypeDef *gpio_port;
  uint16_t gpio_pin;

  switch (pin) {
    case 0:
      gpio_port = LATCH_GPIO_Port;
      gpio_pin = LATCH_Pin;
      break;
    case 1:
      gpio_port = ALARM_GPIO_Port;
      gpio_pin = ALARM_Pin;
      break;
    case 2:
      gpio_port = SW_READY_GPIO_Port;
      gpio_pin = SW_READY_Pin;
      break;
    default:
      return RESPOND_FAILURE;
  }
  
  if (val) {
    HAL_GPIO_WritePin(gpio_port, gpio_pin, GPIO_PIN_SET);
  } else {
    HAL_GPIO_WritePin(gpio_port, gpio_pin, GPIO_PIN_RESET);
  }

  return RESPOND_SUCCESS;
}
uint32_t debug_cal_switch(uint8_t sw_num, uint32_t chan, int32_t val_x, int32_t val_y)
{
  osStatus status;
  uint16_t addr;
  uint32_t chan_count;

  if (sw_num >= SWITCH_NUM_TOTAL || sw_num == SWITCH_ALL_CHANNEL) {
    return RESPOND_FAILURE;
  }
  
  switch (sw_num) {
    case SWITCH_NUM_1:
      addr = EE_CAL_SWITCH1;
      chan_count = 6;
      break;
    case SWITCH_NUM_2:
      addr = EE_CAL_SWITCH2;
      chan_count = 11;
      break;
    case SWITCH_NUM_3:
      addr = EE_CAL_SWITCH3;
      chan_count = 11;
      break;
    case SWITCH_NUM_4:
      addr = EE_CAL_SWITCH4;
      chan_count = 11;
      break;
    case SWITCH_NUM_5:
      addr = EE_CAL_SWITCH5;
      chan_count = 11;
      break;
    case SWITCH_NUM_6:
      addr = EE_CAL_SWITCH6;
      chan_count = 11;
      break;
    case SWITCH_NUM_7:
      addr = EE_CAL_SWITCH7;
      chan_count = 9;
      break;
  }

  if (chan > chan_count || chan == 0) {
    return RESPOND_FAILURE;
  }
  status = write_32_to_eeprom(EEPROM_ADDR, addr + (chan - 1) * 8, (uint32_t)val_x);
  status |= write_32_to_eeprom(EEPROM_ADDR, addr + (chan - 1) * 8 + 4, (uint32_t)val_y);
  if (status != osOK) {
    return RESPOND_FAILURE;
  }

  return RESPOND_SUCCESS;
}

uint32_t debug_cal_il(uint8_t num, int32_t val)
{
  osStatus status;
  uint16_t addr = EE_CAL_IL;

  if (num > 64 || num == 0) {
    return RESPOND_FAILURE;
  }

  status = write_32_to_eeprom(EEPROM_ADDR, addr + (num - 1) * 4, (uint32_t)val);
  if (status != osOK) {
    return RESPOND_FAILURE;
  }

  return RESPOND_SUCCESS;
}

uint32_t debug_cal_threshold(uint8_t num, int32_t val)
{
  osStatus status;
  uint16_t addr = EE_VOLTAGE_2_5_THR;

  if (num > 10 || num == 0) {
    return RESPOND_FAILURE;
  }

  status = write_32_to_eeprom(EEPROM_ADDR, addr + (num - 1) * 4, (uint32_t)val);
  if (status != osOK) {
    return RESPOND_FAILURE;
  }

  // Read threshold to variable
  status = Get_Threshold_Table(&thr_table);
  if (status) {
    EPT("Get threshold table failed, status = %d\n", status);
    THROW_LOG("Get threshold table failed, status = %d\n", status);
  }

  return RESPOND_SUCCESS;
}

uint32_t debug_cal_dump(uint32_t which, uint32_t *resp_len)
{
  osStatus_t status;
  uint32_t len;
  uint16_t addr;
  
  switch (which) {
    case 0: // IL
      len = 64 * 4;
      addr = EE_CAL_IL;
      break;
    case 1: // Switch 1
      len = 6 * 8;
      addr = EE_CAL_SWITCH1;
      break;
    case 2: // Switch 2
      len = 11 * 8;
      addr = EE_CAL_SWITCH2;
      break;
    case 3: // Switch 3
      len = 11 * 8;
      addr = EE_CAL_SWITCH3;
      break;
    case 4: // Switch 4
      len = 11 * 8;
      addr = EE_CAL_SWITCH4;
      break;
    case 5: // Switch 5
      len = 11 * 8;
      addr = EE_CAL_SWITCH5;
      break;
    case 6: // Switch 6
      len = 11 * 8;
      addr = EE_CAL_SWITCH6;
      break;
    case 7: // Switch 7
      len = 9 * 8;
      addr = EE_CAL_SWITCH7;
      break;
    case 8: // Threshold
      len = 5 * 8;
      addr = EE_VOLTAGE_2_5_THR;
      break;
  }
  status = RTOS_EEPROM_Read(EEPROM_ADDR, addr, resp_buf.buf, len);
  if (status != osOK) {
    EPT("Read EEPROM failed, status = %d\n", status);
    *resp_len = 4;
    return RESPOND_FAILURE;
  }
  
  *resp_len = len;
  return RESPOND_SUCCESS;
}

uint32_t debug_eeprom(uint32_t addr, uint32_t *len)
{
  osStatus_t status;

  status = RTOS_EEPROM_Read(EEPROM_ADDR, addr, resp_buf.buf, *len);
  if (status != osOK) {
    EPT("Read EEPROM failed, status = %d\n", status);
    *len = 4;
    return RESPOND_FAILURE;
  }
  
  return RESPOND_SUCCESS;
}

