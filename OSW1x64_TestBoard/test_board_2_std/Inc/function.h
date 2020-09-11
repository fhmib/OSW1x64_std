#ifndef __FUNCTION_H
#define __FUNCTION_H

#include <stdint.h>

#define EPT(format, ...)	do{\
                      sprintf((char*)usart1_tx_buf, "%s,%d: " format, __func__, __LINE__, ##__VA_ARGS__);\
                      if (uart1_irq_sel) {\
                        serial_tx(usart1_tx_buf, strlen((char*)usart1_tx_buf));\
                      } else {\
                        HAL_UART_Transmit(&TERMINAL_UART, usart1_tx_buf, strlen((char*)usart1_tx_buf), 0xFF);\
                      }\
                    } while(0)
#define PRINT(format, ...)	do{\
                      sprintf((char*)usart1_tx_buf, format, ##__VA_ARGS__);\
                      if (uart1_irq_sel) {\
                        serial_tx(usart1_tx_buf, strlen((char*)usart1_tx_buf));\
                      } else {\
                        HAL_UART_Transmit(&TERMINAL_UART, usart1_tx_buf, strlen((char*)usart1_tx_buf), 0xFF);\
                      }\
                    } while(0)
#define PRINT2(format, ...)	do{\
                      sprintf((char*)usart1_tx_buf, format, ##__VA_ARGS__);\
                      HAL_UART_Transmit(&TERMINAL_UART, usart1_tx_buf, strlen((char*)usart1_tx_buf), 0xFF);\
                    } while(0)

typedef enum {
  CMD_SEQ_MSG_ID          = 0x01,
  CMD_SEQ_MSG_LENGTH      = 0x05,
  CMD_SEQ_MSG_DATA        = 0x09,
} CmdSeq;

typedef enum {
  CMD_UPGRADE_INIT        = 0x10, // Firmware Download Init
  CMD_UPGRADE_DATA        = 0x11, // Firmware Load
  CMD_UPGRADE_INSTALL     = 0x12, // Firmware install
  CMD_QUERY_VERSION       = 0x30, // Version Request
  CMD_SOFTRESET           = 0x40, // Device Reset
  CMD_QUERY_TEMP          = 0x50, // Device Temperature Request
  CMD_DEVICE_STATUS       = 0x60, // Device Status Check
  CMD_QUERY_VOLTAGE       = 0x70, // Device Voltage Request
  CMD_QUERY_VOL_THR       = 0x72, // Voltage Alarm Threshold Request Command
  CMD_SET_LOG_TIME        = 0x73, // Set Device Log Time Commands
  CMD_QUERY_LOG_TIME      = 0x74, // Get Device Log Time Commands
  CMD_QUERY_LOG_NUM       = 0x75, // Get Device Error Log Packet Number
  CMD_QUERY_LOG           = 0x76, // Get Device Error Log Commands
  CMD_QUERY_IL            = 0x77, // Optical Switch Insertion Loss Request Command
  CMD_SET_SWITCH          = 0xC0, // Set Switch
  CMD_QUERY_SWITCH        = 0xD0, // Switch Status Request
  CMD_MAINTAIN            = 0xE0,

  // for test
  CMD_FOR_DEBUG           = 0x7FFFFFFF,
} CmdId;

typedef enum {
  CMD_DEBUG_SW_DAC        = 0x01,
  CMD_DEBUG_SW_ADC        = 0x02,
  CMD_DEBUG_VOL_ADC       = 0x03,
  CMD_DEBUG_TAG           = 0x04,
  CMD_DEBUG_PIN           = 0x05,
  CMD_DEBUG_CAL_SW        = 0x06,
  CMD_DEBUG_CAL_IL        = 0x07,
  CMD_DEBUG_CAL_THR       = 0x08,
  CMD_DEBUG_DUMP          = 0x09,
  CMD_DEBUG_EEPROM        = 0x0A,
  CMD_DEBUG_RESET_LOG     = 0x0B,
  CMD_DEBUG_WRITE_LOG     = 0x0C,
  CMD_DEBUG_RESET_FW      = 0x0D,
  CMD_DEBUG_UP_BOOT_MODE  = 0xFD,
  CMD_DEBUG_UP_BOOT       = 0xFE,
  CMD_DEBUG_INTER_EXP     = 0xFF,
  CMD_DEBUG_UNLOCK        = 0x12345678,
} CmdDebugId;

