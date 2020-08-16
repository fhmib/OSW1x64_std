#ifndef __functions_H
#define __functions_H

#include "main.h"

typedef struct {
  uint8_t type;
  void *pbuf;
  uint32_t length;
} MsgStruct;

typedef enum {
  MSG_TYPE_LOG,
  MSG_TYPE_FLASH_ISR,
  MSG_TYPE_SWITCH_ISR,
} MsgType;

// For Log File
typedef struct {
  uint32_t magic;
  uint32_t header;
  uint32_t offset;
  uint8_t cur_sector;
} LogFileState;

typedef enum {
  // tag
  EE_TAG_PN               = 0x0000, // Product Number
  EE_TAG_DATE             = 0x0020, // Manufacture Date
  EE_TAG_ASN              = 0x0040, // Assembly Serial Number
  EE_TAG_FSN              = 0x0060, // Filter Serial Number
  // calibration
  EE_CAL_SWITCH1          = 0x1000, // 0x1000 ~ 0x125F
  EE_CAL_SWITCH2          = 0x1030, // 0x1000 ~ 0x125F
  EE_CAL_SWITCH3          = 0x1090, // 0x1000 ~ 0x125F
  EE_CAL_SWITCH4          = 0x10F0, // 0x1000 ~ 0x125F
  EE_CAL_SWITCH5          = 0x1150, // 0x1000 ~ 0x125F
  EE_CAL_SWITCH6          = 0x11B0, // 0x1000 ~ 0x125F
  EE_CAL_SWITCH7          = 0x1210, // 0x1000 ~ 0x125F
  EE_CAL_IL               = 0x1260, // 0x1260 ~ 0x135F Insertion Loss
  // threshold
  EE_VOLTAGE_2_5_THR      = 0x1460,
  EE_VOLTAGE_3_3_THR      = 0x1468,
  EE_VOLTAGE_5_0_THR      = 0x1470,
  EE_VOLTAGE_64_0_THR     = 0x1478,
  EE_TEMPERATURE_THR      = 0x1480,
  // upgrade
  EE_UP_MAGIC             = 0x3000, // 0x3000 ~ 0x3003
  EE_UP_RUN               = 0x3004, // 0x3004 ~ 0x3004 Which fw is running
  EE_UP_FLASH_EMPTY       = 0x3005, // 0x3005 ~ 0x3005 If flash is empty
  EE_UP_LENGTH            = 0x3006, // 0x3006 ~ 0x3009
  EE_UP_CRC32             = 0x300A, // 0x300A ~ 0x300D
  EE_UP_FACTORY_LENGTH    = 0x300E, // 0x300E ~ 0x3011
  EE_UP_FACTORY_CRC32     = 0x3012, // 0x3012 ~ 0x3015
  // log
  EE_LOG_MAGIC            = 0x3020, // 0x3020 ~ 0x3023
  EE_LOG_OFFSET           = 0x3024, // 0x3024 ~ 0x3027
  EE_LOG_HEADER           = 0x3028, // 0x3028 ~ 0x302B
} EepromAddrMap;

typedef enum {
  SWITCH_ALL_CHANNEL = 0,
  SWITCH_NUM_1 = 1,
  SWITCH_NUM_2 = 2,
  SWITCH_NUM_3 = 3,
  SWITCH_NUM_4 = 4,
  SWITCH_NUM_5 = 5,
  SWITCH_NUM_6 = 6,
  SWITCH_NUM_7 = 7,
  SWITCH_NUM_TOTAL,
} SwitchNumber;

typedef struct {
  uint8_t sw_num;
  uint8_t px_chan; // dac channel correspond to positive x
  uint8_t nx_chan; // dac channel correspond to negatve x
  uint8_t py_chan; // dac channel correspond to positive y
  uint8_t ny_chan; // dac channel correspond to negatve y
  uint8_t adc_px_chan; // adc channel correspond to positive x
  uint8_t adc_nx_chan; // adc channel correspond to negatve x
  uint8_t adc_py_chan; // adc channel correspond to positive y
  uint8_t adc_ny_chan; // adc channel correspond to negatve y
} SwitchDacMapStruct;

typedef struct {
  uint8_t min_channel_num;
  uint8_t max_channel_num;
  uint8_t first_switch;
  uint16_t first_eeprom_addr;
  #if 0
  uint8_t second_switch;
  uint16_t second_eeprom_addr;
  uint8_t second_channel;
  #endif
} ChannelSwitchMapStruct;

