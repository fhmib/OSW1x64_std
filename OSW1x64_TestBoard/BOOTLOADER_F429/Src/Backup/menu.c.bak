/**
  ******************************************************************************
  * @file    IAP_Main/Src/menu.c 
  * @author  MCD Application Team
  * @version 1.0.0
  * @date    8-May-2015
  * @brief   This file provides the software which contains the main menu routine.
  *          The main menu gives the options of:
  *             - downloading a new binary file, 
  *             - uploading internal flash memory,
  *             - executing the binary file already loaded 
  *             - configuring the write protection of the Flash sectors where the 
  *               user loads his binary file.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; COPYRIGHT(c) 2015 STMicroelectronics</center></h2>
  *
  * Redistribution and use in source and binary forms, with or without modification,
  * are permitted provided that the following conditions are met:
  *   1. Redistributions of source code must retain the above copyright notice,
  *      this list of conditions and the following disclaimer.
  *   2. Redistributions in binary form must reproduce the above copyright notice,
  *      this list of conditions and the following disclaimer in the documentation
  *      and/or other materials provided with the distribution.
  *   3. Neither the name of STMicroelectronics nor the names of its contributors
  *      may be used to endorse or promote products derived from this software
  *      without specific prior written permission.
  *
  * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
  * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
  * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
  * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
  * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
  * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
  * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
  * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  *
  ******************************************************************************
  */ 

/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "common.h"
#include "flash_if.h"
#include "menu.h"
#include "usart.h"
#include "ymodem.h"
#include <stdio.h>
#include <string.h>

/* Private typedef -----------------------------------------------------------*/
/* Private define ------------------------------------------------------------*/
/* Private macro -------------------------------------------------------------*/
/* Private variables ---------------------------------------------------------*/
pFunction JumpToApplication;
uint32_t JumpAddress;
uint32_t FlashProtection = 0;
uint8_t aFileName[FILE_NAME_LENGTH];
uint8_t fw_buf[128 * 1024];
extern FLASH_ProcessTypeDef pFlash;

/* Private function prototypes -----------------------------------------------*/

/* Private functions ---------------------------------------------------------*/

/**
  * @brief  Download a file via serial port
  * @param  None
  * @retval None
  */
void SerialDownload(uint32_t addr)
{
  uint32_t fw_length;
  uint32_t fw_crc;
  uint8_t buf[256];
#if 1
  Serial_PutString((uint8_t *)"Waiting for the file to be sent ... \r\n");
  if (HAL_UART_Receive(&huart3, buf, 256, 1000 * 60) != HAL_OK) {
    Serial_PutString((uint8_t *)"Timeout\r\n");
    return;
  }
  fw_length = (buf[FW_HEAD_FW_LENGTH] << 24) | (buf[FW_HEAD_FW_LENGTH + 1] << 16) |\
           (buf[FW_HEAD_FW_LENGTH + 2] << 8) | (buf[FW_HEAD_FW_LENGTH + 3] << 0);
  fw_crc = (buf[FW_HEAD_CRC] << 24) | (buf[FW_HEAD_CRC + 1] << 16) |\
           (buf[FW_HEAD_CRC + 2] << 8) | (buf[FW_HEAD_CRC + 3] << 0);
  HAL_UART_Receive(&huart3, fw_buf, fw_length, 1000 * 10);
  if (strcmp((char*)&buf[FW_HEAD_MODULE_NAME], "ONET-BJ-TESTBOARD2.0")) {
    Serial_PutString((uint8_t*)"The file is not the firmware corresponding to this module\r\n");
    return;
  }
  if (Cal_CRC32(fw_buf, fw_length) == fw_crc) {
    Serial_PutString((uint8_t*)"CRC32 success\r\n");
  } else {
    Serial_PutString((uint8_t*)"CRC32 failed\r\n");
    return;
  }

  if (addr == APPLICATION_1_ADDRESS) {
    FLASH_If_Erase(APPLICATION_1_SECTOR);
  } else if (addr == APPLICATION_2_ADDRESS) {
    FLASH_If_Erase(APPLICATION_2_SECTOR);
  } else if (addr == APPLICATION_3_ADDRESS) {
    FLASH_If_Erase(APPLICATION_3_SECTOR);
  } else if (addr == APPLICATION_4_ADDRESS) {
    FLASH_If_Erase(APPLICATION_4_SECTOR);
  }

  FLASH_If_Write(addr, (uint32_t*)fw_buf, fw_length / 4);
#else
  uint32_t received_len = 0;

  if (addr == APPLICATION_1_ADDRESS) {
    FLASH_If_Erase(APPLICATION_1_SECTOR);
    FLASH_If_Erase(APPLICATION_1_SECTOR + 1);
    FLASH_If_Erase(APPLICATION_1_SECTOR + 2);
  } else if (addr == APPLICATION_2_ADDRESS) {
    FLASH_If_Erase(APPLICATION_2_SECTOR);
    FLASH_If_Erase(APPLICATION_2_SECTOR + 1);
    FLASH_If_Erase(APPLICATION_2_SECTOR + 2);
  } else if (addr == APPLICATION_3_ADDRESS) {
    FLASH_If_Erase(APPLICATION_3_SECTOR);
    FLASH_If_Erase(APPLICATION_3_SECTOR + 1);
    FLASH_If_Erase(APPLICATION_3_SECTOR + 2);
  } else if (addr == APPLICATION_4_ADDRESS) {
    FLASH_If_Erase(APPLICATION_4_SECTOR);
    FLASH_If_Erase(APPLICATION_4_SECTOR + 1);
    FLASH_If_Erase(APPLICATION_4_SECTOR + 2);
  }
  Serial_PutString((uint8_t *)"Waiting for the file to be sent ... \n\r");
  if (HAL_UART_Receive(&huart3, buf, 256, 1000 * 60) != HAL_OK) {
    Serial_PutString((uint8_t *)"Timeout\n\r");
    return;
  }
  fw_length = (buf[FW_HEAD_FW_LENGTH] << 24) | (buf[FW_HEAD_FW_LENGTH + 1] << 16) |\
           (buf[FW_HEAD_FW_LENGTH + 2] << 8) | (buf[FW_HEAD_FW_LENGTH + 3] << 0);
  fw_crc = (buf[FW_HEAD_CRC] << 24) | (buf[FW_HEAD_CRC + 1] << 16) |\
           (buf[FW_HEAD_CRC + 2] << 8) | (buf[FW_HEAD_CRC + 3] << 0);
  HAL_FLASH_Unlock();
  while (received_len != fw_length) {
    if (HAL_UART_Receive(&huart3, fw_buf, 4, 100) != HAL_OK) {
      Serial_PutString((uint8_t*)"UART Receive failed\n");
      HAL_FLASH_Lock();
      return;
    }
    
    if (HAL_FLASH_Program(FLASH_TYPEPROGRAM_WORD, addr + received_len, (uint64_t)(*((uint32_t*)fw_buf)) != HAL_OK)) {
      Serial_PutString((uint8_t*)"Program flash failed\n");
      HAL_FLASH_Lock();
      return;
    }
    

    received_len += 4;
  }
  HAL_FLASH_Lock();
  Serial_PutString((uint8_t*)"UART Receive success\n");

  if (Cal_CRC32((uint8_t*)addr, fw_length) == fw_crc) {
    Serial_PutString((uint8_t*)"CRC32 success\n");
  } else {
    Serial_PutString((uint8_t*)"CRC32 failed\n");
    return;
  }

#endif
  Serial_PutString((uint8_t*)"Download success\r\n");
}

