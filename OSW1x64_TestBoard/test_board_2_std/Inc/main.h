/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2020 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f4xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "usart.h"

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

extern uint8_t usart1_tx_buf[];
extern uint8_t usart2_tx_buf[];
extern uint8_t uart1_irq_sel;

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */
#define TRANS_MAX_LENGTH            1200

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */
uint32_t send_cmd(uint8_t ch, char *arg);

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define MASTER_RESET_Pin GPIO_PIN_4
#define MASTER_RESET_GPIO_Port GPIOI
#define IN_ALARM_Pin GPIO_PIN_1
#define IN_ALARM_GPIO_Port GPIOI
#define OUT_STROBE_Pin GPIO_PIN_13
#define OUT_STROBE_GPIO_Port GPIOH
#define IN_READY_Pin GPIO_PIN_14
#define IN_READY_GPIO_Port GPIOH
#define HARD_RESET_Pin GPIO_PIN_0
#define HARD_RESET_GPIO_Port GPIOI
#define OUT_MODE_Pin GPIO_PIN_12
#define OUT_MODE_GPIO_Port GPIOH
#define OUT_D5_Pin GPIO_PIN_11
#define OUT_D5_GPIO_Port GPIOH
#define OUT_D4_Pin GPIO_PIN_10
#define OUT_D4_GPIO_Port GPIOH
#define OUT_D0_Pin GPIO_PIN_6
#define OUT_D0_GPIO_Port GPIOH
#define OUT_D2_Pin GPIO_PIN_8
#define OUT_D2_GPIO_Port GPIOH
#define OUT_D3_Pin GPIO_PIN_9
#define OUT_D3_GPIO_Port GPIOH
#define OUT_D1_Pin GPIO_PIN_7
#define OUT_D1_GPIO_Port GPIOH
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