typedef enum {
  FW_HEAD_MODULE_NAME    = 0x00,
  FW_HEAD_FW_LENGTH      = 0xC0,
  FW_HEAD_CRC            = 0xC4,
  FW_HEAD_END            = 0xFF,
  FW_FILE_HEADER_LENGTH,
} FwFileHeader;


int8_t cmd_upgrade(uint8_t argc, char **argv);
int8_t upgrade_init(void);
int8_t upgrade_init_with_size(char *arg);
int8_t upgrade_file(uint8_t verify);
int8_t upgrade_install(void);
int8_t cmd_version(uint8_t argc, char **argv);
int8_t cmd_reset(uint8_t argc, char **argv);
int8_t cmd_temp(uint8_t argc, char **argv);
int8_t cmd_device_status(uint8_t argc, char **argv);
int8_t cmd_voltage(uint8_t argc, char **argv);
int8_t get_voltage(void);
int8_t get_voltage_threshold(void);
int8_t cmd_time(uint8_t argc, char **argv);
int8_t set_log_time(uint8_t argc, char **argv);
int8_t get_log_time(void);
int8_t cmd_log(uint8_t argc, char **argv);
int8_t log_packets(void);
int8_t log_content(char *arg1, char *arg2);
int8_t cmd_IL(uint8_t argc, char **argv);
int8_t cmd_switch(uint8_t argc, char **argv);
int8_t set_switch(uint8_t argc, char **argv);
int8_t get_switch(void);
int8_t cmd_maintain(uint8_t argc, char **argv);
int8_t cmd_for_debug(uint8_t argc, char **argv);
int8_t debug_dac(uint8_t argc, char **argv);
int8_t debug_adc(uint8_t argc, char **argv);
int8_t debug_tag(uint8_t argc, char **argv);
int8_t debug_pin(uint8_t argc, char **argv);
int8_t debug_switch_io(uint8_t argc, char **argv);
int8_t debug_cal(uint8_t argc, char **argv);
int8_t debug_dump(uint8_t argc, char **argv);
int8_t debug_eeprom(uint8_t argc, char **argv);
int8_t debug_reset_log(uint8_t argc, char **argv);
int8_t debug_write_log(char *arg1, char *arg2);
int8_t debug_reset_fw(uint8_t argc, char **argv);
int8_t debug_monitor(uint8_t argc, char **argv);
int8_t debug_crc32(uint8_t argc, char **argv);
int8_t debug_print_hex(uint8_t argc, char **argv);
int8_t debug_send_hex(uint8_t argc, char **argv);
int8_t debug_upgrade_bootloader_mode(void);
int8_t debug_upgrade_bootloader_install(void);
int8_t debug_get_inter_exp(void);
int8_t debug_unlock(void);

int8_t process_command(uint32_t cmd, uint8_t *pdata, uint32_t len, uint8_t *rx_buf, uint32_t *rx_len);
uint8_t Cal_Check(uint8_t *pdata, uint32_t len);
uint16_t UpdateCRC16(uint16_t crc_in, uint8_t byte);
uint16_t Cal_CRC16(const uint8_t* p_data, uint32_t size);
uint32_t Cal_CRC32(uint8_t* packet, uint32_t length);
void PRINT_HEX(char *head, uint8_t *pdata, uint32_t len);
void PRINT_CHAR(char *head, uint8_t *pdata, uint32_t len);
uint32_t switch_endian(uint32_t i);
void BE32_To_Buffer(uint32_t data, uint8_t *pbuf);
uint32_t Buffer_To_BE32(uint8_t *pbuf);

#endif