/**
  * @brief  Upload a file via serial port.
  * @param  None
  * @retval None
  */
void SerialUpload(uint32_t addr)
{
  uint8_t status = 0;

  Serial_PutString((uint8_t *)"\r\nSelect Receive File\r\n");

  HAL_UART_Receive(&huart3, &status, 1, RX_TIMEOUT);
  if ( status == CRC16)
  {
    /* Transmit the flash image through ymodem protocol */
    status = Ymodem_Transmit((uint8_t*)addr, (const uint8_t*)"UploadedFlashImage.bin", USER_FLASH_SIZE);

    if (status != 0)
    {
      Serial_PutString((uint8_t *)"\r\nError Occurred while Transmitting File\r\n");
    }
    else
    {
      Serial_PutString((uint8_t *)"\r\nFile uploaded successfully \r\n");
    }
  }
}

void disableSystick()
{
  SysTick->VAL   = 0UL;                                             /* Load the SysTick Counter Value */
  SysTick->CTRL  = SysTick_CTRL_CLKSOURCE_Msk;                   /* Disable SysTick IRQ and SysTick Timer */
}


void JumpToAddr(uint32_t addr)
{
  // Disable interrupt
  disableSystick();

  /* Execute the new program */
  JumpAddress = *(__IO uint32_t*) (addr + 4);
  /* Jump to user application */
  JumpToApplication = (pFunction) JumpAddress;
  /* Initialize user application's Stack Pointer */
  __set_MSP(*(__IO uint32_t*) addr);
  JumpToApplication();
}

void update_config_data(ConfigState *config_data)
{
  FLASH_If_Erase(CONFIG_SECTOR);
  FLASH_If_Write(CONFIG_ADDRESS, (uint32_t*)config_data, sizeof(ConfigState) / 4);
}

void get_config_date(ConfigState *config_data)
{
  memcpy(config_data, (void*)CONFIG_ADDRESS, sizeof(ConfigState));
}

/**
  * @brief  Display the Main Menu on HyperTerminal
  * @param  None
  * @retval None
  */