typedef enum {
  VOLTAGE_2_5_CHANNEL = 0,
  VOLTAGE_3_3_CHANNEL = 1,
  VOLTAGE_5_0_CHANNEL = 2,
  VOLTAGE_64_0_CHANNEL = 3,
  TEMPERATURE_CHANNEL = 4,
} VoltageAdcChannel;

typedef struct {
  double vol_2_5_high;
  double vol_2_5_low;
  double vol_3_3_high;
  double vol_3_3_low;
  double vol_5_0_high;
  double vol_5_0_low;
  double vol_64_0_high;
  double vol_64_0_low;
  double temp_high;
  double temp_low;
} ThresholdStruct;

typedef struct {
  uint32_t magic;
  uint8_t run;
  uint8_t flash_empty;
  uint32_t length;
  uint32_t crc32;
  uint32_t factory_length;
  uint32_t factory_crc32;
} UpgradeFlashState;

typedef enum {
  EXP_VOLTAGE_2_5         = 0x0,
  EXP_VOLTAGE_3_3         = 0x1,
  EXP_VOLTAGE_5_0         = 0x2,
  EXP_VOLTAGE_64_0        = 0x3,
  EXP_TEMPERATURE         = 0x4,
  EXP_SWITCH              = 0x5,
  EXP_ADC_A               = 0x6,
  EXP_ADC_B               = 0x7,
} ExptoinValue;

typedef struct {
  uint32_t maigc;
  uint8_t switch_channel;
  uint8_t uart_reset; // Indicate if reset by uart communication
  uint32_t exp; // exception
  uint32_t init_err;
} RunTimeStatus;

void Throw_Log(uint8_t *buf, uint32_t length);
uint32_t Log_Write(uint32_t addr, uint8_t *pbuf, uint32_t length);
uint32_t Log_Write_byte(uint32_t addr, uint8_t ch, uint32_t length);
uint32_t Log_Read(uint32_t addr, uint8_t *pbuf, uint32_t length);

osStatus_t Get_Up_Status(UpgradeFlashState *status);
osStatus_t Update_Up_Status(UpgradeFlashState *status);
osStatus_t Get_Log_Status(LogFileState *log_status);
osStatus_t Update_Log_Status(LogFileState *log_status);
osStatus_t Reset_Log_Status(void);
osStatus_t Get_Threshold_Table(ThresholdStruct *table);

uint32_t Get_Switch_Channel_By_IO(void);
int8_t Set_Switch(uint32_t switch_channel);
int8_t Clear_Switch_Dac(uint32_t switch_id);
void Reset_Switch(void);
int8_t Get_Switch_Adc(uint32_t switch_id, uint16_t *px, uint16_t *nx, uint16_t *py, uint16_t *ny);
int32_t Get_Current_Switch_Channel(void);
int32_t Get_Index_Of_Channel_Map(uint32_t switch_channel);

void Set_Alarm(void);
void Clear_Alarm(void);
void Set_Switch_Ready(void);
void Clear_Switch_Ready(void);
void Init_Run_Status(void);
void Set_Flag(uint32_t *status, uint32_t bit_addr);
void Clear_Flag(uint32_t *status, uint32_t bit_addr);
uint8_t Is_Flag_Set(uint32_t *status, uint32_t bit_addr);

double Cal_Temp(uint16_t adc);

uint32_t debug_sw_dac(uint8_t sw_num, int32_t val_x, int32_t val_y);
int8_t set_sw_dac(uint8_t sw_num, int32_t val_x, int32_t val_y);
uint32_t debug_sw_adc(uint8_t sw_num);
uint32_t debug_vol_adc(uint8_t chan);
uint32_t debug_tag(uint8_t type, uint8_t *p, uint32_t length);
uint32_t debug_pin(uint8_t pin, uint8_t val);
uint32_t debug_cal_switch(uint8_t sw_num, uint32_t chan, int32_t val_x, int32_t val_y);
uint32_t debug_cal_il(uint8_t num, int32_t val);
uint32_t debug_cal_threshold(uint8_t num, int32_t val);
uint32_t debug_cal_dump(uint32_t which, uint32_t *resp_len);
uint32_t debug_eeprom(uint32_t addr, uint32_t *len);

#endif