void Main_Menu(void)
{

  uint8_t key = 0;
  char buf[32];
  ConfigState config_state;
  FLASH_OBProgramInitTypeDef OptionsBytesStruct;
  
  Serial_PutString((uint8_t *)"\r\n======================================================================");
  Serial_PutString((uint8_t *)"\r\n=              (C) COPYRIGHT 2020 O-Net Technologies                 =");
  Serial_PutString((uint8_t *)"\r\n=                                                                    =");
  Serial_PutString((uint8_t *)"\r\n=         Test Board Programming Application  (Version 1.0.0)        =");
  Serial_PutString((uint8_t *)"\r\n=                                                                    =");
  Serial_PutString((uint8_t *)"\r\n=                                                By Beijing R&D      =");
  Serial_PutString((uint8_t *)"\r\n======================================================================");
  Serial_PutString((uint8_t *)"\r\n\r\n");

  while (1) {
    Serial_PutString((uint8_t *)"\r\n=================== Main Menu ============================\r\n\n");
    Serial_PutString((uint8_t *)"  Download image to the Application 1 ------------------ 1\r\n\n");
    Serial_PutString((uint8_t *)"  Download image to the Application 2 ------------------ 2\r\n\n");
    Serial_PutString((uint8_t *)"  Download image to the Application 3 ------------------ 3\r\n\n");
    Serial_PutString((uint8_t *)"  Download image to the Application 4 ------------------ 4\r\n\n");
    Serial_PutString((uint8_t *)"  Execute the Application 1 ---------------------------- 5\r\n\n");
    Serial_PutString((uint8_t *)"  Execute the Application 2 ---------------------------- 6\r\n\n");
    Serial_PutString((uint8_t *)"  Execute the Application 3 ---------------------------- 7\r\n\n");
    Serial_PutString((uint8_t *)"  Execute the Application 4 ---------------------------- 8\r\n\n");
    Serial_PutString((uint8_t *)"  Get Option Byte -------------------------------------- 9\r\n\n");
    Serial_PutString((uint8_t *)"  Set Default Application ------------------------------ 0\r\n\n");
    Serial_PutString((uint8_t *)"==========================================================\r\n\n");

    /* Clean the input path */
    __HAL_UART_FLUSH_DRREGISTER(&huart3);
  
    /* Receive key */
    HAL_UART_Receive(&huart3, &key, 1, RX_TIMEOUT);
  
    switch (key) {
      case '1' :
        SerialDownload(APPLICATION_1_ADDRESS);
        break;
      case '2' :
        SerialDownload(APPLICATION_2_ADDRESS);
        break;
      case '3' :
        SerialDownload(APPLICATION_3_ADDRESS);
        break;
      case '4' :
        SerialDownload(APPLICATION_4_ADDRESS);
        break;
      case '5' :
        Serial_PutString((uint8_t *)"Start applicatoin 1 program execution......\r\n\n");
        JumpToAddr(APPLICATION_1_ADDRESS);
        break;
      case '6' :
        Serial_PutString((uint8_t *)"Start applicatoin 2 program execution......\r\n\n");
        JumpToAddr(APPLICATION_2_ADDRESS);
        break;
      case '7' :
        Serial_PutString((uint8_t *)"Start applicatoin 3 program execution......\r\n\n");
        JumpToAddr(APPLICATION_3_ADDRESS);
        break;
      case '8' :
        Serial_PutString((uint8_t *)"Start applicatoin 4 program execution......\r\n\n");
        JumpToAddr(APPLICATION_4_ADDRESS);
        break;
      case '9' :
        sprintf(buf, "ErrorCode = %#X\r\n\n", pFlash.ErrorCode);
        Serial_PutString((uint8_t *)buf);
        FLASH_If_GetOptionByte(&OptionsBytesStruct);
        sprintf(buf, "WRPSector = %#X\r\n", OptionsBytesStruct.WRPSector);
        Serial_PutString((uint8_t *)buf);
        sprintf(buf, "RDPLevel = %#X\r\n", OptionsBytesStruct.RDPLevel);
        Serial_PutString((uint8_t *)buf);
        sprintf(buf, "USERConfig = %#X\r\n", OptionsBytesStruct.USERConfig);
        Serial_PutString((uint8_t *)buf);
        sprintf(buf, "BORLevel = %#X\r\n\n", OptionsBytesStruct.BORLevel);
        Serial_PutString((uint8_t *)buf);
        break;
      case '0' :
        Serial_PutString((uint8_t *)"Please enter the number of defalut application(1/2/3/4)......\r\n\n");
        HAL_UART_Receive(&huart3, &key, 1, RX_TIMEOUT);
        switch (key) {
          case '1' :
            config_state.magic = CONFIG_MAGIC;
            config_state.default_run = APPLICATION_1_ADDRESS;
            update_config_data(&config_state);
            break;
          case '2' :
            config_state.magic = CONFIG_MAGIC;
            config_state.default_run = APPLICATION_2_ADDRESS;
            update_config_data(&config_state);
            break;
          case '3' :
            config_state.magic = CONFIG_MAGIC;
            config_state.default_run = APPLICATION_3_ADDRESS;
            update_config_data(&config_state);
            break;
          case '4' :
            config_state.magic = CONFIG_MAGIC;
            config_state.default_run = APPLICATION_4_ADDRESS;
            update_config_data(&config_state);
            break;
          default:
            Serial_PutString((uint8_t *)"Invalid character!\r\n");
            break;
        }
        break;
      default:
        Serial_PutString((uint8_t *)"Invalid character!\r\n");
        break;
    }
  }
}

/**
  * @}
  */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/

