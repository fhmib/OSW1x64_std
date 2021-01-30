
========================================================================

** ELF Header Information

    File Name: BOOTLOADER_F429\BOOTLOADER_F429.axf

    Machine class: ELFCLASS32 (32-bit)
    Data encoding: ELFDATA2LSB (Little endian)
    Header version: EV_CURRENT (Current version)
    Operating System ABI: none
    ABI Version: 0
    File Type: ET_EXEC (Executable) (2)
    Machine: EM_ARM (ARM)

    Image Entry point: 0x080001ad
    Flags: EF_ARM_HASENTRY (0x05000002)

    ARM ELF revision: 5 (ABI version 2)

    Conforms to Base float procedure-call standard

    Built with
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]

    Header size: 52 bytes (0x34)
    Program header entry size: 32 bytes (0x20)
    Section header entry size: 40 bytes (0x28)

    Program header entries: 1
    Section header entries: 16

    Program header offset: 875500 (0x000d5bec)
    Section header offset: 875532 (0x000d5c0c)

    Section header string table index: 15

========================================================================

** Program header #0 (PT_LOAD) [PF_X + PF_W + PF_R + PF_ARM_ENTRY]
    Size : 142804 bytes (10548 bytes in file)
    Virtual address: 0x08000000 (Alignment 8)


========================================================================

** Section #1 'ER_IROM1' (SHT_PROGBITS) [SHF_ALLOC + SHF_EXECINSTR]
    Size   : 9500 bytes (alignment 4)
    Address: 0x08000000

    $d.realdata
    RESET
    __Vectors
        0x08000000:    200208b8    ...     DCD    537004216
        0x08000004:    080001c1    ....    DCD    134218177
        0x08000008:    08001a7f    ....    DCD    134224511
        0x0800000c:    0800133d    =...    DCD    134222653
        0x08000010:    08001a7d    }...    DCD    134224509
        0x08000014:    080002e9    ....    DCD    134218473
        0x08000018:    08001e81    ....    DCD    134225537
        0x0800001c:    00000000    ....    DCD    0
        0x08000020:    00000000    ....    DCD    0
        0x08000024:    00000000    ....    DCD    0
        0x08000028:    00000000    ....    DCD    0
        0x0800002c:    08001a83    ....    DCD    134224515
        0x08000030:    08000315    ....    DCD    134218517
        0x08000034:    00000000    ....    DCD    0
        0x08000038:    08001a81    ....    DCD    134224513
        0x0800003c:    08001c49    I...    DCD    134224969
        0x08000040:    080001db    ....    DCD    134218203
        0x08000044:    080001db    ....    DCD    134218203
        0x08000048:    080001db    ....    DCD    134218203
        0x0800004c:    080001db    ....    DCD    134218203
        0x08000050:    080001db    ....    DCD    134218203
        0x08000054:    080001db    ....    DCD    134218203
        0x08000058:    080001db    ....    DCD    134218203
        0x0800005c:    080001db    ....    DCD    134218203
        0x08000060:    080001db    ....    DCD    134218203
        0x08000064:    080001db    ....    DCD    134218203
        0x08000068:    080001db    ....    DCD    134218203
        0x0800006c:    080001db    ....    DCD    134218203
        0x08000070:    080001db    ....    DCD    134218203
        0x08000074:    080001db    ....    DCD    134218203
        0x08000078:    080001db    ....    DCD    134218203
        0x0800007c:    080001db    ....    DCD    134218203
        0x08000080:    080001db    ....    DCD    134218203
        0x08000084:    080001db    ....    DCD    134218203
        0x08000088:    080001db    ....    DCD    134218203
        0x0800008c:    080001db    ....    DCD    134218203
        0x08000090:    080001db    ....    DCD    134218203
        0x08000094:    080001db    ....    DCD    134218203
        0x08000098:    080001db    ....    DCD    134218203
        0x0800009c:    080001db    ....    DCD    134218203
        0x080000a0:    080001db    ....    DCD    134218203
        0x080000a4:    080001db    ....    DCD    134218203
        0x080000a8:    080001db    ....    DCD    134218203
        0x080000ac:    080001db    ....    DCD    134218203
        0x080000b0:    080001db    ....    DCD    134218203
        0x080000b4:    080001db    ....    DCD    134218203
        0x080000b8:    080001db    ....    DCD    134218203
        0x080000bc:    080001db    ....    DCD    134218203
        0x080000c0:    080001db    ....    DCD    134218203
        0x080000c4:    080001db    ....    DCD    134218203
        0x080000c8:    080001db    ....    DCD    134218203
        0x080000cc:    080001db    ....    DCD    134218203
        0x080000d0:    080001db    ....    DCD    134218203
        0x080000d4:    080001db    ....    DCD    134218203
        0x080000d8:    080001db    ....    DCD    134218203
        0x080000dc:    080001db    ....    DCD    134218203
        0x080000e0:    080001db    ....    DCD    134218203
        0x080000e4:    080001db    ....    DCD    134218203
        0x080000e8:    080001db    ....    DCD    134218203
        0x080000ec:    080001db    ....    DCD    134218203
        0x080000f0:    080001db    ....    DCD    134218203
        0x080000f4:    080001db    ....    DCD    134218203
        0x080000f8:    080001db    ....    DCD    134218203
        0x080000fc:    080001db    ....    DCD    134218203
        0x08000100:    080001db    ....    DCD    134218203
        0x08000104:    080001db    ....    DCD    134218203
        0x08000108:    080001db    ....    DCD    134218203
        0x0800010c:    080001db    ....    DCD    134218203
        0x08000110:    080001db    ....    DCD    134218203
        0x08000114:    080001db    ....    DCD    134218203
        0x08000118:    080001db    ....    DCD    134218203
        0x0800011c:    080001db    ....    DCD    134218203
        0x08000120:    080001db    ....    DCD    134218203
        0x08000124:    080001db    ....    DCD    134218203
        0x08000128:    080001db    ....    DCD    134218203
        0x0800012c:    080001db    ....    DCD    134218203
        0x08000130:    080001db    ....    DCD    134218203
        0x08000134:    080001db    ....    DCD    134218203
        0x08000138:    080001db    ....    DCD    134218203
        0x0800013c:    080001db    ....    DCD    134218203
        0x08000140:    080001db    ....    DCD    134218203
        0x08000144:    080001db    ....    DCD    134218203
        0x08000148:    080001db    ....    DCD    134218203
        0x0800014c:    080001db    ....    DCD    134218203
        0x08000150:    080001db    ....    DCD    134218203
        0x08000154:    080001db    ....    DCD    134218203
        0x08000158:    080001db    ....    DCD    134218203
        0x0800015c:    080001db    ....    DCD    134218203
        0x08000160:    080001db    ....    DCD    134218203
        0x08000164:    080001db    ....    DCD    134218203
        0x08000168:    080001db    ....    DCD    134218203
        0x0800016c:    080001db    ....    DCD    134218203
        0x08000170:    080001db    ....    DCD    134218203
        0x08000174:    080001db    ....    DCD    134218203
        0x08000178:    080001db    ....    DCD    134218203
        0x0800017c:    00000000    ....    DCD    0
        0x08000180:    080001db    ....    DCD    134218203
        0x08000184:    080001db    ....    DCD    134218203
        0x08000188:    080001db    ....    DCD    134218203
        0x0800018c:    080001db    ....    DCD    134218203
        0x08000190:    080001db    ....    DCD    134218203
        0x08000194:    080001db    ....    DCD    134218203
        0x08000198:    080001db    ....    DCD    134218203
        0x0800019c:    080001db    ....    DCD    134218203
        0x080001a0:    00000000    ....    DCD    0
        0x080001a4:    00000000    ....    DCD    0
        0x080001a8:    080001db    ....    DCD    134218203
    $t
    .ARM.Collect$$$$00000000
    .ARM.Collect$$$$00000001
    __Vectors_End
    __main
    _main_stk
        0x080001ac:    f8dfd00c    ....    LDR      sp,__lit__00000000 ; [0x80001bc] = 0x200208b8
    .ARM.Collect$$$$00000004
    _main_scatterload
        0x080001b0:    f000f888    ....    BL       __scatterload ; 0x80002c4
    .ARM.Collect$$$$00000008
    .ARM.Collect$$$$0000000A
    .ARM.Collect$$$$0000000B
    __main_after_scatterload
    _main_clock
    _main_cpp_init
    _main_init
        0x080001b4:    4800        .H      LDR      r0,[pc,#0] ; [0x80001b8] = 0x80021d5
        0x080001b6:    4700        .G      BX       r0
    $d
        0x080001b8:    080021d5    .!..    DCD    134226389
    .ARM.Collect$$$$00002712
    __lit__00000000
    .ARM.Collect$$$$0000000D
    .ARM.Collect$$$$0000000F
    __rt_final_cpp
    __rt_final_exit
        0x080001bc:    200208b8    ...     DCD    537004216
    $t
    .text
    $v0
    Reset_Handler
        0x080001c0:    4806        .H      LDR      r0,[pc,#24] ; [0x80001dc] = 0x8001cd9
        0x080001c2:    4780        .G      BLX      r0
        0x080001c4:    4806        .H      LDR      r0,[pc,#24] ; [0x80001e0] = 0x80001ad
        0x080001c6:    4700        .G      BX       r0
        0x080001c8:    e7fe        ..      B        0x80001c8 ; Reset_Handler + 8
        0x080001ca:    e7fe        ..      B        0x80001ca ; Reset_Handler + 10
        0x080001cc:    e7fe        ..      B        0x80001cc ; Reset_Handler + 12
        0x080001ce:    e7fe        ..      B        0x80001ce ; Reset_Handler + 14
        0x080001d0:    e7fe        ..      B        0x80001d0 ; Reset_Handler + 16
        0x080001d2:    e7fe        ..      B        0x80001d2 ; Reset_Handler + 18
        0x080001d4:    e7fe        ..      B        0x80001d4 ; Reset_Handler + 20
        0x080001d6:    e7fe        ..      B        0x80001d6 ; Reset_Handler + 22
        0x080001d8:    e7fe        ..      B        0x80001d8 ; Reset_Handler + 24
    ADC_IRQHandler
    CAN1_RX0_IRQHandler
    CAN1_RX1_IRQHandler
    CAN1_SCE_IRQHandler
    CAN1_TX_IRQHandler
    CAN2_RX0_IRQHandler
    CAN2_RX1_IRQHandler
    CAN2_SCE_IRQHandler
    CAN2_TX_IRQHandler
    DCMI_IRQHandler
    DMA1_Stream0_IRQHandler
    DMA1_Stream1_IRQHandler
    DMA1_Stream2_IRQHandler
    DMA1_Stream3_IRQHandler
    DMA1_Stream4_IRQHandler
    DMA1_Stream5_IRQHandler
    DMA1_Stream6_IRQHandler
    DMA1_Stream7_IRQHandler
    DMA2D_IRQHandler
    DMA2_Stream0_IRQHandler
    DMA2_Stream1_IRQHandler
    DMA2_Stream2_IRQHandler
    DMA2_Stream3_IRQHandler
    DMA2_Stream4_IRQHandler
    DMA2_Stream5_IRQHandler
    DMA2_Stream6_IRQHandler
    DMA2_Stream7_IRQHandler
    ETH_IRQHandler
    ETH_WKUP_IRQHandler
    EXTI0_IRQHandler
    EXTI15_10_IRQHandler
    EXTI1_IRQHandler
    EXTI2_IRQHandler
    EXTI3_IRQHandler
    EXTI4_IRQHandler
    EXTI9_5_IRQHandler
    FLASH_IRQHandler
    FMC_IRQHandler
    FPU_IRQHandler
    HASH_RNG_IRQHandler
    I2C1_ER_IRQHandler
    I2C1_EV_IRQHandler
    I2C2_ER_IRQHandler
    I2C2_EV_IRQHandler
    I2C3_ER_IRQHandler
    I2C3_EV_IRQHandler
    OTG_FS_IRQHandler
    OTG_FS_WKUP_IRQHandler
    OTG_HS_EP1_IN_IRQHandler
    OTG_HS_EP1_OUT_IRQHandler
    OTG_HS_IRQHandler
    OTG_HS_WKUP_IRQHandler
    PVD_IRQHandler
    RCC_IRQHandler
    RTC_Alarm_IRQHandler
    RTC_WKUP_IRQHandler
    SAI1_IRQHandler
    SDIO_IRQHandler
    SPI1_IRQHandler
    SPI2_IRQHandler
    SPI3_IRQHandler
    SPI4_IRQHandler
    SPI5_IRQHandler
    SPI6_IRQHandler
    TAMP_STAMP_IRQHandler
    TIM1_BRK_TIM9_IRQHandler
    TIM1_CC_IRQHandler
    TIM1_TRG_COM_TIM11_IRQHandler
    TIM1_UP_TIM10_IRQHandler
    TIM2_IRQHandler
    TIM3_IRQHandler
    TIM4_IRQHandler
    TIM5_IRQHandler
    TIM6_DAC_IRQHandler
    TIM7_IRQHandler
    TIM8_BRK_TIM12_IRQHandler
    TIM8_CC_IRQHandler
    TIM8_TRG_COM_TIM14_IRQHandler
    TIM8_UP_TIM13_IRQHandler
    UART4_IRQHandler
    UART5_IRQHandler
    UART7_IRQHandler
    UART8_IRQHandler
    USART1_IRQHandler
    USART2_IRQHandler
    USART3_IRQHandler
    USART6_IRQHandler
    WWDG_IRQHandler
        0x080001da:    e7fe        ..      B        ADC_IRQHandler ; 0x80001da
    $d
        0x080001dc:    08001cd9    ....    DCD    134225113
        0x080001e0:    080001ad    ....    DCD    134218157
    $t
    .text
    __aeabi_uldivmod
        0x080001e4:    e92d5ff0    -.._    PUSH     {r4-r12,lr}
        0x080001e8:    4605        .F      MOV      r5,r0
        0x080001ea:    2000        .       MOVS     r0,#0
        0x080001ec:    4692        .F      MOV      r10,r2
        0x080001ee:    469b        .F      MOV      r11,r3
        0x080001f0:    4688        .F      MOV      r8,r1
        0x080001f2:    4606        .F      MOV      r6,r0
        0x080001f4:    4681        .F      MOV      r9,r0
        0x080001f6:    2440        @$      MOVS     r4,#0x40
        0x080001f8:    e01b        ..      B        0x8000232 ; __aeabi_uldivmod + 78
        0x080001fa:    4628        (F      MOV      r0,r5
        0x080001fc:    4641        AF      MOV      r1,r8
        0x080001fe:    4647        GF      MOV      r7,r8
        0x08000200:    4622        "F      MOV      r2,r4
        0x08000202:    f000f84f    ..O.    BL       __aeabi_llsr ; 0x80002a4
        0x08000206:    4653        SF      MOV      r3,r10
        0x08000208:    465a        ZF      MOV      r2,r11
        0x0800020a:    1ac0        ..      SUBS     r0,r0,r3
        0x0800020c:    4191        .A      SBCS     r1,r1,r2
        0x0800020e:    d310        ..      BCC      0x8000232 ; __aeabi_uldivmod + 78
        0x08000210:    4611        .F      MOV      r1,r2
        0x08000212:    4618        .F      MOV      r0,r3
        0x08000214:    4622        "F      MOV      r2,r4
        0x08000216:    f000f836    ..6.    BL       __aeabi_llsl ; 0x8000286
        0x0800021a:    1a2d        -.      SUBS     r5,r5,r0
        0x0800021c:    eb670801    g...    SBC      r8,r7,r1
        0x08000220:    464f        OF      MOV      r7,r9
        0x08000222:    4622        "F      MOV      r2,r4
        0x08000224:    2001        .       MOVS     r0,#1
        0x08000226:    2100        .!      MOVS     r1,#0
        0x08000228:    f000f82d    ..-.    BL       __aeabi_llsl ; 0x8000286
        0x0800022c:    eb170900    ....    ADDS     r9,r7,r0
        0x08000230:    414e        NA      ADCS     r6,r6,r1
        0x08000232:    1e20         .      SUBS     r0,r4,#0
        0x08000234:    f1a40401    ....    SUB      r4,r4,#1
        0x08000238:    dcdf        ..      BGT      0x80001fa ; __aeabi_uldivmod + 22
        0x0800023a:    4648        HF      MOV      r0,r9
        0x0800023c:    4631        1F      MOV      r1,r6
        0x0800023e:    462a        *F      MOV      r2,r5
        0x08000240:    4643        CF      MOV      r3,r8
        0x08000242:    e8bd9ff0    ....    POP      {r4-r12,pc}
    .text
    __aeabi_memset
    __aeabi_memset4
    __aeabi_memset8
        0x08000246:    b2d2        ..      UXTB     r2,r2
        0x08000248:    e001        ..      B        0x800024e ; __aeabi_memset + 8
        0x0800024a:    f8002b01    ...+    STRB     r2,[r0],#1
        0x0800024e:    1e49        I.      SUBS     r1,r1,#1
        0x08000250:    d2fb        ..      BCS      0x800024a ; __aeabi_memset + 4
        0x08000252:    4770        pG      BX       lr
    __aeabi_memclr
    __aeabi_memclr4
    __aeabi_memclr8
        0x08000254:    2200        ."      MOVS     r2,#0
        0x08000256:    e7f6        ..      B        __aeabi_memset ; 0x8000246
    _memset$wrapper
        0x08000258:    b510        ..      PUSH     {r4,lr}
        0x0800025a:    4613        .F      MOV      r3,r2
        0x0800025c:    460a        .F      MOV      r2,r1
        0x0800025e:    4604        .F      MOV      r4,r0
        0x08000260:    4619        .F      MOV      r1,r3
        0x08000262:    f7fffff0    ....    BL       __aeabi_memset ; 0x8000246
        0x08000266:    4620         F      MOV      r0,r4
        0x08000268:    bd10        ..      POP      {r4,pc}
    .text
    strcmp
        0x0800026a:    b510        ..      PUSH     {r4,lr}
        0x0800026c:    2200        ."      MOVS     r2,#0
        0x0800026e:    e000        ..      B        0x8000272 ; strcmp + 8
        0x08000270:    1c52        R.      ADDS     r2,r2,#1
        0x08000272:    5c83        .\      LDRB     r3,[r0,r2]
        0x08000274:    5c8c        .\      LDRB     r4,[r1,r2]
        0x08000276:    42a3        .B      CMP      r3,r4
        0x08000278:    d101        ..      BNE      0x800027e ; strcmp + 20
        0x0800027a:    2b00        .+      CMP      r3,#0
        0x0800027c:    d1f8        ..      BNE      0x8000270 ; strcmp + 6
        0x0800027e:    b2d8        ..      UXTB     r0,r3
        0x08000280:    b2e1        ..      UXTB     r1,r4
        0x08000282:    1a40        @.      SUBS     r0,r0,r1
        0x08000284:    bd10        ..      POP      {r4,pc}
    .text
    __aeabi_llsl
    _ll_shift_l
        0x08000286:    2a20         *      CMP      r2,#0x20
        0x08000288:    db04        ..      BLT      0x8000294 ; __aeabi_llsl + 14
        0x0800028a:    3a20         :      SUBS     r2,r2,#0x20
        0x0800028c:    fa00f102    ....    LSL      r1,r0,r2
        0x08000290:    2000        .       MOVS     r0,#0
        0x08000292:    4770        pG      BX       lr
        0x08000294:    4091        .@      LSLS     r1,r1,r2
        0x08000296:    f1c20320    .. .    RSB      r3,r2,#0x20
        0x0800029a:    fa20f303     ...    LSR      r3,r0,r3
        0x0800029e:    4319        .C      ORRS     r1,r1,r3
        0x080002a0:    4090        .@      LSLS     r0,r0,r2
        0x080002a2:    4770        pG      BX       lr
    .text
    __aeabi_llsr
    _ll_ushift_r
        0x080002a4:    2a20         *      CMP      r2,#0x20
        0x080002a6:    db04        ..      BLT      0x80002b2 ; __aeabi_llsr + 14
        0x080002a8:    3a20         :      SUBS     r2,r2,#0x20
        0x080002aa:    fa21f002    !...    LSR      r0,r1,r2
        0x080002ae:    2100        .!      MOVS     r1,#0
        0x080002b0:    4770        pG      BX       lr
        0x080002b2:    fa21f302    !...    LSR      r3,r1,r2
        0x080002b6:    40d0        .@      LSRS     r0,r0,r2
        0x080002b8:    f1c20220    .. .    RSB      r2,r2,#0x20
        0x080002bc:    4091        .@      LSLS     r1,r1,r2
        0x080002be:    4308        .C      ORRS     r0,r0,r1
        0x080002c0:    4619        .F      MOV      r1,r3
        0x080002c2:    4770        pG      BX       lr
    .text
    __scatterload
    __scatterload_rt2
        0x080002c4:    4c06        .L      LDR      r4,[pc,#24] ; [0x80002e0] = 0x80024fc
        0x080002c6:    4d07        .M      LDR      r5,[pc,#28] ; [0x80002e4] = 0x800251c
        0x080002c8:    e006        ..      B        0x80002d8 ; __scatterload + 20
        0x080002ca:    68e0        .h      LDR      r0,[r4,#0xc]
        0x080002cc:    f0400301    @...    ORR      r3,r0,#1
        0x080002d0:    e8940007    ....    LDM      r4,{r0-r2}
        0x080002d4:    4798        .G      BLX      r3
        0x080002d6:    3410        .4      ADDS     r4,r4,#0x10
        0x080002d8:    42ac        .B      CMP      r4,r5
        0x080002da:    d3f6        ..      BCC      0x80002ca ; __scatterload + 6
        0x080002dc:    f7ffff6a    ..j.    BL       __main_after_scatterload ; 0x80001b4
    $d
        0x080002e0:    080024fc    .$..    DCD    134227196
        0x080002e4:    0800251c    .%..    DCD    134227228
    $t
    i.BusFault_Handler
    BusFault_Handler
        0x080002e8:    e7fe        ..      B        BusFault_Handler ; 0x80002e8
        0x080002ea:    0000        ..      MOVS     r0,r0
    i.Cal_CRC32
    Cal_CRC32
        0x080002ec:    b530        0.      PUSH     {r4,r5,lr}
        0x080002ee:    f04f33ff    O..3    MOV      r3,#0xffffffff
        0x080002f2:    2200        ."      MOVS     r2,#0
        0x080002f4:    4c06        .L      LDR      r4,[pc,#24] ; [0x8000310] = 0x20000000
        0x080002f6:    e007        ..      B        0x8000308 ; Cal_CRC32 + 28
        0x080002f8:    5c85        .\      LDRB     r5,[r0,r2]
        0x080002fa:    405d        ]@      EORS     r5,r5,r3
        0x080002fc:    b2ed        ..      UXTB     r5,r5
        0x080002fe:    1c52        R.      ADDS     r2,r2,#1
        0x08000300:    f8545025    T.%P    LDR      r5,[r4,r5,LSL #2]
        0x08000304:    ea852313    ...#    EOR      r3,r5,r3,LSR #8
        0x08000308:    428a        .B      CMP      r2,r1
        0x0800030a:    d3f5        ..      BCC      0x80002f8 ; Cal_CRC32 + 12
        0x0800030c:    43d8        .C      MVNS     r0,r3
        0x0800030e:    bd30        0.      POP      {r4,r5,pc}
    $d
        0x08000310:    20000000    ...     DCD    536870912
    $t
    i.DebugMon_Handler
    DebugMon_Handler
        0x08000314:    4770        pG      BX       lr
    i.Error_Handler
    Error_Handler
        0x08000316:    4770        pG      BX       lr
    i.FLASH_Erase_Sector
    FLASH_Erase_Sector
        0x08000318:    2200        ."      MOVS     r2,#0
        0x0800031a:    b129        ).      CBZ      r1,0x8000328 ; FLASH_Erase_Sector + 16
        0x0800031c:    2901        .)      CMP      r1,#1
        0x0800031e:    d01d        ..      BEQ      0x800035c ; FLASH_Erase_Sector + 68
        0x08000320:    2902        .)      CMP      r1,#2
        0x08000322:    d01e        ..      BEQ      0x8000362 ; FLASH_Erase_Sector + 74
        0x08000324:    f44f7240    O.@r    MOV      r2,#0x300
        0x08000328:    280b        .(      CMP      r0,#0xb
        0x0800032a:    d900        ..      BLS      0x800032e ; FLASH_Erase_Sector + 22
        0x0800032c:    1d00        ..      ADDS     r0,r0,#4
        0x0800032e:    490e        .I      LDR      r1,[pc,#56] ; [0x8000368] = 0x40023c10
        0x08000330:    680b        .h      LDR      r3,[r1,#0]
        0x08000332:    f4237340    #.@s    BIC      r3,r3,#0x300
        0x08000336:    600b        .`      STR      r3,[r1,#0]
        0x08000338:    680b        .h      LDR      r3,[r1,#0]
        0x0800033a:    4313        .C      ORRS     r3,r3,r2
        0x0800033c:    600b        .`      STR      r3,[r1,#0]
        0x0800033e:    680a        .h      LDR      r2,[r1,#0]
        0x08000340:    f02202f8    "...    BIC      r2,r2,#0xf8
        0x08000344:    600a        .`      STR      r2,[r1,#0]
        0x08000346:    680a        .h      LDR      r2,[r1,#0]
        0x08000348:    2302        .#      MOVS     r3,#2
        0x0800034a:    eb0300c0    ....    ADD      r0,r3,r0,LSL #3
        0x0800034e:    4302        .C      ORRS     r2,r2,r0
        0x08000350:    600a        .`      STR      r2,[r1,#0]
        0x08000352:    6808        .h      LDR      r0,[r1,#0]
        0x08000354:    f4403080    @..0    ORR      r0,r0,#0x10000
        0x08000358:    6008        .`      STR      r0,[r1,#0]
        0x0800035a:    4770        pG      BX       lr
        0x0800035c:    f44f7280    O..r    MOV      r2,#0x100
        0x08000360:    e7e2        ..      B        0x8000328 ; FLASH_Erase_Sector + 16
        0x08000362:    f44f7200    O..r    MOV      r2,#0x200
        0x08000366:    e7df        ..      B        0x8000328 ; FLASH_Erase_Sector + 16
    $d
        0x08000368:    40023c10    .<.@    DCD    1073888272
    $t
    i.FLASH_FlushCaches
    FLASH_FlushCaches
        0x0800036c:    4813        .H      LDR      r0,[pc,#76] ; [0x80003bc] = 0x40023c00
        0x0800036e:    6801        .h      LDR      r1,[r0,#0]
        0x08000370:    0589        ..      LSLS     r1,r1,#22
        0x08000372:    d50f        ..      BPL      0x8000394 ; FLASH_FlushCaches + 40
        0x08000374:    6801        .h      LDR      r1,[r0,#0]
        0x08000376:    f4217100    !..q    BIC      r1,r1,#0x200
        0x0800037a:    6001        .`      STR      r1,[r0,#0]
        0x0800037c:    6801        .h      LDR      r1,[r0,#0]
        0x0800037e:    f4416100    A..a    ORR      r1,r1,#0x800
        0x08000382:    6001        .`      STR      r1,[r0,#0]
        0x08000384:    6801        .h      LDR      r1,[r0,#0]
        0x08000386:    f4216100    !..a    BIC      r1,r1,#0x800
        0x0800038a:    6001        .`      STR      r1,[r0,#0]
        0x0800038c:    6801        .h      LDR      r1,[r0,#0]
        0x0800038e:    f4417100    A..q    ORR      r1,r1,#0x200
        0x08000392:    6001        .`      STR      r1,[r0,#0]
        0x08000394:    6801        .h      LDR      r1,[r0,#0]
        0x08000396:    0549        I.      LSLS     r1,r1,#21
        0x08000398:    d50f        ..      BPL      0x80003ba ; FLASH_FlushCaches + 78
        0x0800039a:    6801        .h      LDR      r1,[r0,#0]
        0x0800039c:    f4216180    !..a    BIC      r1,r1,#0x400
        0x080003a0:    6001        .`      STR      r1,[r0,#0]
        0x080003a2:    6801        .h      LDR      r1,[r0,#0]
        0x080003a4:    f4415180    A..Q    ORR      r1,r1,#0x1000
        0x080003a8:    6001        .`      STR      r1,[r0,#0]
        0x080003aa:    6801        .h      LDR      r1,[r0,#0]
        0x080003ac:    f4215180    !..Q    BIC      r1,r1,#0x1000
        0x080003b0:    6001        .`      STR      r1,[r0,#0]
        0x080003b2:    6801        .h      LDR      r1,[r0,#0]
        0x080003b4:    f4416180    A..a    ORR      r1,r1,#0x400
        0x080003b8:    6001        .`      STR      r1,[r0,#0]
        0x080003ba:    4770        pG      BX       lr
    $d
        0x080003bc:    40023c00    .<.@    DCD    1073888256
    $t
    i.FLASH_If_Erase
    FLASH_If_Erase
        0x080003c0:    b530        0.      PUSH     {r4,r5,lr}
        0x080003c2:    b087        ..      SUB      sp,sp,#0x1c
        0x080003c4:    2500        .%      MOVS     r5,#0
        0x080003c6:    4604        .F      MOV      r4,r0
        0x080003c8:    9505        ..      STR      r5,[sp,#0x14]
        0x080003ca:    2818        .(      CMP      r0,#0x18
        0x080003cc:    d810        ..      BHI      0x80003f0 ; FLASH_If_Erase + 48
        0x080003ce:    f000f9f7    ....    BL       HAL_FLASH_Unlock ; 0x80007c0
        0x080003d2:    2001        .       MOVS     r0,#1
        0x080003d4:    e9cd0401    ....    STRD     r0,r4,[sp,#4]
        0x080003d8:    9003        ..      STR      r0,[sp,#0xc]
        0x080003da:    2002        .       MOVS     r0,#2
        0x080003dc:    9004        ..      STR      r0,[sp,#0x10]
        0x080003de:    9500        ..      STR      r5,[sp,#0]
        0x080003e0:    a905        ..      ADD      r1,sp,#0x14
        0x080003e2:    4668        hF      MOV      r0,sp
        0x080003e4:    f000f918    ....    BL       HAL_FLASHEx_Erase ; 0x8000618
        0x080003e8:    4604        .F      MOV      r4,r0
        0x080003ea:    f000f983    ....    BL       HAL_FLASH_Lock ; 0x80006f4
        0x080003ee:    b114        ..      CBZ      r4,0x80003f6 ; FLASH_If_Erase + 54
        0x080003f0:    2001        .       MOVS     r0,#1
        0x080003f2:    b007        ..      ADD      sp,sp,#0x1c
        0x080003f4:    bd30        0.      POP      {r4,r5,pc}
        0x080003f6:    2000        .       MOVS     r0,#0
        0x080003f8:    e7fb        ..      B        0x80003f2 ; FLASH_If_Erase + 50
    i.FLASH_If_GetOptionByte
    FLASH_If_GetOptionByte
        0x080003fa:    b570        p.      PUSH     {r4-r6,lr}
        0x080003fc:    4605        .F      MOV      r5,r0
        0x080003fe:    f000f9df    ....    BL       HAL_FLASH_Unlock ; 0x80007c0
        0x08000402:    4604        .F      MOV      r4,r0
        0x08000404:    f000f98a    ....    BL       HAL_FLASH_OB_Unlock ; 0x800071c
        0x08000408:    4304        .C      ORRS     r4,r4,r0
        0x0800040a:    4628        (F      MOV      r0,r5
        0x0800040c:    f000f952    ..R.    BL       HAL_FLASHEx_OBGetConfig ; 0x80006b4
        0x08000410:    f000f97a    ..z.    BL       HAL_FLASH_OB_Lock ; 0x8000708
        0x08000414:    4304        .C      ORRS     r4,r4,r0
        0x08000416:    f000f96d    ..m.    BL       HAL_FLASH_Lock ; 0x80006f4
        0x0800041a:    4320         C      ORRS     r0,r0,r4
        0x0800041c:    d000        ..      BEQ      0x8000420 ; FLASH_If_GetOptionByte + 38
        0x0800041e:    2004        .       MOVS     r0,#4
        0x08000420:    bd70        p.      POP      {r4-r6,pc}
        0x08000422:    0000        ..      MOVS     r0,r0
    i.FLASH_If_Write
    FLASH_If_Write
        0x08000424:    e92d47f0    -..G    PUSH     {r4-r10,lr}
        0x08000428:    2600        .&      MOVS     r6,#0
        0x0800042a:    4617        .F      MOV      r7,r2
        0x0800042c:    4689        .F      MOV      r9,r1
        0x0800042e:    4605        .F      MOV      r5,r0
        0x08000430:    4634        4F      MOV      r4,r6
        0x08000432:    f000f9c5    ....    BL       HAL_FLASH_Unlock ; 0x80007c0
        0x08000436:    f8df803c    ..<.    LDR      r8,[pc,#60] ; [0x8000474] = 0x81ffff8
        0x0800043a:    e012        ..      B        0x8000462 ; FLASH_If_Write + 62
        0x0800043c:    f8592024    Y.$     LDR      r2,[r9,r4,LSL #2]
        0x08000440:    2300        .#      MOVS     r3,#0
        0x08000442:    4629        )F      MOV      r1,r5
        0x08000444:    2002        .       MOVS     r0,#2
        0x08000446:    f000f97d    ..}.    BL       HAL_FLASH_Program ; 0x8000744
        0x0800044a:    b108        ..      CBZ      r0,0x8000450 ; FLASH_If_Write + 44
        0x0800044c:    2603        .&      MOVS     r6,#3
        0x0800044e:    e00c        ..      B        0x800046a ; FLASH_If_Write + 70
        0x08000450:    f8590024    Y.$.    LDR      r0,[r9,r4,LSL #2]
        0x08000454:    6829        )h      LDR      r1,[r5,#0]
        0x08000456:    4281        .B      CMP      r1,r0
        0x08000458:    d001        ..      BEQ      0x800045e ; FLASH_If_Write + 58
        0x0800045a:    2602        .&      MOVS     r6,#2
        0x0800045c:    e005        ..      B        0x800046a ; FLASH_If_Write + 70
        0x0800045e:    1c64        d.      ADDS     r4,r4,#1
        0x08000460:    1d2d        -.      ADDS     r5,r5,#4
        0x08000462:    42bc        .B      CMP      r4,r7
        0x08000464:    d201        ..      BCS      0x800046a ; FLASH_If_Write + 70
        0x08000466:    4545        EE      CMP      r5,r8
        0x08000468:    d9e8        ..      BLS      0x800043c ; FLASH_If_Write + 24
        0x0800046a:    f000f943    ..C.    BL       HAL_FLASH_Lock ; 0x80006f4
        0x0800046e:    4630        0F      MOV      r0,r6
        0x08000470:    e8bd87f0    ....    POP      {r4-r10,pc}
    $d
        0x08000474:    081ffff8    ....    DCD    136314872
    $t
    i.FLASH_MassErase
    FLASH_MassErase
        0x08000478:    4a0e        .J      LDR      r2,[pc,#56] ; [0x80004b4] = 0x40023c10
        0x0800047a:    6813        .h      LDR      r3,[r2,#0]
        0x0800047c:    f4237340    #.@s    BIC      r3,r3,#0x300
        0x08000480:    6013        .`      STR      r3,[r2,#0]
        0x08000482:    2903        .)      CMP      r1,#3
        0x08000484:    d00d        ..      BEQ      0x80004a2 ; FLASH_MassErase + 42
        0x08000486:    2901        .)      CMP      r1,#1
        0x08000488:    6811        .h      LDR      r1,[r2,#0]
        0x0800048a:    d00f        ..      BEQ      0x80004ac ; FLASH_MassErase + 52
        0x0800048c:    f4414100    A..A    ORR      r1,r1,#0x8000
        0x08000490:    6011        .`      STR      r1,[r2,#0]
        0x08000492:    6811        .h      LDR      r1,[r2,#0]
        0x08000494:    f44f3380    O..3    MOV      r3,#0x10000
        0x08000498:    ea432000    C..     ORR      r0,r3,r0,LSL #8
        0x0800049c:    4301        .C      ORRS     r1,r1,r0
        0x0800049e:    6011        .`      STR      r1,[r2,#0]
        0x080004a0:    4770        pG      BX       lr
        0x080004a2:    6811        .h      LDR      r1,[r2,#0]
        0x080004a4:    f2480304    H...    MOV      r3,#0x8004
        0x080004a8:    4319        .C      ORRS     r1,r1,r3
        0x080004aa:    e7f1        ..      B        0x8000490 ; FLASH_MassErase + 24
        0x080004ac:    f0410104    A...    ORR      r1,r1,#4
        0x080004b0:    e7ee        ..      B        0x8000490 ; FLASH_MassErase + 24
    $d
        0x080004b2:    0000        ..      DCW    0
        0x080004b4:    40023c10    .<.@    DCD    1073888272
    $t
    i.FLASH_Program_Byte
    FLASH_Program_Byte
        0x080004b8:    4a06        .J      LDR      r2,[pc,#24] ; [0x80004d4] = 0x40023c10
        0x080004ba:    6813        .h      LDR      r3,[r2,#0]
        0x080004bc:    f4237340    #.@s    BIC      r3,r3,#0x300
        0x080004c0:    6013        .`      STR      r3,[r2,#0]
        0x080004c2:    6813        .h      LDR      r3,[r2,#0]
        0x080004c4:    6013        .`      STR      r3,[r2,#0]
        0x080004c6:    6813        .h      LDR      r3,[r2,#0]
        0x080004c8:    f0430301    C...    ORR      r3,r3,#1
        0x080004cc:    6013        .`      STR      r3,[r2,#0]
        0x080004ce:    7001        .p      STRB     r1,[r0,#0]
        0x080004d0:    4770        pG      BX       lr
    $d
        0x080004d2:    0000        ..      DCW    0
        0x080004d4:    40023c10    .<.@    DCD    1073888272
    $t
    i.FLASH_Program_DoubleWord
    FLASH_Program_DoubleWord
        0x080004d8:    4909        .I      LDR      r1,[pc,#36] ; [0x8000500] = 0x40023c10
        0x080004da:    b510        ..      PUSH     {r4,lr}
        0x080004dc:    680c        .h      LDR      r4,[r1,#0]
        0x080004de:    f4247440    $.@t    BIC      r4,r4,#0x300
        0x080004e2:    600c        .`      STR      r4,[r1,#0]
        0x080004e4:    680c        .h      LDR      r4,[r1,#0]
        0x080004e6:    f4447440    D.@t    ORR      r4,r4,#0x300
        0x080004ea:    600c        .`      STR      r4,[r1,#0]
        0x080004ec:    680c        .h      LDR      r4,[r1,#0]
        0x080004ee:    f0440401    D...    ORR      r4,r4,#1
        0x080004f2:    600c        .`      STR      r4,[r1,#0]
        0x080004f4:    6002        .`      STR      r2,[r0,#0]
        0x080004f6:    f3bf8f6f    ..o.    ISB      
        0x080004fa:    6043        C`      STR      r3,[r0,#4]
        0x080004fc:    bd10        ..      POP      {r4,pc}
    $d
        0x080004fe:    0000        ..      DCW    0
        0x08000500:    40023c10    .<.@    DCD    1073888272
    $t
    i.FLASH_Program_HalfWord
    FLASH_Program_HalfWord
        0x08000504:    4a07        .J      LDR      r2,[pc,#28] ; [0x8000524] = 0x40023c10
        0x08000506:    6813        .h      LDR      r3,[r2,#0]
        0x08000508:    f4237340    #.@s    BIC      r3,r3,#0x300
        0x0800050c:    6013        .`      STR      r3,[r2,#0]
        0x0800050e:    6813        .h      LDR      r3,[r2,#0]
        0x08000510:    f4437380    C..s    ORR      r3,r3,#0x100
        0x08000514:    6013        .`      STR      r3,[r2,#0]
        0x08000516:    6813        .h      LDR      r3,[r2,#0]
        0x08000518:    f0430301    C...    ORR      r3,r3,#1
        0x0800051c:    6013        .`      STR      r3,[r2,#0]
        0x0800051e:    8001        ..      STRH     r1,[r0,#0]
        0x08000520:    4770        pG      BX       lr
    $d
        0x08000522:    0000        ..      DCW    0
        0x08000524:    40023c10    .<.@    DCD    1073888272
    $t
    i.FLASH_Program_Word
    FLASH_Program_Word
        0x08000528:    4a07        .J      LDR      r2,[pc,#28] ; [0x8000548] = 0x40023c10
        0x0800052a:    6813        .h      LDR      r3,[r2,#0]
        0x0800052c:    f4237340    #.@s    BIC      r3,r3,#0x300
        0x08000530:    6013        .`      STR      r3,[r2,#0]
        0x08000532:    6813        .h      LDR      r3,[r2,#0]
        0x08000534:    f4437300    C..s    ORR      r3,r3,#0x200
        0x08000538:    6013        .`      STR      r3,[r2,#0]
        0x0800053a:    6813        .h      LDR      r3,[r2,#0]
        0x0800053c:    f0430301    C...    ORR      r3,r3,#1
        0x08000540:    6013        .`      STR      r3,[r2,#0]
        0x08000542:    6001        .`      STR      r1,[r0,#0]
        0x08000544:    4770        pG      BX       lr
    $d
        0x08000546:    0000        ..      DCW    0
        0x08000548:    40023c10    .<.@    DCD    1073888272
    $t
    i.FLASH_SetErrorCode
    FLASH_SetErrorCode
        0x0800054c:    491c        .I      LDR      r1,[pc,#112] ; [0x80005c0] = 0x40023c0c
        0x0800054e:    6808        .h      LDR      r0,[r1,#0]
        0x08000550:    06c2        ..      LSLS     r2,r0,#27
        0x08000552:    481c        .H      LDR      r0,[pc,#112] ; [0x80005c4] = 0x20020498
        0x08000554:    d505        ..      BPL      0x8000562 ; FLASH_SetErrorCode + 22
        0x08000556:    69c2        .i      LDR      r2,[r0,#0x1c]
        0x08000558:    f0420210    B...    ORR      r2,r2,#0x10
        0x0800055c:    61c2        .a      STR      r2,[r0,#0x1c]
        0x0800055e:    2210        ."      MOVS     r2,#0x10
        0x08000560:    600a        .`      STR      r2,[r1,#0]
        0x08000562:    680a        .h      LDR      r2,[r1,#0]
        0x08000564:    0692        ..      LSLS     r2,r2,#26
        0x08000566:    d505        ..      BPL      0x8000574 ; FLASH_SetErrorCode + 40
        0x08000568:    69c2        .i      LDR      r2,[r0,#0x1c]
        0x0800056a:    f0420208    B...    ORR      r2,r2,#8
        0x0800056e:    61c2        .a      STR      r2,[r0,#0x1c]
        0x08000570:    2220         "      MOVS     r2,#0x20
        0x08000572:    600a        .`      STR      r2,[r1,#0]
        0x08000574:    680a        .h      LDR      r2,[r1,#0]
        0x08000576:    0652        R.      LSLS     r2,r2,#25
        0x08000578:    d505        ..      BPL      0x8000586 ; FLASH_SetErrorCode + 58
        0x0800057a:    69c2        .i      LDR      r2,[r0,#0x1c]
        0x0800057c:    f0420204    B...    ORR      r2,r2,#4
        0x08000580:    61c2        .a      STR      r2,[r0,#0x1c]
        0x08000582:    2240        @"      MOVS     r2,#0x40
        0x08000584:    600a        .`      STR      r2,[r1,#0]
        0x08000586:    680a        .h      LDR      r2,[r1,#0]
        0x08000588:    0612        ..      LSLS     r2,r2,#24
        0x0800058a:    d505        ..      BPL      0x8000598 ; FLASH_SetErrorCode + 76
        0x0800058c:    69c2        .i      LDR      r2,[r0,#0x1c]
        0x0800058e:    f0420202    B...    ORR      r2,r2,#2
        0x08000592:    61c2        .a      STR      r2,[r0,#0x1c]
        0x08000594:    2280        ."      MOVS     r2,#0x80
        0x08000596:    600a        .`      STR      r2,[r1,#0]
        0x08000598:    680a        .h      LDR      r2,[r1,#0]
        0x0800059a:    05d2        ..      LSLS     r2,r2,#23
        0x0800059c:    d506        ..      BPL      0x80005ac ; FLASH_SetErrorCode + 96
        0x0800059e:    69c2        .i      LDR      r2,[r0,#0x1c]
        0x080005a0:    f0420201    B...    ORR      r2,r2,#1
        0x080005a4:    61c2        .a      STR      r2,[r0,#0x1c]
        0x080005a6:    f44f7280    O..r    MOV      r2,#0x100
        0x080005aa:    600a        .`      STR      r2,[r1,#0]
        0x080005ac:    680a        .h      LDR      r2,[r1,#0]
        0x080005ae:    0792        ..      LSLS     r2,r2,#30
        0x080005b0:    d505        ..      BPL      0x80005be ; FLASH_SetErrorCode + 114
        0x080005b2:    69c2        .i      LDR      r2,[r0,#0x1c]
        0x080005b4:    f0420220    B. .    ORR      r2,r2,#0x20
        0x080005b8:    61c2        .a      STR      r2,[r0,#0x1c]
        0x080005ba:    2002        .       MOVS     r0,#2
        0x080005bc:    6008        .`      STR      r0,[r1,#0]
        0x080005be:    4770        pG      BX       lr
    $d
        0x080005c0:    40023c0c    .<.@    DCD    1073888268
        0x080005c4:    20020498    ...     DCD    537003160
    $t
    i.FLASH_WaitForLastOperation
    FLASH_WaitForLastOperation
        0x080005c8:    b570        p.      PUSH     {r4-r6,lr}
        0x080005ca:    4911        .I      LDR      r1,[pc,#68] ; [0x8000610] = 0x20020498
        0x080005cc:    4604        .F      MOV      r4,r0
        0x080005ce:    2000        .       MOVS     r0,#0
        0x080005d0:    61c8        .a      STR      r0,[r1,#0x1c]
        0x080005d2:    f000f9fb    ....    BL       HAL_GetTick ; 0x80009cc
        0x080005d6:    4606        .F      MOV      r6,r0
        0x080005d8:    4d0e        .M      LDR      r5,[pc,#56] ; [0x8000614] = 0x40023c0c
        0x080005da:    e009        ..      B        0x80005f0 ; FLASH_WaitForLastOperation + 40
        0x080005dc:    1c60        `.      ADDS     r0,r4,#1
        0x080005de:    d007        ..      BEQ      0x80005f0 ; FLASH_WaitForLastOperation + 40
        0x080005e0:    b124        $.      CBZ      r4,0x80005ec ; FLASH_WaitForLastOperation + 36
        0x080005e2:    f000f9f3    ....    BL       HAL_GetTick ; 0x80009cc
        0x080005e6:    1b80        ..      SUBS     r0,r0,r6
        0x080005e8:    42a0        .B      CMP      r0,r4
        0x080005ea:    d901        ..      BLS      0x80005f0 ; FLASH_WaitForLastOperation + 40
        0x080005ec:    2003        .       MOVS     r0,#3
        0x080005ee:    bd70        p.      POP      {r4-r6,pc}
        0x080005f0:    6828        (h      LDR      r0,[r5,#0]
        0x080005f2:    03c0        ..      LSLS     r0,r0,#15
        0x080005f4:    d4f2        ..      BMI      0x80005dc ; FLASH_WaitForLastOperation + 20
        0x080005f6:    6828        (h      LDR      r0,[r5,#0]
        0x080005f8:    07c0        ..      LSLS     r0,r0,#31
        0x080005fa:    d001        ..      BEQ      0x8000600 ; FLASH_WaitForLastOperation + 56
        0x080005fc:    2001        .       MOVS     r0,#1
        0x080005fe:    6028        (`      STR      r0,[r5,#0]
        0x08000600:    6828        (h      LDR      r0,[r5,#0]
        0x08000602:    f41070f9    ...p    ANDS     r0,r0,#0x1f2
        0x08000606:    d0f2        ..      BEQ      0x80005ee ; FLASH_WaitForLastOperation + 38
        0x08000608:    f7ffffa0    ....    BL       FLASH_SetErrorCode ; 0x800054c
        0x0800060c:    2001        .       MOVS     r0,#1
        0x0800060e:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x08000610:    20020498    ...     DCD    537003160
        0x08000614:    40023c0c    .<.@    DCD    1073888268
    $t
    i.HAL_FLASHEx_Erase
    HAL_FLASHEx_Erase
        0x08000618:    e92d47f0    -..G    PUSH     {r4-r10,lr}
        0x0800061c:    4604        .F      MOV      r4,r0
        0x0800061e:    4823        #H      LDR      r0,[pc,#140] ; [0x80006ac] = 0x20020498
        0x08000620:    460f        .F      MOV      r7,r1
        0x08000622:    7e01        .~      LDRB     r1,[r0,#0x18]
        0x08000624:    2901        .)      CMP      r1,#1
        0x08000626:    d00a        ..      BEQ      0x800063e ; HAL_FLASHEx_Erase + 38
        0x08000628:    2101        .!      MOVS     r1,#1
        0x0800062a:    4680        .F      MOV      r8,r0
        0x0800062c:    7601        .v      STRB     r1,[r0,#0x18]
        0x0800062e:    f24c3950    L.P9    MOV      r9,#0xc350
        0x08000632:    4648        HF      MOV      r0,r9
        0x08000634:    f7ffffc8    ....    BL       FLASH_WaitForLastOperation ; 0x80005c8
        0x08000638:    0002        ..      MOVS     r2,r0
        0x0800063a:    d003        ..      BEQ      0x8000644 ; HAL_FLASHEx_Erase + 44
        0x0800063c:    e030        0.      B        0x80006a0 ; HAL_FLASHEx_Erase + 136
        0x0800063e:    2002        .       MOVS     r0,#2
        0x08000640:    e8bd87f0    ....    POP      {r4-r10,pc}
        0x08000644:    f04f30ff    O..0    MOV      r0,#0xffffffff
        0x08000648:    6038        8`      STR      r0,[r7,#0]
        0x0800064a:    6820         h      LDR      r0,[r4,#0]
        0x0800064c:    4d18        .M      LDR      r5,[pc,#96] ; [0x80006b0] = 0x40023c10
        0x0800064e:    2801        .(      CMP      r0,#1
        0x08000650:    d001        ..      BEQ      0x8000656 ; HAL_FLASHEx_Erase + 62
        0x08000652:    68a6        .h      LDR      r6,[r4,#8]
        0x08000654:    e01d        ..      B        0x8000692 ; HAL_FLASHEx_Erase + 122
        0x08000656:    7c20         |      LDRB     r0,[r4,#0x10]
        0x08000658:    6861        ah      LDR      r1,[r4,#4]
        0x0800065a:    f7ffff0d    ....    BL       FLASH_MassErase ; 0x8000478
        0x0800065e:    4648        HF      MOV      r0,r9
        0x08000660:    f7ffffb2    ....    BL       FLASH_WaitForLastOperation ; 0x80005c8
        0x08000664:    4602        .F      MOV      r2,r0
        0x08000666:    6828        (h      LDR      r0,[r5,#0]
        0x08000668:    f2480104    H...    MOV      r1,#0x8004
        0x0800066c:    4388        .C      BICS     r0,r0,r1
        0x0800066e:    6028        (`      STR      r0,[r5,#0]
        0x08000670:    e014        ..      B        0x800069c ; HAL_FLASHEx_Erase + 132
        0x08000672:    7c21        !|      LDRB     r1,[r4,#0x10]
        0x08000674:    4630        0F      MOV      r0,r6
        0x08000676:    f7fffe4f    ..O.    BL       FLASH_Erase_Sector ; 0x8000318
        0x0800067a:    4648        HF      MOV      r0,r9
        0x0800067c:    f7ffffa4    ....    BL       FLASH_WaitForLastOperation ; 0x80005c8
        0x08000680:    0002        ..      MOVS     r2,r0
        0x08000682:    6828        (h      LDR      r0,[r5,#0]
        0x08000684:    f02000fa     ...    BIC      r0,r0,#0xfa
        0x08000688:    6028        (`      STR      r0,[r5,#0]
        0x0800068a:    d001        ..      BEQ      0x8000690 ; HAL_FLASHEx_Erase + 120
        0x0800068c:    603e        >`      STR      r6,[r7,#0]
        0x0800068e:    e005        ..      B        0x800069c ; HAL_FLASHEx_Erase + 132
        0x08000690:    1c76        v.      ADDS     r6,r6,#1
        0x08000692:    e9d41002    ....    LDRD     r1,r0,[r4,#8]
        0x08000696:    4408        .D      ADD      r0,r0,r1
        0x08000698:    42b0        .B      CMP      r0,r6
        0x0800069a:    d8ea        ..      BHI      0x8000672 ; HAL_FLASHEx_Erase + 90
        0x0800069c:    f7fffe66    ..f.    BL       FLASH_FlushCaches ; 0x800036c
        0x080006a0:    2100        .!      MOVS     r1,#0
        0x080006a2:    f8881018    ....    STRB     r1,[r8,#0x18]
        0x080006a6:    4610        .F      MOV      r0,r2
        0x080006a8:    e7ca        ..      B        0x8000640 ; HAL_FLASHEx_Erase + 40
    $d
        0x080006aa:    0000        ..      DCW    0
        0x080006ac:    20020498    ...     DCD    537003160
        0x080006b0:    40023c10    .<.@    DCD    1073888272
    $t
    i.HAL_FLASHEx_OBGetConfig
    HAL_FLASHEx_OBGetConfig
        0x080006b4:    210f        .!      MOVS     r1,#0xf
        0x080006b6:    6001        .`      STR      r1,[r0,#0]
        0x080006b8:    490d        .I      LDR      r1,[pc,#52] ; [0x80006f0] = 0x40023c16
        0x080006ba:    8809        ..      LDRH     r1,[r1,#0]
        0x080006bc:    6081        .`      STR      r1,[r0,#8]
        0x080006be:    4a0c        .J      LDR      r2,[pc,#48] ; [0x80006f0] = 0x40023c16
        0x080006c0:    21aa        .!      MOVS     r1,#0xaa
        0x080006c2:    1e52        R.      SUBS     r2,r2,#1
        0x080006c4:    7813        .x      LDRB     r3,[r2,#0]
        0x080006c6:    2bcc        .+      CMP      r3,#0xcc
        0x080006c8:    d00f        ..      BEQ      0x80006ea ; HAL_FLASHEx_OBGetConfig + 54
        0x080006ca:    7812        .x      LDRB     r2,[r2,#0]
        0x080006cc:    2aaa        .*      CMP      r2,#0xaa
        0x080006ce:    d000        ..      BEQ      0x80006d2 ; HAL_FLASHEx_OBGetConfig + 30
        0x080006d0:    2155        U!      MOVS     r1,#0x55
        0x080006d2:    6101        .a      STR      r1,[r0,#0x10]
        0x080006d4:    4906        .I      LDR      r1,[pc,#24] ; [0x80006f0] = 0x40023c16
        0x080006d6:    1e89        ..      SUBS     r1,r1,#2
        0x080006d8:    680a        .h      LDR      r2,[r1,#0]
        0x080006da:    f00202e0    ....    AND      r2,r2,#0xe0
        0x080006de:    7602        .v      STRB     r2,[r0,#0x18]
        0x080006e0:    7809        .x      LDRB     r1,[r1,#0]
        0x080006e2:    f001010c    ....    AND      r1,r1,#0xc
        0x080006e6:    6141        Aa      STR      r1,[r0,#0x14]
        0x080006e8:    4770        pG      BX       lr
        0x080006ea:    21cc        .!      MOVS     r1,#0xcc
        0x080006ec:    e7f1        ..      B        0x80006d2 ; HAL_FLASHEx_OBGetConfig + 30
    $d
        0x080006ee:    0000        ..      DCW    0
        0x080006f0:    40023c16    .<.@    DCD    1073888278
    $t
    i.HAL_FLASH_Lock
    HAL_FLASH_Lock
        0x080006f4:    4803        .H      LDR      r0,[pc,#12] ; [0x8000704] = 0x40023c10
        0x080006f6:    6801        .h      LDR      r1,[r0,#0]
        0x080006f8:    f0414100    A..A    ORR      r1,r1,#0x80000000
        0x080006fc:    6001        .`      STR      r1,[r0,#0]
        0x080006fe:    2000        .       MOVS     r0,#0
        0x08000700:    4770        pG      BX       lr
    $d
        0x08000702:    0000        ..      DCW    0
        0x08000704:    40023c10    .<.@    DCD    1073888272
    $t
    i.HAL_FLASH_OB_Lock
    HAL_FLASH_OB_Lock
        0x08000708:    4803        .H      LDR      r0,[pc,#12] ; [0x8000718] = 0x40023c14
        0x0800070a:    6801        .h      LDR      r1,[r0,#0]
        0x0800070c:    f0410101    A...    ORR      r1,r1,#1
        0x08000710:    6001        .`      STR      r1,[r0,#0]
        0x08000712:    2000        .       MOVS     r0,#0
        0x08000714:    4770        pG      BX       lr
    $d
        0x08000716:    0000        ..      DCW    0
        0x08000718:    40023c14    .<.@    DCD    1073888276
    $t
    i.HAL_FLASH_OB_Unlock
    HAL_FLASH_OB_Unlock
        0x0800071c:    4806        .H      LDR      r0,[pc,#24] ; [0x8000738] = 0x40023c14
        0x0800071e:    6800        .h      LDR      r0,[r0,#0]
        0x08000720:    07c0        ..      LSLS     r0,r0,#31
        0x08000722:    d007        ..      BEQ      0x8000734 ; HAL_FLASH_OB_Unlock + 24
        0x08000724:    4804        .H      LDR      r0,[pc,#16] ; [0x8000738] = 0x40023c14
        0x08000726:    4905        .I      LDR      r1,[pc,#20] ; [0x800073c] = 0x8192a3b
        0x08000728:    380c        .8      SUBS     r0,r0,#0xc
        0x0800072a:    6001        .`      STR      r1,[r0,#0]
        0x0800072c:    4904        .I      LDR      r1,[pc,#16] ; [0x8000740] = 0x4c5d6e7f
        0x0800072e:    6001        .`      STR      r1,[r0,#0]
        0x08000730:    2000        .       MOVS     r0,#0
        0x08000732:    4770        pG      BX       lr
        0x08000734:    2001        .       MOVS     r0,#1
        0x08000736:    4770        pG      BX       lr
    $d
        0x08000738:    40023c14    .<.@    DCD    1073888276
        0x0800073c:    08192a3b    ;*..    DCD    135866939
        0x08000740:    4c5d6e7f    .n]L    DCD    1281191551
    $t
    i.HAL_FLASH_Program
    HAL_FLASH_Program
        0x08000744:    e92d47f0    -..G    PUSH     {r4-r10,lr}
        0x08000748:    4e1b        .N      LDR      r6,[pc,#108] ; [0x80007b8] = 0x20020498
        0x0800074a:    4605        .F      MOV      r5,r0
        0x0800074c:    4614        .F      MOV      r4,r2
        0x0800074e:    7e30        0~      LDRB     r0,[r6,#0x18]
        0x08000750:    461f        .F      MOV      r7,r3
        0x08000752:    4689        .F      MOV      r9,r1
        0x08000754:    2801        .(      CMP      r0,#1
        0x08000756:    d008        ..      BEQ      0x800076a ; HAL_FLASH_Program + 38
        0x08000758:    2001        .       MOVS     r0,#1
        0x0800075a:    7630        0v      STRB     r0,[r6,#0x18]
        0x0800075c:    f24c3850    L.P8    MOV      r8,#0xc350
        0x08000760:    4640        @F      MOV      r0,r8
        0x08000762:    f7ffff31    ..1.    BL       FLASH_WaitForLastOperation ; 0x80005c8
        0x08000766:    b118        ..      CBZ      r0,0x8000770 ; HAL_FLASH_Program + 44
        0x08000768:    e014        ..      B        0x8000794 ; HAL_FLASH_Program + 80
        0x0800076a:    2002        .       MOVS     r0,#2
        0x0800076c:    e8bd87f0    ....    POP      {r4-r10,pc}
        0x08000770:    b19d        ..      CBZ      r5,0x800079a ; HAL_FLASH_Program + 86
        0x08000772:    2d01        .-      CMP      r5,#1
        0x08000774:    d016        ..      BEQ      0x80007a4 ; HAL_FLASH_Program + 96
        0x08000776:    2d02        .-      CMP      r5,#2
        0x08000778:    d019        ..      BEQ      0x80007ae ; HAL_FLASH_Program + 106
        0x0800077a:    4622        "F      MOV      r2,r4
        0x0800077c:    463b        ;F      MOV      r3,r7
        0x0800077e:    4648        HF      MOV      r0,r9
        0x08000780:    f7fffeaa    ....    BL       FLASH_Program_DoubleWord ; 0x80004d8
        0x08000784:    4640        @F      MOV      r0,r8
        0x08000786:    f7ffff1f    ....    BL       FLASH_WaitForLastOperation ; 0x80005c8
        0x0800078a:    490c        .I      LDR      r1,[pc,#48] ; [0x80007bc] = 0x40023c10
        0x0800078c:    680a        .h      LDR      r2,[r1,#0]
        0x0800078e:    f0220201    "...    BIC      r2,r2,#1
        0x08000792:    600a        .`      STR      r2,[r1,#0]
        0x08000794:    2100        .!      MOVS     r1,#0
        0x08000796:    7631        1v      STRB     r1,[r6,#0x18]
        0x08000798:    e7e8        ..      B        0x800076c ; HAL_FLASH_Program + 40
        0x0800079a:    b2e1        ..      UXTB     r1,r4
        0x0800079c:    4648        HF      MOV      r0,r9
        0x0800079e:    f7fffe8b    ....    BL       FLASH_Program_Byte ; 0x80004b8
        0x080007a2:    e7ef        ..      B        0x8000784 ; HAL_FLASH_Program + 64
        0x080007a4:    b2a1        ..      UXTH     r1,r4
        0x080007a6:    4648        HF      MOV      r0,r9
        0x080007a8:    f7fffeac    ....    BL       FLASH_Program_HalfWord ; 0x8000504
        0x080007ac:    e7ea        ..      B        0x8000784 ; HAL_FLASH_Program + 64
        0x080007ae:    4621        !F      MOV      r1,r4
        0x080007b0:    4648        HF      MOV      r0,r9
        0x080007b2:    f7fffeb9    ....    BL       FLASH_Program_Word ; 0x8000528
        0x080007b6:    e7e5        ..      B        0x8000784 ; HAL_FLASH_Program + 64
    $d
        0x080007b8:    20020498    ...     DCD    537003160
        0x080007bc:    40023c10    .<.@    DCD    1073888272
    $t
    i.HAL_FLASH_Unlock
    HAL_FLASH_Unlock
        0x080007c0:    4907        .I      LDR      r1,[pc,#28] ; [0x80007e0] = 0x40023c10
        0x080007c2:    2000        .       MOVS     r0,#0
        0x080007c4:    680a        .h      LDR      r2,[r1,#0]
        0x080007c6:    2a00        .*      CMP      r2,#0
        0x080007c8:    da09        ..      BGE      0x80007de ; HAL_FLASH_Unlock + 30
        0x080007ca:    4a05        .J      LDR      r2,[pc,#20] ; [0x80007e0] = 0x40023c10
        0x080007cc:    4b05        .K      LDR      r3,[pc,#20] ; [0x80007e4] = 0x45670123
        0x080007ce:    3a0c        .:      SUBS     r2,r2,#0xc
        0x080007d0:    6013        .`      STR      r3,[r2,#0]
        0x080007d2:    4b05        .K      LDR      r3,[pc,#20] ; [0x80007e8] = 0xcdef89ab
        0x080007d4:    6013        .`      STR      r3,[r2,#0]
        0x080007d6:    6809        .h      LDR      r1,[r1,#0]
        0x080007d8:    2900        .)      CMP      r1,#0
        0x080007da:    da00        ..      BGE      0x80007de ; HAL_FLASH_Unlock + 30
        0x080007dc:    2001        .       MOVS     r0,#1
        0x080007de:    4770        pG      BX       lr
    $d
        0x080007e0:    40023c10    .<.@    DCD    1073888272
        0x080007e4:    45670123    #.gE    DCD    1164378403
        0x080007e8:    cdef89ab    ....    DCD    3455027627
    $t
    i.HAL_GPIO_Init
    HAL_GPIO_Init
        0x080007ec:    e92d4ff8    -..O    PUSH     {r3-r11,lr}
        0x080007f0:    2200        ."      MOVS     r2,#0
        0x080007f2:    f04f0801    O...    MOV      r8,#1
        0x080007f6:    2503        .%      MOVS     r5,#3
        0x080007f8:    f04f0e0f    O...    MOV      lr,#0xf
        0x080007fc:    680b        .h      LDR      r3,[r1,#0]
        0x080007fe:    fa08f402    ....    LSL      r4,r8,r2
        0x08000802:    4023        #@      ANDS     r3,r3,r4
        0x08000804:    42a3        .B      CMP      r3,r4
        0x08000806:    d16e        n.      BNE      0x80008e6 ; HAL_GPIO_Init + 250
        0x08000808:    684e        Nh      LDR      r6,[r1,#4]
        0x0800080a:    2e01        ..      CMP      r6,#1
        0x0800080c:    d005        ..      BEQ      0x800081a ; HAL_GPIO_Init + 46
        0x0800080e:    2e02        ..      CMP      r6,#2
        0x08000810:    d003        ..      BEQ      0x800081a ; HAL_GPIO_Init + 46
        0x08000812:    2e11        ..      CMP      r6,#0x11
        0x08000814:    d001        ..      BEQ      0x800081a ; HAL_GPIO_Init + 46
        0x08000816:    2e12        ..      CMP      r6,#0x12
        0x08000818:    d112        ..      BNE      0x8000840 ; HAL_GPIO_Init + 84
        0x0800081a:    6886        .h      LDR      r6,[r0,#8]
        0x0800081c:    ea4f0c42    O.B.    LSL      r12,r2,#1
        0x08000820:    fa05f70c    ....    LSL      r7,r5,r12
        0x08000824:    43be        .C      BICS     r6,r6,r7
        0x08000826:    68cf        .h      LDR      r7,[r1,#0xc]
        0x08000828:    fa07f70c    ....    LSL      r7,r7,r12
        0x0800082c:    4337        7C      ORRS     r7,r7,r6
        0x0800082e:    6087        .`      STR      r7,[r0,#8]
        0x08000830:    6846        Fh      LDR      r6,[r0,#4]
        0x08000832:    43a6        .C      BICS     r6,r6,r4
        0x08000834:    790c        .y      LDRB     r4,[r1,#4]
        0x08000836:    f3c41400    ....    UBFX     r4,r4,#4,#1
        0x0800083a:    4094        .@      LSLS     r4,r4,r2
        0x0800083c:    4334        4C      ORRS     r4,r4,r6
        0x0800083e:    6044        D`      STR      r4,[r0,#4]
        0x08000840:    68c6        .h      LDR      r6,[r0,#0xc]
        0x08000842:    0057        W.      LSLS     r7,r2,#1
        0x08000844:    fa05fc07    ....    LSL      r12,r5,r7
        0x08000848:    688c        .h      LDR      r4,[r1,#8]
        0x0800084a:    ea26060c    &...    BIC      r6,r6,r12
        0x0800084e:    40bc        .@      LSLS     r4,r4,r7
        0x08000850:    4334        4C      ORRS     r4,r4,r6
        0x08000852:    60c4        .`      STR      r4,[r0,#0xc]
        0x08000854:    684c        Lh      LDR      r4,[r1,#4]
        0x08000856:    2c02        .,      CMP      r4,#2
        0x08000858:    d001        ..      BEQ      0x800085e ; HAL_GPIO_Init + 114
        0x0800085a:    2c12        .,      CMP      r4,#0x12
        0x0800085c:    d113        ..      BNE      0x8000886 ; HAL_GPIO_Init + 154
        0x0800085e:    08d4        ..      LSRS     r4,r2,#3
        0x08000860:    eb000484    ....    ADD      r4,r0,r4,LSL #2
        0x08000864:    46a3        .F      MOV      r11,r4
        0x08000866:    f8d49020    .. .    LDR      r9,[r4,#0x20]
        0x0800086a:    0754        T.      LSLS     r4,r2,#29
        0x0800086c:    ea4f6ad4    O..j    LSR      r10,r4,#27
        0x08000870:    fa0ef60a    ....    LSL      r6,lr,r10
        0x08000874:    ea290906    )...    BIC      r9,r9,r6
        0x08000878:    690e        .i      LDR      r6,[r1,#0x10]
        0x0800087a:    fa06f60a    ....    LSL      r6,r6,r10
        0x0800087e:    ea460609    F...    ORR      r6,r6,r9
        0x08000882:    f8cb6020    .. `    STR      r6,[r11,#0x20]
        0x08000886:    6804        .h      LDR      r4,[r0,#0]
        0x08000888:    790e        .y      LDRB     r6,[r1,#4]
        0x0800088a:    ea24040c    $...    BIC      r4,r4,r12
        0x0800088e:    f0060603    ....    AND      r6,r6,#3
        0x08000892:    40be        .@      LSLS     r6,r6,r7
        0x08000894:    4326        &C      ORRS     r6,r6,r4
        0x08000896:    6006        .`      STR      r6,[r0,#0]
        0x08000898:    684c        Lh      LDR      r4,[r1,#4]
        0x0800089a:    00e4        ..      LSLS     r4,r4,#3
        0x0800089c:    d56f        o.      BPL      0x800097e ; HAL_GPIO_Init + 402
        0x0800089e:    4c3b        ;L      LDR      r4,[pc,#236] ; [0x800098c] = 0x40023844
        0x080008a0:    6826        &h      LDR      r6,[r4,#0]
        0x080008a2:    f4464680    F..F    ORR      r6,r6,#0x4000
        0x080008a6:    6026        &`      STR      r6,[r4,#0]
        0x080008a8:    6824        $h      LDR      r4,[r4,#0]
        0x080008aa:    f0220603    "...    BIC      r6,r2,#3
        0x080008ae:    f4044480    ...D    AND      r4,r4,#0x4000
        0x080008b2:    9400        ..      STR      r4,[sp,#0]
        0x080008b4:    4c36        6L      LDR      r4,[pc,#216] ; [0x8000990] = 0x40013000
        0x080008b6:    4434        4D      ADD      r4,r4,r6
        0x080008b8:    46a4        .F      MOV      r12,r4
        0x080008ba:    f8d44808    ...H    LDR      r4,[r4,#0x808]
        0x080008be:    0796        ..      LSLS     r6,r2,#30
        0x080008c0:    0f36        6.      LSRS     r6,r6,#28
        0x080008c2:    fa0ef706    ....    LSL      r7,lr,r6
        0x080008c6:    43bc        .C      BICS     r4,r4,r7
        0x080008c8:    4f32        2O      LDR      r7,[pc,#200] ; [0x8000994] = 0x40020000
        0x080008ca:    42b8        .B      CMP      r0,r7
        0x080008cc:    d101        ..      BNE      0x80008d2 ; HAL_GPIO_Init + 230
        0x080008ce:    2700        .'      MOVS     r7,#0
        0x080008d0:    e02e        ..      B        0x8000930 ; HAL_GPIO_Init + 324
        0x080008d2:    4f31        1O      LDR      r7,[pc,#196] ; [0x8000998] = 0x40020400
        0x080008d4:    42b8        .B      CMP      r0,r7
        0x080008d6:    d101        ..      BNE      0x80008dc ; HAL_GPIO_Init + 240
        0x080008d8:    2701        .'      MOVS     r7,#1
        0x080008da:    e029        ).      B        0x8000930 ; HAL_GPIO_Init + 324
        0x080008dc:    4f2f        /O      LDR      r7,[pc,#188] ; [0x800099c] = 0x40020800
        0x080008de:    42b8        .B      CMP      r0,r7
        0x080008e0:    d102        ..      BNE      0x80008e8 ; HAL_GPIO_Init + 252
        0x080008e2:    2702        .'      MOVS     r7,#2
        0x080008e4:    e024        $.      B        0x8000930 ; HAL_GPIO_Init + 324
        0x080008e6:    e04a        J.      B        0x800097e ; HAL_GPIO_Init + 402
        0x080008e8:    4f2d        -O      LDR      r7,[pc,#180] ; [0x80009a0] = 0x40020c00
        0x080008ea:    42b8        .B      CMP      r0,r7
        0x080008ec:    d101        ..      BNE      0x80008f2 ; HAL_GPIO_Init + 262
        0x080008ee:    2703        .'      MOVS     r7,#3
        0x080008f0:    e01e        ..      B        0x8000930 ; HAL_GPIO_Init + 324
        0x080008f2:    4f2c        ,O      LDR      r7,[pc,#176] ; [0x80009a4] = 0x40021000
        0x080008f4:    42b8        .B      CMP      r0,r7
        0x080008f6:    d101        ..      BNE      0x80008fc ; HAL_GPIO_Init + 272
        0x080008f8:    2704        .'      MOVS     r7,#4
        0x080008fa:    e019        ..      B        0x8000930 ; HAL_GPIO_Init + 324
        0x080008fc:    4f2a        *O      LDR      r7,[pc,#168] ; [0x80009a8] = 0x40021400
        0x080008fe:    42b8        .B      CMP      r0,r7
        0x08000900:    d101        ..      BNE      0x8000906 ; HAL_GPIO_Init + 282
        0x08000902:    2705        .'      MOVS     r7,#5
        0x08000904:    e014        ..      B        0x8000930 ; HAL_GPIO_Init + 324
        0x08000906:    4f29        )O      LDR      r7,[pc,#164] ; [0x80009ac] = 0x40021800
        0x08000908:    42b8        .B      CMP      r0,r7
        0x0800090a:    d101        ..      BNE      0x8000910 ; HAL_GPIO_Init + 292
        0x0800090c:    2706        .'      MOVS     r7,#6
        0x0800090e:    e00f        ..      B        0x8000930 ; HAL_GPIO_Init + 324
        0x08000910:    4f27        'O      LDR      r7,[pc,#156] ; [0x80009b0] = 0x40021c00
        0x08000912:    42b8        .B      CMP      r0,r7
        0x08000914:    d101        ..      BNE      0x800091a ; HAL_GPIO_Init + 302
        0x08000916:    2707        .'      MOVS     r7,#7
        0x08000918:    e00a        ..      B        0x8000930 ; HAL_GPIO_Init + 324
        0x0800091a:    4f26        &O      LDR      r7,[pc,#152] ; [0x80009b4] = 0x40022000
        0x0800091c:    42b8        .B      CMP      r0,r7
        0x0800091e:    d101        ..      BNE      0x8000924 ; HAL_GPIO_Init + 312
        0x08000920:    2708        .'      MOVS     r7,#8
        0x08000922:    e005        ..      B        0x8000930 ; HAL_GPIO_Init + 324
        0x08000924:    4f24        $O      LDR      r7,[pc,#144] ; [0x80009b8] = 0x40022400
        0x08000926:    42b8        .B      CMP      r0,r7
        0x08000928:    d101        ..      BNE      0x800092e ; HAL_GPIO_Init + 322
        0x0800092a:    2709        .'      MOVS     r7,#9
        0x0800092c:    e000        ..      B        0x8000930 ; HAL_GPIO_Init + 324
        0x0800092e:    270a        .'      MOVS     r7,#0xa
        0x08000930:    40b7        .@      LSLS     r7,r7,r6
        0x08000932:    4327        'C      ORRS     r7,r7,r4
        0x08000934:    f8cc7808    ...x    STR      r7,[r12,#0x808]
        0x08000938:    4e20         N      LDR      r6,[pc,#128] ; [0x80009bc] = 0x40013c00
        0x0800093a:    6834        4h      LDR      r4,[r6,#0]
        0x0800093c:    684f        Oh      LDR      r7,[r1,#4]
        0x0800093e:    439c        .C      BICS     r4,r4,r3
        0x08000940:    03ff        ..      LSLS     r7,r7,#15
        0x08000942:    d500        ..      BPL      0x8000946 ; HAL_GPIO_Init + 346
        0x08000944:    431c        .C      ORRS     r4,r4,r3
        0x08000946:    6034        4`      STR      r4,[r6,#0]
        0x08000948:    4e1c        .N      LDR      r6,[pc,#112] ; [0x80009bc] = 0x40013c00
        0x0800094a:    1d36        6.      ADDS     r6,r6,#4
        0x0800094c:    6834        4h      LDR      r4,[r6,#0]
        0x0800094e:    684f        Oh      LDR      r7,[r1,#4]
        0x08000950:    439c        .C      BICS     r4,r4,r3
        0x08000952:    03bf        ..      LSLS     r7,r7,#14
        0x08000954:    d500        ..      BPL      0x8000958 ; HAL_GPIO_Init + 364
        0x08000956:    431c        .C      ORRS     r4,r4,r3
        0x08000958:    6034        4`      STR      r4,[r6,#0]
        0x0800095a:    4e18        .N      LDR      r6,[pc,#96] ; [0x80009bc] = 0x40013c00
        0x0800095c:    3608        .6      ADDS     r6,r6,#8
        0x0800095e:    6834        4h      LDR      r4,[r6,#0]
        0x08000960:    684f        Oh      LDR      r7,[r1,#4]
        0x08000962:    439c        .C      BICS     r4,r4,r3
        0x08000964:    02ff        ..      LSLS     r7,r7,#11
        0x08000966:    d500        ..      BPL      0x800096a ; HAL_GPIO_Init + 382
        0x08000968:    431c        .C      ORRS     r4,r4,r3
        0x0800096a:    6034        4`      STR      r4,[r6,#0]
        0x0800096c:    4e13        .N      LDR      r6,[pc,#76] ; [0x80009bc] = 0x40013c00
        0x0800096e:    360c        .6      ADDS     r6,r6,#0xc
        0x08000970:    6834        4h      LDR      r4,[r6,#0]
        0x08000972:    684f        Oh      LDR      r7,[r1,#4]
        0x08000974:    439c        .C      BICS     r4,r4,r3
        0x08000976:    02bf        ..      LSLS     r7,r7,#10
        0x08000978:    d500        ..      BPL      0x800097c ; HAL_GPIO_Init + 400
        0x0800097a:    431c        .C      ORRS     r4,r4,r3
        0x0800097c:    6034        4`      STR      r4,[r6,#0]
        0x0800097e:    1c52        R.      ADDS     r2,r2,#1
        0x08000980:    2a10        .*      CMP      r2,#0x10
        0x08000982:    f4ffaf3b    ..;.    BCC      0x80007fc ; HAL_GPIO_Init + 16
        0x08000986:    e8bd8ff8    ....    POP      {r3-r11,pc}
    $d
        0x0800098a:    0000        ..      DCW    0
        0x0800098c:    40023844    D8.@    DCD    1073887300
        0x08000990:    40013000    .0.@    DCD    1073819648
        0x08000994:    40020000    ...@    DCD    1073872896
        0x08000998:    40020400    ...@    DCD    1073873920
        0x0800099c:    40020800    ...@    DCD    1073874944
        0x080009a0:    40020c00    ...@    DCD    1073875968
        0x080009a4:    40021000    ...@    DCD    1073876992
        0x080009a8:    40021400    ...@    DCD    1073878016
        0x080009ac:    40021800    ...@    DCD    1073879040
        0x080009b0:    40021c00    ...@    DCD    1073880064
        0x080009b4:    40022000    . .@    DCD    1073881088
        0x080009b8:    40022400    .$.@    DCD    1073882112
        0x080009bc:    40013c00    .<.@    DCD    1073822720
    $t
    i.HAL_GPIO_WritePin
    HAL_GPIO_WritePin
        0x080009c0:    b10a        ..      CBZ      r2,0x80009c6 ; HAL_GPIO_WritePin + 6
        0x080009c2:    6181        .a      STR      r1,[r0,#0x18]
        0x080009c4:    4770        pG      BX       lr
        0x080009c6:    0409        ..      LSLS     r1,r1,#16
        0x080009c8:    e7fb        ..      B        0x80009c2 ; HAL_GPIO_WritePin + 2
        0x080009ca:    0000        ..      MOVS     r0,r0
    i.HAL_GetTick
    HAL_GetTick
        0x080009cc:    4801        .H      LDR      r0,[pc,#4] ; [0x80009d4] = 0x20000408
        0x080009ce:    6880        .h      LDR      r0,[r0,#8]
        0x080009d0:    4770        pG      BX       lr
    $d
        0x080009d2:    0000        ..      DCW    0
        0x080009d4:    20000408    ...     DCD    536871944
    $t
    i.HAL_IncTick
    HAL_IncTick
        0x080009d8:    4802        .H      LDR      r0,[pc,#8] ; [0x80009e4] = 0x20000408
        0x080009da:    6881        .h      LDR      r1,[r0,#8]
        0x080009dc:    7802        .x      LDRB     r2,[r0,#0]
        0x080009de:    4411        .D      ADD      r1,r1,r2
        0x080009e0:    6081        .`      STR      r1,[r0,#8]
        0x080009e2:    4770        pG      BX       lr
    $d
        0x080009e4:    20000408    ...     DCD    536871944
    $t
    i.HAL_Init
    HAL_Init
        0x080009e8:    480b        .H      LDR      r0,[pc,#44] ; [0x8000a18] = 0x40023c00
        0x080009ea:    b510        ..      PUSH     {r4,lr}
        0x080009ec:    6801        .h      LDR      r1,[r0,#0]
        0x080009ee:    f4417100    A..q    ORR      r1,r1,#0x200
        0x080009f2:    6001        .`      STR      r1,[r0,#0]
        0x080009f4:    6801        .h      LDR      r1,[r0,#0]
        0x080009f6:    f4416180    A..a    ORR      r1,r1,#0x400
        0x080009fa:    6001        .`      STR      r1,[r0,#0]
        0x080009fc:    6801        .h      LDR      r1,[r0,#0]
        0x080009fe:    f4417180    A..q    ORR      r1,r1,#0x100
        0x08000a02:    6001        .`      STR      r1,[r0,#0]
        0x08000a04:    2003        .       MOVS     r0,#3
        0x08000a06:    f000f861    ..a.    BL       HAL_NVIC_SetPriorityGrouping ; 0x8000acc
        0x08000a0a:    2000        .       MOVS     r0,#0
        0x08000a0c:    f000f806    ....    BL       HAL_InitTick ; 0x8000a1c
        0x08000a10:    f000f824    ..$.    BL       HAL_MspInit ; 0x8000a5c
        0x08000a14:    2000        .       MOVS     r0,#0
        0x08000a16:    bd10        ..      POP      {r4,pc}
    $d
        0x08000a18:    40023c00    .<.@    DCD    1073888256
    $t
    i.HAL_InitTick
    HAL_InitTick
        0x08000a1c:    b570        p.      PUSH     {r4-r6,lr}
        0x08000a1e:    4d0d        .M      LDR      r5,[pc,#52] ; [0x8000a54] = 0x20000408
        0x08000a20:    4604        .F      MOV      r4,r0
        0x08000a22:    f44f717a    O.zq    MOV      r1,#0x3e8
        0x08000a26:    7828        (x      LDRB     r0,[r5,#0]
        0x08000a28:    fbb1f0f0    ....    UDIV     r0,r1,r0
        0x08000a2c:    490a        .I      LDR      r1,[pc,#40] ; [0x8000a58] = 0x20000414
        0x08000a2e:    6809        .h      LDR      r1,[r1,#0]
        0x08000a30:    fbb1f0f0    ....    UDIV     r0,r1,r0
        0x08000a34:    f000fb2e    ....    BL       HAL_SYSTICK_Config ; 0x8001094
        0x08000a38:    b948        H.      CBNZ     r0,0x8000a4e ; HAL_InitTick + 50
        0x08000a3a:    2c10        .,      CMP      r4,#0x10
        0x08000a3c:    d207        ..      BCS      0x8000a4e ; HAL_InitTick + 50
        0x08000a3e:    2200        ."      MOVS     r2,#0
        0x08000a40:    4621        !F      MOV      r1,r4
        0x08000a42:    1e50        P.      SUBS     r0,r2,#1
        0x08000a44:    f000f822    ..".    BL       HAL_NVIC_SetPriority ; 0x8000a8c
        0x08000a48:    2000        .       MOVS     r0,#0
        0x08000a4a:    606c        l`      STR      r4,[r5,#4]
        0x08000a4c:    bd70        p.      POP      {r4-r6,pc}
        0x08000a4e:    2001        .       MOVS     r0,#1
        0x08000a50:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x08000a52:    0000        ..      DCW    0
        0x08000a54:    20000408    ...     DCD    536871944
        0x08000a58:    20000414    ...     DCD    536871956
    $t
    i.HAL_MspInit
    HAL_MspInit
        0x08000a5c:    480a        .H      LDR      r0,[pc,#40] ; [0x8000a88] = 0x40023844
        0x08000a5e:    b508        ..      PUSH     {r3,lr}
        0x08000a60:    6801        .h      LDR      r1,[r0,#0]
        0x08000a62:    f4414180    A..A    ORR      r1,r1,#0x4000
        0x08000a66:    6001        .`      STR      r1,[r0,#0]
        0x08000a68:    6800        .h      LDR      r0,[r0,#0]
        0x08000a6a:    f4004080    ...@    AND      r0,r0,#0x4000
        0x08000a6e:    9000        ..      STR      r0,[sp,#0]
        0x08000a70:    4805        .H      LDR      r0,[pc,#20] ; [0x8000a88] = 0x40023844
        0x08000a72:    1f00        ..      SUBS     r0,r0,#4
        0x08000a74:    6801        .h      LDR      r1,[r0,#0]
        0x08000a76:    f0415180    A..Q    ORR      r1,r1,#0x10000000
        0x08000a7a:    6001        .`      STR      r1,[r0,#0]
        0x08000a7c:    6800        .h      LDR      r0,[r0,#0]
        0x08000a7e:    f0005080    ...P    AND      r0,r0,#0x10000000
        0x08000a82:    9000        ..      STR      r0,[sp,#0]
        0x08000a84:    bd08        ..      POP      {r3,pc}
    $d
        0x08000a86:    0000        ..      DCW    0
        0x08000a88:    40023844    D8.@    DCD    1073887300
    $t
    i.HAL_NVIC_SetPriority
    HAL_NVIC_SetPriority
        0x08000a8c:    b4f0        ..      PUSH     {r4-r7}
        0x08000a8e:    4b0e        .K      LDR      r3,[pc,#56] ; [0x8000ac8] = 0xe000ed0c
        0x08000a90:    681b        .h      LDR      r3,[r3,#0]
        0x08000a92:    460c        .F      MOV      r4,r1
        0x08000a94:    f3c32302    ...#    UBFX     r3,r3,#8,#3
        0x08000a98:    f1c30507    ....    RSB      r5,r3,#7
        0x08000a9c:    2d04        .-      CMP      r5,#4
        0x08000a9e:    d900        ..      BLS      0x8000aa2 ; HAL_NVIC_SetPriority + 22
        0x08000aa0:    2504        .%      MOVS     r5,#4
        0x08000aa2:    1d19        ..      ADDS     r1,r3,#4
        0x08000aa4:    2907        .)      CMP      r1,#7
        0x08000aa6:    d201        ..      BCS      0x8000aac ; HAL_NVIC_SetPriority + 32
        0x08000aa8:    2300        .#      MOVS     r3,#0
        0x08000aaa:    e000        ..      B        0x8000aae ; HAL_NVIC_SetPriority + 34
        0x08000aac:    1edb        ..      SUBS     r3,r3,#3
        0x08000aae:    2601        .&      MOVS     r6,#1
        0x08000ab0:    fa06f105    ....    LSL      r1,r6,r5
        0x08000ab4:    1e49        I.      SUBS     r1,r1,#1
        0x08000ab6:    4021        !@      ANDS     r1,r1,r4
        0x08000ab8:    4099        .@      LSLS     r1,r1,r3
        0x08000aba:    409e        .@      LSLS     r6,r6,r3
        0x08000abc:    1e76        v.      SUBS     r6,r6,#1
        0x08000abe:    4016        .@      ANDS     r6,r6,r2
        0x08000ac0:    4331        1C      ORRS     r1,r1,r6
        0x08000ac2:    bcf0        ..      POP      {r4-r7}
        0x08000ac4:    f001b9f2    ....    B.W      __NVIC_SetPriority ; 0x8001eac
    $d
        0x08000ac8:    e000ed0c    ....    DCD    3758157068
    $t
    i.HAL_NVIC_SetPriorityGrouping
    HAL_NVIC_SetPriorityGrouping
        0x08000acc:    4906        .I      LDR      r1,[pc,#24] ; [0x8000ae8] = 0xe000ed0c
        0x08000ace:    f0000207    ....    AND      r2,r0,#7
        0x08000ad2:    6808        .h      LDR      r0,[r1,#0]
        0x08000ad4:    f64f03ff    O...    MOV      r3,#0xf8ff
        0x08000ad8:    4018        .@      ANDS     r0,r0,r3
        0x08000ada:    ea402002    @..     ORR      r0,r0,r2,LSL #8
        0x08000ade:    4a03        .J      LDR      r2,[pc,#12] ; [0x8000aec] = 0x5fa0000
        0x08000ae0:    4310        .C      ORRS     r0,r0,r2
        0x08000ae2:    6008        .`      STR      r0,[r1,#0]
        0x08000ae4:    4770        pG      BX       lr
    $d
        0x08000ae6:    0000        ..      DCW    0
        0x08000ae8:    e000ed0c    ....    DCD    3758157068
        0x08000aec:    05fa0000    ....    DCD    100270080
    $t
    i.HAL_PWREx_EnableOverDrive
    HAL_PWREx_EnableOverDrive
        0x08000af0:    e92d43f8    -..C    PUSH     {r3-r9,lr}
        0x08000af4:    4817        .H      LDR      r0,[pc,#92] ; [0x8000b54] = 0x40023840
        0x08000af6:    6801        .h      LDR      r1,[r0,#0]
        0x08000af8:    f0415180    A..Q    ORR      r1,r1,#0x10000000
        0x08000afc:    6001        .`      STR      r1,[r0,#0]
        0x08000afe:    6800        .h      LDR      r0,[r0,#0]
        0x08000b00:    4f15        .O      LDR      r7,[pc,#84] ; [0x8000b58] = 0x420e0000
        0x08000b02:    f0005080    ...P    AND      r0,r0,#0x10000000
        0x08000b06:    2601        .&      MOVS     r6,#1
        0x08000b08:    9000        ..      STR      r0,[sp,#0]
        0x08000b0a:    643e        >d      STR      r6,[r7,#0x40]
        0x08000b0c:    f7ffff5e    ..^.    BL       HAL_GetTick ; 0x80009cc
        0x08000b10:    4605        .F      MOV      r5,r0
        0x08000b12:    f44f787a    O.zx    MOV      r8,#0x3e8
        0x08000b16:    4c11        .L      LDR      r4,[pc,#68] ; [0x8000b5c] = 0x40007000
        0x08000b18:    e005        ..      B        0x8000b26 ; HAL_PWREx_EnableOverDrive + 54
        0x08000b1a:    bf00        ..      NOP      
        0x08000b1c:    f7ffff56    ..V.    BL       HAL_GetTick ; 0x80009cc
        0x08000b20:    1b40        @.      SUBS     r0,r0,r5
        0x08000b22:    4540        @E      CMP      r0,r8
        0x08000b24:    d80d        ..      BHI      0x8000b42 ; HAL_PWREx_EnableOverDrive + 82
        0x08000b26:    6860        `h      LDR      r0,[r4,#4]
        0x08000b28:    03c0        ..      LSLS     r0,r0,#15
        0x08000b2a:    d5f7        ..      BPL      0x8000b1c ; HAL_PWREx_EnableOverDrive + 44
        0x08000b2c:    647e        ~d      STR      r6,[r7,#0x44]
        0x08000b2e:    f7ffff4d    ..M.    BL       HAL_GetTick ; 0x80009cc
        0x08000b32:    4605        .F      MOV      r5,r0
        0x08000b34:    4646        FF      MOV      r6,r8
        0x08000b36:    e007        ..      B        0x8000b48 ; HAL_PWREx_EnableOverDrive + 88
        0x08000b38:    f7ffff48    ..H.    BL       HAL_GetTick ; 0x80009cc
        0x08000b3c:    1b40        @.      SUBS     r0,r0,r5
        0x08000b3e:    42b0        .B      CMP      r0,r6
        0x08000b40:    d902        ..      BLS      0x8000b48 ; HAL_PWREx_EnableOverDrive + 88
        0x08000b42:    2003        .       MOVS     r0,#3
        0x08000b44:    e8bd83f8    ....    POP      {r3-r9,pc}
        0x08000b48:    6860        `h      LDR      r0,[r4,#4]
        0x08000b4a:    0380        ..      LSLS     r0,r0,#14
        0x08000b4c:    d5f4        ..      BPL      0x8000b38 ; HAL_PWREx_EnableOverDrive + 72
        0x08000b4e:    2000        .       MOVS     r0,#0
        0x08000b50:    e7f8        ..      B        0x8000b44 ; HAL_PWREx_EnableOverDrive + 84
    $d
        0x08000b52:    0000        ..      DCW    0
        0x08000b54:    40023840    @8.@    DCD    1073887296
        0x08000b58:    420e0000    ...B    DCD    1108213760
        0x08000b5c:    40007000    .p.@    DCD    1073770496
    $t
    i.HAL_RCC_ClockConfig
    HAL_RCC_ClockConfig
        0x08000b60:    e92d47f0    -..G    PUSH     {r4-r10,lr}
        0x08000b64:    460e        .F      MOV      r6,r1
        0x08000b66:    0005        ..      MOVS     r5,r0
        0x08000b68:    d065        e.      BEQ      0x8000c36 ; HAL_RCC_ClockConfig + 214
        0x08000b6a:    f8df8114    ....    LDR      r8,[pc,#276] ; [0x8000c80] = 0x40023c00
        0x08000b6e:    f8d80000    ....    LDR      r0,[r8,#0]
        0x08000b72:    b2f7        ..      UXTB     r7,r6
        0x08000b74:    f000000f    ....    AND      r0,r0,#0xf
        0x08000b78:    42b0        .B      CMP      r0,r6
        0x08000b7a:    d207        ..      BCS      0x8000b8c ; HAL_RCC_ClockConfig + 44
        0x08000b7c:    f8887000    ...p    STRB     r7,[r8,#0]
        0x08000b80:    f8d80000    ....    LDR      r0,[r8,#0]
        0x08000b84:    f000000f    ....    AND      r0,r0,#0xf
        0x08000b88:    42b0        .B      CMP      r0,r6
        0x08000b8a:    d154        T.      BNE      0x8000c36 ; HAL_RCC_ClockConfig + 214
        0x08000b8c:    6828        (h      LDR      r0,[r5,#0]
        0x08000b8e:    4c3d        =L      LDR      r4,[pc,#244] ; [0x8000c84] = 0x40023808
        0x08000b90:    0781        ..      LSLS     r1,r0,#30
        0x08000b92:    d512        ..      BPL      0x8000bba ; HAL_RCC_ClockConfig + 90
        0x08000b94:    0740        @.      LSLS     r0,r0,#29
        0x08000b96:    d503        ..      BPL      0x8000ba0 ; HAL_RCC_ClockConfig + 64
        0x08000b98:    6820         h      LDR      r0,[r4,#0]
        0x08000b9a:    f44050e0    @..P    ORR      r0,r0,#0x1c00
        0x08000b9e:    6020         `      STR      r0,[r4,#0]
        0x08000ba0:    7828        (x      LDRB     r0,[r5,#0]
        0x08000ba2:    0700        ..      LSLS     r0,r0,#28
        0x08000ba4:    d503        ..      BPL      0x8000bae ; HAL_RCC_ClockConfig + 78
        0x08000ba6:    6820         h      LDR      r0,[r4,#0]
        0x08000ba8:    f4404060    @.`@    ORR      r0,r0,#0xe000
        0x08000bac:    6020         `      STR      r0,[r4,#0]
        0x08000bae:    6820         h      LDR      r0,[r4,#0]
        0x08000bb0:    68a9        .h      LDR      r1,[r5,#8]
        0x08000bb2:    f02000f0     ...    BIC      r0,r0,#0xf0
        0x08000bb6:    4308        .C      ORRS     r0,r0,r1
        0x08000bb8:    6020         `      STR      r0,[r4,#0]
        0x08000bba:    7828        (x      LDRB     r0,[r5,#0]
        0x08000bbc:    07c0        ..      LSLS     r0,r0,#31
        0x08000bbe:    d02d        -.      BEQ      0x8000c1c ; HAL_RCC_ClockConfig + 188
        0x08000bc0:    4930        0I      LDR      r1,[pc,#192] ; [0x8000c84] = 0x40023808
        0x08000bc2:    6868        hh      LDR      r0,[r5,#4]
        0x08000bc4:    3908        .9      SUBS     r1,r1,#8
        0x08000bc6:    2801        .(      CMP      r0,#1
        0x08000bc8:    d012        ..      BEQ      0x8000bf0 ; HAL_RCC_ClockConfig + 144
        0x08000bca:    2802        .(      CMP      r0,#2
        0x08000bcc:    d013        ..      BEQ      0x8000bf6 ; HAL_RCC_ClockConfig + 150
        0x08000bce:    2803        .(      CMP      r0,#3
        0x08000bd0:    d011        ..      BEQ      0x8000bf6 ; HAL_RCC_ClockConfig + 150
        0x08000bd2:    6809        .h      LDR      r1,[r1,#0]
        0x08000bd4:    0789        ..      LSLS     r1,r1,#30
        0x08000bd6:    2900        .)      CMP      r1,#0
        0x08000bd8:    da2d        -.      BGE      0x8000c36 ; HAL_RCC_ClockConfig + 214
        0x08000bda:    6821        !h      LDR      r1,[r4,#0]
        0x08000bdc:    f0210103    !...    BIC      r1,r1,#3
        0x08000be0:    4301        .C      ORRS     r1,r1,r0
        0x08000be2:    6021        !`      STR      r1,[r4,#0]
        0x08000be4:    f7fffef2    ....    BL       HAL_GetTick ; 0x80009cc
        0x08000be8:    4681        .F      MOV      r9,r0
        0x08000bea:    f2413a88    A..:    MOV      r10,#0x1388
        0x08000bee:    e00e        ..      B        0x8000c0e ; HAL_RCC_ClockConfig + 174
        0x08000bf0:    6809        .h      LDR      r1,[r1,#0]
        0x08000bf2:    0389        ..      LSLS     r1,r1,#14
        0x08000bf4:    e7ef        ..      B        0x8000bd6 ; HAL_RCC_ClockConfig + 118
        0x08000bf6:    6809        .h      LDR      r1,[r1,#0]
        0x08000bf8:    0189        ..      LSLS     r1,r1,#6
        0x08000bfa:    e7ec        ..      B        0x8000bd6 ; HAL_RCC_ClockConfig + 118
        0x08000bfc:    f7fffee6    ....    BL       HAL_GetTick ; 0x80009cc
        0x08000c00:    eba00109    ....    SUB      r1,r0,r9
        0x08000c04:    4551        QE      CMP      r1,r10
        0x08000c06:    d902        ..      BLS      0x8000c0e ; HAL_RCC_ClockConfig + 174
        0x08000c08:    2003        .       MOVS     r0,#3
        0x08000c0a:    e8bd87f0    ....    POP      {r4-r10,pc}
        0x08000c0e:    6820         h      LDR      r0,[r4,#0]
        0x08000c10:    6869        ih      LDR      r1,[r5,#4]
        0x08000c12:    f000000c    ....    AND      r0,r0,#0xc
        0x08000c16:    ebb00f81    ....    CMP      r0,r1,LSL #2
        0x08000c1a:    d1ef        ..      BNE      0x8000bfc ; HAL_RCC_ClockConfig + 156
        0x08000c1c:    f8d81000    ....    LDR      r1,[r8,#0]
        0x08000c20:    4640        @F      MOV      r0,r8
        0x08000c22:    f001010f    ....    AND      r1,r1,#0xf
        0x08000c26:    42b1        .B      CMP      r1,r6
        0x08000c28:    d907        ..      BLS      0x8000c3a ; HAL_RCC_ClockConfig + 218
        0x08000c2a:    7007        .p      STRB     r7,[r0,#0]
        0x08000c2c:    6800        .h      LDR      r0,[r0,#0]
        0x08000c2e:    f000000f    ....    AND      r0,r0,#0xf
        0x08000c32:    42b0        .B      CMP      r0,r6
        0x08000c34:    d001        ..      BEQ      0x8000c3a ; HAL_RCC_ClockConfig + 218
        0x08000c36:    2001        .       MOVS     r0,#1
        0x08000c38:    e7e7        ..      B        0x8000c0a ; HAL_RCC_ClockConfig + 170
        0x08000c3a:    7828        (x      LDRB     r0,[r5,#0]
        0x08000c3c:    0740        @.      LSLS     r0,r0,#29
        0x08000c3e:    d505        ..      BPL      0x8000c4c ; HAL_RCC_ClockConfig + 236
        0x08000c40:    6820         h      LDR      r0,[r4,#0]
        0x08000c42:    68e9        .h      LDR      r1,[r5,#0xc]
        0x08000c44:    f42050e0     ..P    BIC      r0,r0,#0x1c00
        0x08000c48:    4308        .C      ORRS     r0,r0,r1
        0x08000c4a:    6020         `      STR      r0,[r4,#0]
        0x08000c4c:    7828        (x      LDRB     r0,[r5,#0]
        0x08000c4e:    0700        ..      LSLS     r0,r0,#28
        0x08000c50:    d506        ..      BPL      0x8000c60 ; HAL_RCC_ClockConfig + 256
        0x08000c52:    6820         h      LDR      r0,[r4,#0]
        0x08000c54:    6929        )i      LDR      r1,[r5,#0x10]
        0x08000c56:    f4204060     .`@    BIC      r0,r0,#0xe000
        0x08000c5a:    ea4000c1    @...    ORR      r0,r0,r1,LSL #3
        0x08000c5e:    6020         `      STR      r0,[r4,#0]
        0x08000c60:    f000f838    ..8.    BL       HAL_RCC_GetSysClockFreq ; 0x8000cd4
        0x08000c64:    6821        !h      LDR      r1,[r4,#0]
        0x08000c66:    4a08        .J      LDR      r2,[pc,#32] ; [0x8000c88] = 0x8002324
        0x08000c68:    f3c11103    ....    UBFX     r1,r1,#4,#4
        0x08000c6c:    5c51        Q\      LDRB     r1,[r2,r1]
        0x08000c6e:    40c8        .@      LSRS     r0,r0,r1
        0x08000c70:    4906        .I      LDR      r1,[pc,#24] ; [0x8000c8c] = 0x20000414
        0x08000c72:    6008        .`      STR      r0,[r1,#0]
        0x08000c74:    4806        .H      LDR      r0,[pc,#24] ; [0x8000c90] = 0x2000040c
        0x08000c76:    6800        .h      LDR      r0,[r0,#0]
        0x08000c78:    f7fffed0    ....    BL       HAL_InitTick ; 0x8000a1c
        0x08000c7c:    2000        .       MOVS     r0,#0
        0x08000c7e:    e7c4        ..      B        0x8000c0a ; HAL_RCC_ClockConfig + 170
    $d
        0x08000c80:    40023c00    .<.@    DCD    1073888256
        0x08000c84:    40023808    .8.@    DCD    1073887240
        0x08000c88:    08002324    $#..    DCD    134226724
        0x08000c8c:    20000414    ...     DCD    536871956
        0x08000c90:    2000040c    ...     DCD    536871948
    $t
    i.HAL_RCC_GetPCLK1Freq
    HAL_RCC_GetPCLK1Freq
        0x08000c94:    4804        .H      LDR      r0,[pc,#16] ; [0x8000ca8] = 0x20000414
        0x08000c96:    4905        .I      LDR      r1,[pc,#20] ; [0x8000cac] = 0x40023808
        0x08000c98:    6800        .h      LDR      r0,[r0,#0]
        0x08000c9a:    6809        .h      LDR      r1,[r1,#0]
        0x08000c9c:    4a04        .J      LDR      r2,[pc,#16] ; [0x8000cb0] = 0x8002334
        0x08000c9e:    f3c12182    ...!    UBFX     r1,r1,#10,#3
        0x08000ca2:    5c51        Q\      LDRB     r1,[r2,r1]
        0x08000ca4:    40c8        .@      LSRS     r0,r0,r1
        0x08000ca6:    4770        pG      BX       lr
    $d
        0x08000ca8:    20000414    ...     DCD    536871956
        0x08000cac:    40023808    .8.@    DCD    1073887240
        0x08000cb0:    08002334    4#..    DCD    134226740
    $t
    i.HAL_RCC_GetPCLK2Freq
    HAL_RCC_GetPCLK2Freq
        0x08000cb4:    4804        .H      LDR      r0,[pc,#16] ; [0x8000cc8] = 0x20000414
        0x08000cb6:    4905        .I      LDR      r1,[pc,#20] ; [0x8000ccc] = 0x40023808
        0x08000cb8:    6800        .h      LDR      r0,[r0,#0]
        0x08000cba:    6809        .h      LDR      r1,[r1,#0]
        0x08000cbc:    4a04        .J      LDR      r2,[pc,#16] ; [0x8000cd0] = 0x8002334
        0x08000cbe:    f3c13142    ..B1    UBFX     r1,r1,#13,#3
        0x08000cc2:    5c51        Q\      LDRB     r1,[r2,r1]
        0x08000cc4:    40c8        .@      LSRS     r0,r0,r1
        0x08000cc6:    4770        pG      BX       lr
    $d
        0x08000cc8:    20000414    ...     DCD    536871956
        0x08000ccc:    40023808    .8.@    DCD    1073887240
        0x08000cd0:    08002334    4#..    DCD    134226740
    $t
    i.HAL_RCC_GetSysClockFreq
    HAL_RCC_GetSysClockFreq
        0x08000cd4:    4815        .H      LDR      r0,[pc,#84] ; [0x8000d2c] = 0x40023808
        0x08000cd6:    b510        ..      PUSH     {r4,lr}
        0x08000cd8:    6800        .h      LDR      r0,[r0,#0]
        0x08000cda:    f010020c    ....    ANDS     r2,r0,#0xc
        0x08000cde:    4814        .H      LDR      r0,[pc,#80] ; [0x8000d30] = 0xf42400
        0x08000ce0:    d013        ..      BEQ      0x8000d0a ; HAL_RCC_GetSysClockFreq + 54
        0x08000ce2:    4914        .I      LDR      r1,[pc,#80] ; [0x8000d34] = 0x1312d00
        0x08000ce4:    2a04        .*      CMP      r2,#4
        0x08000ce6:    d00f        ..      BEQ      0x8000d08 ; HAL_RCC_GetSysClockFreq + 52
        0x08000ce8:    2a08        .*      CMP      r2,#8
        0x08000cea:    d10e        ..      BNE      0x8000d0a ; HAL_RCC_GetSysClockFreq + 54
        0x08000cec:    4c0f        .L      LDR      r4,[pc,#60] ; [0x8000d2c] = 0x40023808
        0x08000cee:    1f24        $.      SUBS     r4,r4,#4
        0x08000cf0:    6822        "h      LDR      r2,[r4,#0]
        0x08000cf2:    6823        #h      LDR      r3,[r4,#0]
        0x08000cf4:    f002023f    ..?.    AND      r2,r2,#0x3f
        0x08000cf8:    025b        [.      LSLS     r3,r3,#9
        0x08000cfa:    d507        ..      BPL      0x8000d0c ; HAL_RCC_GetSysClockFreq + 56
        0x08000cfc:    6820         h      LDR      r0,[r4,#0]
        0x08000cfe:    f3c01088    ....    UBFX     r0,r0,#6,#9
        0x08000d02:    fba00101    ....    UMULL    r0,r1,r0,r1
        0x08000d06:    e006        ..      B        0x8000d16 ; HAL_RCC_GetSysClockFreq + 66
        0x08000d08:    4608        .F      MOV      r0,r1
        0x08000d0a:    bd10        ..      POP      {r4,pc}
        0x08000d0c:    6821        !h      LDR      r1,[r4,#0]
        0x08000d0e:    f3c11188    ....    UBFX     r1,r1,#6,#9
        0x08000d12:    fba10100    ....    UMULL    r0,r1,r1,r0
        0x08000d16:    2300        .#      MOVS     r3,#0
        0x08000d18:    f7fffa64    ..d.    BL       __aeabi_uldivmod ; 0x80001e4
        0x08000d1c:    6821        !h      LDR      r1,[r4,#0]
        0x08000d1e:    f3c14101    ...A    UBFX     r1,r1,#16,#2
        0x08000d22:    1c49        I.      ADDS     r1,r1,#1
        0x08000d24:    0049        I.      LSLS     r1,r1,#1
        0x08000d26:    fbb0f0f1    ....    UDIV     r0,r0,r1
        0x08000d2a:    bd10        ..      POP      {r4,pc}
    $d
        0x08000d2c:    40023808    .8.@    DCD    1073887240
        0x08000d30:    00f42400    .$..    DCD    16000000
        0x08000d34:    01312d00    .-1.    DCD    20000000
    $t
    i.HAL_RCC_OscConfig
    HAL_RCC_OscConfig
        0x08000d38:    e92d4ff8    -..O    PUSH     {r3-r11,lr}
        0x08000d3c:    0004        ..      MOVS     r4,r0
        0x08000d3e:    d076        v.      BEQ      0x8000e2e ; HAL_RCC_OscConfig + 246
        0x08000d40:    7820         x      LDRB     r0,[r4,#0]
        0x08000d42:    f8dfa338    ..8.    LDR      r10,[pc,#824] ; [0x800107c] = 0x40023808
        0x08000d46:    4dce        .M      LDR      r5,[pc,#824] ; [0x8001080] = 0x40023800
        0x08000d48:    07c0        ..      LSLS     r0,r0,#31
        0x08000d4a:    d049        I.      BEQ      0x8000de0 ; HAL_RCC_OscConfig + 168
        0x08000d4c:    f8da1000    ....    LDR      r1,[r10,#0]
        0x08000d50:    4650        PF      MOV      r0,r10
        0x08000d52:    f3c10181    ....    UBFX     r1,r1,#2,#2
        0x08000d56:    2901        .)      CMP      r1,#1
        0x08000d58:    d008        ..      BEQ      0x8000d6c ; HAL_RCC_OscConfig + 52
        0x08000d5a:    6800        .h      LDR      r0,[r0,#0]
        0x08000d5c:    f3c00081    ....    UBFX     r0,r0,#2,#2
        0x08000d60:    2802        .(      CMP      r0,#2
        0x08000d62:    d10a        ..      BNE      0x8000d7a ; HAL_RCC_OscConfig + 66
        0x08000d64:    1d28        (.      ADDS     r0,r5,#4
        0x08000d66:    6800        .h      LDR      r0,[r0,#0]
        0x08000d68:    0240        @.      LSLS     r0,r0,#9
        0x08000d6a:    d506        ..      BPL      0x8000d7a ; HAL_RCC_OscConfig + 66
        0x08000d6c:    6828        (h      LDR      r0,[r5,#0]
        0x08000d6e:    0380        ..      LSLS     r0,r0,#14
        0x08000d70:    d536        6.      BPL      0x8000de0 ; HAL_RCC_OscConfig + 168
        0x08000d72:    6860        `h      LDR      r0,[r4,#4]
        0x08000d74:    2800        .(      CMP      r0,#0
        0x08000d76:    d0e2        ..      BEQ      0x8000d3e ; HAL_RCC_OscConfig + 6
        0x08000d78:    e032        2.      B        0x8000de0 ; HAL_RCC_OscConfig + 168
        0x08000d7a:    6860        `h      LDR      r0,[r4,#4]
        0x08000d7c:    f5b03f80    ...?    CMP      r0,#0x10000
        0x08000d80:    d010        ..      BEQ      0x8000da4 ; HAL_RCC_OscConfig + 108
        0x08000d82:    f5b02fa0    .../    CMP      r0,#0x50000
        0x08000d86:    6828        (h      LDR      r0,[r5,#0]
        0x08000d88:    d010        ..      BEQ      0x8000dac ; HAL_RCC_OscConfig + 116
        0x08000d8a:    f4203080     ..0    BIC      r0,r0,#0x10000
        0x08000d8e:    6028        (`      STR      r0,[r5,#0]
        0x08000d90:    6828        (h      LDR      r0,[r5,#0]
        0x08000d92:    f4202080     ..     BIC      r0,r0,#0x40000
        0x08000d96:    6028        (`      STR      r0,[r5,#0]
        0x08000d98:    6860        `h      LDR      r0,[r4,#4]
        0x08000d9a:    b1a0        ..      CBZ      r0,0x8000dc6 ; HAL_RCC_OscConfig + 142
        0x08000d9c:    f7fffe16    ....    BL       HAL_GetTick ; 0x80009cc
        0x08000da0:    4606        .F      MOV      r6,r0
        0x08000da2:    e00c        ..      B        0x8000dbe ; HAL_RCC_OscConfig + 134
        0x08000da4:    6828        (h      LDR      r0,[r5,#0]
        0x08000da6:    f4403080    @..0    ORR      r0,r0,#0x10000
        0x08000daa:    e7f4        ..      B        0x8000d96 ; HAL_RCC_OscConfig + 94
        0x08000dac:    f4402080    @..     ORR      r0,r0,#0x40000
        0x08000db0:    6028        (`      STR      r0,[r5,#0]
        0x08000db2:    e7f7        ..      B        0x8000da4 ; HAL_RCC_OscConfig + 108
        0x08000db4:    f7fffe0a    ....    BL       HAL_GetTick ; 0x80009cc
        0x08000db8:    1b80        ..      SUBS     r0,r0,r6
        0x08000dba:    2864        d(      CMP      r0,#0x64
        0x08000dbc:    d873        s.      BHI      0x8000ea6 ; HAL_RCC_OscConfig + 366
        0x08000dbe:    6828        (h      LDR      r0,[r5,#0]
        0x08000dc0:    0380        ..      LSLS     r0,r0,#14
        0x08000dc2:    d5f7        ..      BPL      0x8000db4 ; HAL_RCC_OscConfig + 124
        0x08000dc4:    e00c        ..      B        0x8000de0 ; HAL_RCC_OscConfig + 168
        0x08000dc6:    f7fffe01    ....    BL       HAL_GetTick ; 0x80009cc
        0x08000dca:    4606        .F      MOV      r6,r0
        0x08000dcc:    e005        ..      B        0x8000dda ; HAL_RCC_OscConfig + 162
        0x08000dce:    bf00        ..      NOP      
        0x08000dd0:    f7fffdfc    ....    BL       HAL_GetTick ; 0x80009cc
        0x08000dd4:    1b80        ..      SUBS     r0,r0,r6
        0x08000dd6:    2864        d(      CMP      r0,#0x64
        0x08000dd8:    d8f0        ..      BHI      0x8000dbc ; HAL_RCC_OscConfig + 132
        0x08000dda:    6828        (h      LDR      r0,[r5,#0]
        0x08000ddc:    0380        ..      LSLS     r0,r0,#14
        0x08000dde:    d4f7        ..      BMI      0x8000dd0 ; HAL_RCC_OscConfig + 152
        0x08000de0:    7820         x      LDRB     r0,[r4,#0]
        0x08000de2:    f8df82a0    ....    LDR      r8,[pc,#672] ; [0x8001084] = 0x42470000
        0x08000de6:    0780        ..      LSLS     r0,r0,#30
        0x08000de8:    f04f0900    O...    MOV      r9,#0
        0x08000dec:    d53e        >.      BPL      0x8000e6c ; HAL_RCC_OscConfig + 308
        0x08000dee:    f8da1000    ....    LDR      r1,[r10,#0]
        0x08000df2:    4650        PF      MOV      r0,r10
        0x08000df4:    f0110f0c    ....    TST      r1,#0xc
        0x08000df8:    d009        ..      BEQ      0x8000e0e ; HAL_RCC_OscConfig + 214
        0x08000dfa:    6800        .h      LDR      r0,[r0,#0]
        0x08000dfc:    f3c00081    ....    UBFX     r0,r0,#2,#2
        0x08000e00:    2802        .(      CMP      r0,#2
        0x08000e02:    d10b        ..      BNE      0x8000e1c ; HAL_RCC_OscConfig + 228
        0x08000e04:    489d        .H      LDR      r0,[pc,#628] ; [0x800107c] = 0x40023808
        0x08000e06:    1f00        ..      SUBS     r0,r0,#4
        0x08000e08:    6800        .h      LDR      r0,[r0,#0]
        0x08000e0a:    0240        @.      LSLS     r0,r0,#9
        0x08000e0c:    d406        ..      BMI      0x8000e1c ; HAL_RCC_OscConfig + 228
        0x08000e0e:    6828        (h      LDR      r0,[r5,#0]
        0x08000e10:    0780        ..      LSLS     r0,r0,#30
        0x08000e12:    d515        ..      BPL      0x8000e40 ; HAL_RCC_OscConfig + 264
        0x08000e14:    68e0        .h      LDR      r0,[r4,#0xc]
        0x08000e16:    2801        .(      CMP      r0,#1
        0x08000e18:    d109        ..      BNE      0x8000e2e ; HAL_RCC_OscConfig + 246
        0x08000e1a:    e011        ..      B        0x8000e40 ; HAL_RCC_OscConfig + 264
        0x08000e1c:    68e0        .h      LDR      r0,[r4,#0xc]
        0x08000e1e:    b1b8        ..      CBZ      r0,0x8000e50 ; HAL_RCC_OscConfig + 280
        0x08000e20:    2001        .       MOVS     r0,#1
        0x08000e22:    f8c80000    ....    STR      r0,[r8,#0]
        0x08000e26:    f7fffdd1    ....    BL       HAL_GetTick ; 0x80009cc
        0x08000e2a:    4606        .F      MOV      r6,r0
        0x08000e2c:    e005        ..      B        0x8000e3a ; HAL_RCC_OscConfig + 258
        0x08000e2e:    e120         .      B        0x8001072 ; HAL_RCC_OscConfig + 826
        0x08000e30:    f7fffdcc    ....    BL       HAL_GetTick ; 0x80009cc
        0x08000e34:    1b80        ..      SUBS     r0,r0,r6
        0x08000e36:    2802        .(      CMP      r0,#2
        0x08000e38:    d8c0        ..      BHI      0x8000dbc ; HAL_RCC_OscConfig + 132
        0x08000e3a:    6828        (h      LDR      r0,[r5,#0]
        0x08000e3c:    0780        ..      LSLS     r0,r0,#30
        0x08000e3e:    d5f7        ..      BPL      0x8000e30 ; HAL_RCC_OscConfig + 248
        0x08000e40:    6828        (h      LDR      r0,[r5,#0]
        0x08000e42:    6921        !i      LDR      r1,[r4,#0x10]
        0x08000e44:    f02000f8     ...    BIC      r0,r0,#0xf8
        0x08000e48:    ea4000c1    @...    ORR      r0,r0,r1,LSL #3
        0x08000e4c:    6028        (`      STR      r0,[r5,#0]
        0x08000e4e:    e00d        ..      B        0x8000e6c ; HAL_RCC_OscConfig + 308
        0x08000e50:    f8c89000    ....    STR      r9,[r8,#0]
        0x08000e54:    f7fffdba    ....    BL       HAL_GetTick ; 0x80009cc
        0x08000e58:    4606        .F      MOV      r6,r0
        0x08000e5a:    e004        ..      B        0x8000e66 ; HAL_RCC_OscConfig + 302
        0x08000e5c:    f7fffdb6    ....    BL       HAL_GetTick ; 0x80009cc
        0x08000e60:    1b80        ..      SUBS     r0,r0,r6
        0x08000e62:    2802        .(      CMP      r0,#2
        0x08000e64:    d81f        ..      BHI      0x8000ea6 ; HAL_RCC_OscConfig + 366
        0x08000e66:    6828        (h      LDR      r0,[r5,#0]
        0x08000e68:    0780        ..      LSLS     r0,r0,#30
        0x08000e6a:    d4f7        ..      BMI      0x8000e5c ; HAL_RCC_OscConfig + 292
        0x08000e6c:    7820         x      LDRB     r0,[r4,#0]
        0x08000e6e:    0700        ..      LSLS     r0,r0,#28
        0x08000e70:    d522        ".      BPL      0x8000eb8 ; HAL_RCC_OscConfig + 384
        0x08000e72:    4e82        .N      LDR      r6,[pc,#520] ; [0x800107c] = 0x40023808
        0x08000e74:    4884        .H      LDR      r0,[pc,#528] ; [0x8001088] = 0x42470e80
        0x08000e76:    6961        ai      LDR      r1,[r4,#0x14]
        0x08000e78:    366c        l6      ADDS     r6,r6,#0x6c
        0x08000e7a:    b171        q.      CBZ      r1,0x8000e9a ; HAL_RCC_OscConfig + 354
        0x08000e7c:    2101        .!      MOVS     r1,#1
        0x08000e7e:    6001        .`      STR      r1,[r0,#0]
        0x08000e80:    f7fffda4    ....    BL       HAL_GetTick ; 0x80009cc
        0x08000e84:    4607        .F      MOV      r7,r0
        0x08000e86:    e004        ..      B        0x8000e92 ; HAL_RCC_OscConfig + 346
        0x08000e88:    f7fffda0    ....    BL       HAL_GetTick ; 0x80009cc
        0x08000e8c:    1bc0        ..      SUBS     r0,r0,r7
        0x08000e8e:    2802        .(      CMP      r0,#2
        0x08000e90:    d809        ..      BHI      0x8000ea6 ; HAL_RCC_OscConfig + 366
        0x08000e92:    6830        0h      LDR      r0,[r6,#0]
        0x08000e94:    0780        ..      LSLS     r0,r0,#30
        0x08000e96:    d5f7        ..      BPL      0x8000e88 ; HAL_RCC_OscConfig + 336
        0x08000e98:    e00e        ..      B        0x8000eb8 ; HAL_RCC_OscConfig + 384
        0x08000e9a:    f8c09000    ....    STR      r9,[r0,#0]
        0x08000e9e:    f7fffd95    ....    BL       HAL_GetTick ; 0x80009cc
        0x08000ea2:    4607        .F      MOV      r7,r0
        0x08000ea4:    e005        ..      B        0x8000eb2 ; HAL_RCC_OscConfig + 378
        0x08000ea6:    e082        ..      B        0x8000fae ; HAL_RCC_OscConfig + 630
        0x08000ea8:    f7fffd90    ....    BL       HAL_GetTick ; 0x80009cc
        0x08000eac:    1bc0        ..      SUBS     r0,r0,r7
        0x08000eae:    2802        .(      CMP      r0,#2
        0x08000eb0:    d87d        }.      BHI      0x8000fae ; HAL_RCC_OscConfig + 630
        0x08000eb2:    6830        0h      LDR      r0,[r6,#0]
        0x08000eb4:    0780        ..      LSLS     r0,r0,#30
        0x08000eb6:    d4f7        ..      BMI      0x8000ea8 ; HAL_RCC_OscConfig + 368
        0x08000eb8:    7820         x      LDRB     r0,[r4,#0]
        0x08000eba:    0740        @.      LSLS     r0,r0,#29
        0x08000ebc:    d568        h.      BPL      0x8000f90 ; HAL_RCC_OscConfig + 600
        0x08000ebe:    f8dfb1bc    ....    LDR      r11,[pc,#444] ; [0x800107c] = 0x40023808
        0x08000ec2:    2700        .'      MOVS     r7,#0
        0x08000ec4:    f10b0b38    ..8.    ADD      r11,r11,#0x38
        0x08000ec8:    f8db0000    ....    LDR      r0,[r11,#0]
        0x08000ecc:    00c0        ..      LSLS     r0,r0,#3
        0x08000ece:    d40b        ..      BMI      0x8000ee8 ; HAL_RCC_OscConfig + 432
        0x08000ed0:    f8db1000    ....    LDR      r1,[r11,#0]
        0x08000ed4:    f0415180    A..Q    ORR      r1,r1,#0x10000000
        0x08000ed8:    f8cb1000    ....    STR      r1,[r11,#0]
        0x08000edc:    f8db0000    ....    LDR      r0,[r11,#0]
        0x08000ee0:    2701        .'      MOVS     r7,#1
        0x08000ee2:    f0005080    ...P    AND      r0,r0,#0x10000000
        0x08000ee6:    9000        ..      STR      r0,[sp,#0]
        0x08000ee8:    4e68        hN      LDR      r6,[pc,#416] ; [0x800108c] = 0x40007000
        0x08000eea:    6830        0h      LDR      r0,[r6,#0]
        0x08000eec:    05c0        ..      LSLS     r0,r0,#23
        0x08000eee:    d410        ..      BMI      0x8000f12 ; HAL_RCC_OscConfig + 474
        0x08000ef0:    6830        0h      LDR      r0,[r6,#0]
        0x08000ef2:    f4407080    @..p    ORR      r0,r0,#0x100
        0x08000ef6:    6030        0`      STR      r0,[r6,#0]
        0x08000ef8:    f7fffd68    ..h.    BL       HAL_GetTick ; 0x80009cc
        0x08000efc:    9000        ..      STR      r0,[sp,#0]
        0x08000efe:    e005        ..      B        0x8000f0c ; HAL_RCC_OscConfig + 468
        0x08000f00:    f7fffd64    ..d.    BL       HAL_GetTick ; 0x80009cc
        0x08000f04:    9900        ..      LDR      r1,[sp,#0]
        0x08000f06:    1a40        @.      SUBS     r0,r0,r1
        0x08000f08:    2802        .(      CMP      r0,#2
        0x08000f0a:    d850        P.      BHI      0x8000fae ; HAL_RCC_OscConfig + 630
        0x08000f0c:    6830        0h      LDR      r0,[r6,#0]
        0x08000f0e:    05c0        ..      LSLS     r0,r0,#23
        0x08000f10:    d5f6        ..      BPL      0x8000f00 ; HAL_RCC_OscConfig + 456
        0x08000f12:    4e5a        ZN      LDR      r6,[pc,#360] ; [0x800107c] = 0x40023808
        0x08000f14:    68a0        .h      LDR      r0,[r4,#8]
        0x08000f16:    3668        h6      ADDS     r6,r6,#0x68
        0x08000f18:    2801        .(      CMP      r0,#1
        0x08000f1a:    d00f        ..      BEQ      0x8000f3c ; HAL_RCC_OscConfig + 516
        0x08000f1c:    2805        .(      CMP      r0,#5
        0x08000f1e:    6830        0h      LDR      r0,[r6,#0]
        0x08000f20:    d010        ..      BEQ      0x8000f44 ; HAL_RCC_OscConfig + 524
        0x08000f22:    f0200001     ...    BIC      r0,r0,#1
        0x08000f26:    6030        0`      STR      r0,[r6,#0]
        0x08000f28:    6830        0h      LDR      r0,[r6,#0]
        0x08000f2a:    f0200004     ...    BIC      r0,r0,#4
        0x08000f2e:    6030        0`      STR      r0,[r6,#0]
        0x08000f30:    68a0        .h      LDR      r0,[r4,#8]
        0x08000f32:    b1b8        ..      CBZ      r0,0x8000f64 ; HAL_RCC_OscConfig + 556
        0x08000f34:    f7fffd4a    ..J.    BL       HAL_GetTick ; 0x80009cc
        0x08000f38:    9000        ..      STR      r0,[sp,#0]
        0x08000f3a:    e00f        ..      B        0x8000f5c ; HAL_RCC_OscConfig + 548
        0x08000f3c:    6830        0h      LDR      r0,[r6,#0]
        0x08000f3e:    f0400001    @...    ORR      r0,r0,#1
        0x08000f42:    e7f4        ..      B        0x8000f2e ; HAL_RCC_OscConfig + 502
        0x08000f44:    f0400004    @...    ORR      r0,r0,#4
        0x08000f48:    6030        0`      STR      r0,[r6,#0]
        0x08000f4a:    e7f7        ..      B        0x8000f3c ; HAL_RCC_OscConfig + 516
        0x08000f4c:    f7fffd3e    ..>.    BL       HAL_GetTick ; 0x80009cc
        0x08000f50:    9900        ..      LDR      r1,[sp,#0]
        0x08000f52:    1a41        A.      SUBS     r1,r0,r1
        0x08000f54:    f2413088    A..0    MOV      r0,#0x1388
        0x08000f58:    4281        .B      CMP      r1,r0
        0x08000f5a:    d866        f.      BHI      0x800102a ; HAL_RCC_OscConfig + 754
        0x08000f5c:    6830        0h      LDR      r0,[r6,#0]
        0x08000f5e:    0780        ..      LSLS     r0,r0,#30
        0x08000f60:    d5f4        ..      BPL      0x8000f4c ; HAL_RCC_OscConfig + 532
        0x08000f62:    e00e        ..      B        0x8000f82 ; HAL_RCC_OscConfig + 586
        0x08000f64:    f7fffd32    ..2.    BL       HAL_GetTick ; 0x80009cc
        0x08000f68:    9000        ..      STR      r0,[sp,#0]
        0x08000f6a:    e007        ..      B        0x8000f7c ; HAL_RCC_OscConfig + 580
        0x08000f6c:    f7fffd2e    ....    BL       HAL_GetTick ; 0x80009cc
        0x08000f70:    9900        ..      LDR      r1,[sp,#0]
        0x08000f72:    1a41        A.      SUBS     r1,r0,r1
        0x08000f74:    f2413088    A..0    MOV      r0,#0x1388
        0x08000f78:    4281        .B      CMP      r1,r0
        0x08000f7a:    d856        V.      BHI      0x800102a ; HAL_RCC_OscConfig + 754
        0x08000f7c:    6830        0h      LDR      r0,[r6,#0]
        0x08000f7e:    0780        ..      LSLS     r0,r0,#30
        0x08000f80:    d4f4        ..      BMI      0x8000f6c ; HAL_RCC_OscConfig + 564
        0x08000f82:    b12f        /.      CBZ      r7,0x8000f90 ; HAL_RCC_OscConfig + 600
        0x08000f84:    f8db1000    ....    LDR      r1,[r11,#0]
        0x08000f88:    f0215180    !..Q    BIC      r1,r1,#0x10000000
        0x08000f8c:    f8cb1000    ....    STR      r1,[r11,#0]
        0x08000f90:    69a0        .i      LDR      r0,[r4,#0x18]
        0x08000f92:    b3d0        ..      CBZ      r0,0x800100a ; HAL_RCC_OscConfig + 722
        0x08000f94:    f8da2000    ...     LDR      r2,[r10,#0]
        0x08000f98:    4651        QF      MOV      r1,r10
        0x08000f9a:    f3c20281    ....    UBFX     r2,r2,#2,#2
        0x08000f9e:    2a02        .*      CMP      r2,#2
        0x08000fa0:    d04a        J.      BEQ      0x8001038 ; HAL_RCC_OscConfig + 768
        0x08000fa2:    2802        .(      CMP      r0,#2
        0x08000fa4:    4648        HF      MOV      r0,r9
        0x08000fa6:    d007        ..      BEQ      0x8000fb8 ; HAL_RCC_OscConfig + 640
        0x08000fa8:    f8c80060    ..`.    STR      r0,[r8,#0x60]
        0x08000fac:    e000        ..      B        0x8000fb0 ; HAL_RCC_OscConfig + 632
        0x08000fae:    e03c        <.      B        0x800102a ; HAL_RCC_OscConfig + 754
        0x08000fb0:    f7fffd0c    ....    BL       HAL_GetTick ; 0x80009cc
        0x08000fb4:    4604        .F      MOV      r4,r0
        0x08000fb6:    e03b        ;.      B        0x8001030 ; HAL_RCC_OscConfig + 760
        0x08000fb8:    4647        GF      MOV      r7,r8
        0x08000fba:    f8c80060    ..`.    STR      r0,[r8,#0x60]
        0x08000fbe:    f7fffd05    ....    BL       HAL_GetTick ; 0x80009cc
        0x08000fc2:    4606        .F      MOV      r6,r0
        0x08000fc4:    e005        ..      B        0x8000fd2 ; HAL_RCC_OscConfig + 666
        0x08000fc6:    bf00        ..      NOP      
        0x08000fc8:    f7fffd00    ....    BL       HAL_GetTick ; 0x80009cc
        0x08000fcc:    1b80        ..      SUBS     r0,r0,r6
        0x08000fce:    2802        .(      CMP      r0,#2
        0x08000fd0:    d82b        +.      BHI      0x800102a ; HAL_RCC_OscConfig + 754
        0x08000fd2:    6828        (h      LDR      r0,[r5,#0]
        0x08000fd4:    0180        ..      LSLS     r0,r0,#6
        0x08000fd6:    d4f7        ..      BMI      0x8000fc8 ; HAL_RCC_OscConfig + 656
        0x08000fd8:    e9d40107    ....    LDRD     r0,r1,[r4,#0x1c]
        0x08000fdc:    4308        .C      ORRS     r0,r0,r1
        0x08000fde:    6aa1        .j      LDR      r1,[r4,#0x28]
        0x08000fe0:    4a2b        +J      LDR      r2,[pc,#172] ; [0x8001090] = 0xffff0000
        0x08000fe2:    0849        I.      LSRS     r1,r1,#1
        0x08000fe4:    eb024101    ...A    ADD      r1,r2,r1,LSL #16
        0x08000fe8:    6a62        bj      LDR      r2,[r4,#0x24]
        0x08000fea:    ea411182    A...    ORR      r1,r1,r2,LSL #6
        0x08000fee:    4308        .C      ORRS     r0,r0,r1
        0x08000ff0:    f894102c    ..,.    LDRB     r1,[r4,#0x2c]
        0x08000ff4:    ea406101    @..a    ORR      r1,r0,r1,LSL #24
        0x08000ff8:    4820         H      LDR      r0,[pc,#128] ; [0x800107c] = 0x40023808
        0x08000ffa:    1f00        ..      SUBS     r0,r0,#4
        0x08000ffc:    6001        .`      STR      r1,[r0,#0]
        0x08000ffe:    2001        .       MOVS     r0,#1
        0x08001000:    6638        8f      STR      r0,[r7,#0x60]
        0x08001002:    f7fffce3    ....    BL       HAL_GetTick ; 0x80009cc
        0x08001006:    4604        .F      MOV      r4,r0
        0x08001008:    e005        ..      B        0x8001016 ; HAL_RCC_OscConfig + 734
        0x0800100a:    e034        4.      B        0x8001076 ; HAL_RCC_OscConfig + 830
        0x0800100c:    f7fffcde    ....    BL       HAL_GetTick ; 0x80009cc
        0x08001010:    1b00        ..      SUBS     r0,r0,r4
        0x08001012:    2802        .(      CMP      r0,#2
        0x08001014:    d809        ..      BHI      0x800102a ; HAL_RCC_OscConfig + 754
        0x08001016:    6828        (h      LDR      r0,[r5,#0]
        0x08001018:    0180        ..      LSLS     r0,r0,#6
        0x0800101a:    d5f7        ..      BPL      0x800100c ; HAL_RCC_OscConfig + 724
        0x0800101c:    e02b        +.      B        0x8001076 ; HAL_RCC_OscConfig + 830
        0x0800101e:    bf00        ..      NOP      
        0x08001020:    f7fffcd4    ....    BL       HAL_GetTick ; 0x80009cc
        0x08001024:    1b00        ..      SUBS     r0,r0,r4
        0x08001026:    2802        .(      CMP      r0,#2
        0x08001028:    d902        ..      BLS      0x8001030 ; HAL_RCC_OscConfig + 760
        0x0800102a:    2003        .       MOVS     r0,#3
        0x0800102c:    e8bd8ff8    ....    POP      {r3-r11,pc}
        0x08001030:    6828        (h      LDR      r0,[r5,#0]
        0x08001032:    0180        ..      LSLS     r0,r0,#6
        0x08001034:    d4f4        ..      BMI      0x8001020 ; HAL_RCC_OscConfig + 744
        0x08001036:    e01e        ..      B        0x8001076 ; HAL_RCC_OscConfig + 830
        0x08001038:    2801        .(      CMP      r0,#1
        0x0800103a:    d0f7        ..      BEQ      0x800102c ; HAL_RCC_OscConfig + 756
        0x0800103c:    6808        .h      LDR      r0,[r1,#0]
        0x0800103e:    69e2        .i      LDR      r2,[r4,#0x1c]
        0x08001040:    f4000180    ....    AND      r1,r0,#0x400000
        0x08001044:    4291        .B      CMP      r1,r2
        0x08001046:    d114        ..      BNE      0x8001072 ; HAL_RCC_OscConfig + 826
        0x08001048:    6a22        "j      LDR      r2,[r4,#0x20]
        0x0800104a:    f000013f    ..?.    AND      r1,r0,#0x3f
        0x0800104e:    4291        .B      CMP      r1,r2
        0x08001050:    d10f        ..      BNE      0x8001072 ; HAL_RCC_OscConfig + 826
        0x08001052:    f64771c0    G..q    MOV      r1,#0x7fc0
        0x08001056:    6a62        bj      LDR      r2,[r4,#0x24]
        0x08001058:    4001        .@      ANDS     r1,r1,r0
        0x0800105a:    4291        .B      CMP      r1,r2
        0x0800105c:    d109        ..      BNE      0x8001072 ; HAL_RCC_OscConfig + 826
        0x0800105e:    6aa2        .j      LDR      r2,[r4,#0x28]
        0x08001060:    f4003140    ..@1    AND      r1,r0,#0x30000
        0x08001064:    4291        .B      CMP      r1,r2
        0x08001066:    d104        ..      BNE      0x8001072 ; HAL_RCC_OscConfig + 826
        0x08001068:    6ae1        .j      LDR      r1,[r4,#0x2c]
        0x0800106a:    f0006070    ..p`    AND      r0,r0,#0xf000000
        0x0800106e:    4288        .B      CMP      r0,r1
        0x08001070:    d001        ..      BEQ      0x8001076 ; HAL_RCC_OscConfig + 830
        0x08001072:    2001        .       MOVS     r0,#1
        0x08001074:    e7da        ..      B        0x800102c ; HAL_RCC_OscConfig + 756
        0x08001076:    2000        .       MOVS     r0,#0
        0x08001078:    e7d8        ..      B        0x800102c ; HAL_RCC_OscConfig + 756
    $d
        0x0800107a:    0000        ..      DCW    0
        0x0800107c:    40023808    .8.@    DCD    1073887240
        0x08001080:    40023800    .8.@    DCD    1073887232
        0x08001084:    42470000    ..GB    DCD    1111949312
        0x08001088:    42470e80    ..GB    DCD    1111953024
        0x0800108c:    40007000    .p.@    DCD    1073770496
        0x08001090:    ffff0000    ....    DCD    4294901760
    $t
    i.HAL_SYSTICK_Config
    HAL_SYSTICK_Config
        0x08001094:    b510        ..      PUSH     {r4,lr}
        0x08001096:    1e40        @.      SUBS     r0,r0,#1
        0x08001098:    f1b07f80    ....    CMP      r0,#0x1000000
        0x0800109c:    d301        ..      BCC      0x80010a2 ; HAL_SYSTICK_Config + 14
        0x0800109e:    2001        .       MOVS     r0,#1
        0x080010a0:    bd10        ..      POP      {r4,pc}
        0x080010a2:    f04f24e0    O..$    MOV      r4,#0xe000e000
        0x080010a6:    6160        `a      STR      r0,[r4,#0x14]
        0x080010a8:    210f        .!      MOVS     r1,#0xf
        0x080010aa:    1760        `.      ASRS     r0,r4,#29
        0x080010ac:    f000fefe    ....    BL       __NVIC_SetPriority ; 0x8001eac
        0x080010b0:    2000        .       MOVS     r0,#0
        0x080010b2:    61a0        .a      STR      r0,[r4,#0x18]
        0x080010b4:    2007        .       MOVS     r0,#7
        0x080010b6:    6120         a      STR      r0,[r4,#0x10]
        0x080010b8:    2000        .       MOVS     r0,#0
        0x080010ba:    bd10        ..      POP      {r4,pc}
    i.HAL_UART_Init
    HAL_UART_Init
        0x080010bc:    b570        p.      PUSH     {r4-r6,lr}
        0x080010be:    0004        ..      MOVS     r4,r0
        0x080010c0:    d004        ..      BEQ      0x80010cc ; HAL_UART_Init + 16
        0x080010c2:    f8940039    ..9.    LDRB     r0,[r4,#0x39]
        0x080010c6:    2500        .%      MOVS     r5,#0
        0x080010c8:    b110        ..      CBZ      r0,0x80010d0 ; HAL_UART_Init + 20
        0x080010ca:    e006        ..      B        0x80010da ; HAL_UART_Init + 30
        0x080010cc:    2001        .       MOVS     r0,#1
        0x080010ce:    bd70        p.      POP      {r4-r6,pc}
        0x080010d0:    f8845038    ..8P    STRB     r5,[r4,#0x38]
        0x080010d4:    4620         F      MOV      r0,r4
        0x080010d6:    f000f823    ..#.    BL       HAL_UART_MspInit ; 0x8001120
        0x080010da:    2024        $       MOVS     r0,#0x24
        0x080010dc:    f8840039    ..9.    STRB     r0,[r4,#0x39]
        0x080010e0:    6820         h      LDR      r0,[r4,#0]
        0x080010e2:    68c1        .h      LDR      r1,[r0,#0xc]
        0x080010e4:    f4215100    !..Q    BIC      r1,r1,#0x2000
        0x080010e8:    60c1        .`      STR      r1,[r0,#0xc]
        0x080010ea:    4620         F      MOV      r0,r4
        0x080010ec:    f000fe02    ....    BL       UART_SetConfig ; 0x8001cf4
        0x080010f0:    6820         h      LDR      r0,[r4,#0]
        0x080010f2:    6901        .i      LDR      r1,[r0,#0x10]
        0x080010f4:    f4214190    !..A    BIC      r1,r1,#0x4800
        0x080010f8:    6101        .a      STR      r1,[r0,#0x10]
        0x080010fa:    6820         h      LDR      r0,[r4,#0]
        0x080010fc:    6941        Ai      LDR      r1,[r0,#0x14]
        0x080010fe:    f021012a    !.*.    BIC      r1,r1,#0x2a
        0x08001102:    6141        Aa      STR      r1,[r0,#0x14]
        0x08001104:    6820         h      LDR      r0,[r4,#0]
        0x08001106:    68c1        .h      LDR      r1,[r0,#0xc]
        0x08001108:    f4415100    A..Q    ORR      r1,r1,#0x2000
        0x0800110c:    60c1        .`      STR      r1,[r0,#0xc]
        0x0800110e:    63e5        .c      STR      r5,[r4,#0x3c]
        0x08001110:    2020                MOVS     r0,#0x20
        0x08001112:    f8840039    ..9.    STRB     r0,[r4,#0x39]
        0x08001116:    f884003a    ..:.    STRB     r0,[r4,#0x3a]
        0x0800111a:    2000        .       MOVS     r0,#0
        0x0800111c:    bd70        p.      POP      {r4-r6,pc}
        0x0800111e:    0000        ..      MOVS     r0,r0
    i.HAL_UART_MspInit
    HAL_UART_MspInit
        0x08001120:    b5f0        ..      PUSH     {r4-r7,lr}
        0x08001122:    b087        ..      SUB      sp,sp,#0x1c
        0x08001124:    4604        .F      MOV      r4,r0
        0x08001126:    2114        .!      MOVS     r1,#0x14
        0x08001128:    4668        hF      MOV      r0,sp
        0x0800112a:    f7fff893    ....    BL       __aeabi_memclr ; 0x8000254
        0x0800112e:    4821        !H      LDR      r0,[pc,#132] ; [0x80011b4] = 0x40023840
        0x08001130:    4f1f        .O      LDR      r7,[pc,#124] ; [0x80011b0] = 0x40004400
        0x08001132:    6826        &h      LDR      r6,[r4,#0]
        0x08001134:    2200        ."      MOVS     r2,#0
        0x08001136:    491f        .I      LDR      r1,[pc,#124] ; [0x80011b4] = 0x40023840
        0x08001138:    3810        .8      SUBS     r0,r0,#0x10
        0x0800113a:    2302        .#      MOVS     r3,#2
        0x0800113c:    2403        .$      MOVS     r4,#3
        0x0800113e:    2507        .%      MOVS     r5,#7
        0x08001140:    42be        .B      CMP      r6,r7
        0x08001142:    d115        ..      BNE      0x8001170 ; HAL_UART_MspInit + 80
        0x08001144:    680e        .h      LDR      r6,[r1,#0]
        0x08001146:    f4463600    F..6    ORR      r6,r6,#0x20000
        0x0800114a:    600e        .`      STR      r6,[r1,#0]
        0x0800114c:    6809        .h      LDR      r1,[r1,#0]
        0x0800114e:    f4013100    ...1    AND      r1,r1,#0x20000
        0x08001152:    9105        ..      STR      r1,[sp,#0x14]
        0x08001154:    6801        .h      LDR      r1,[r0,#0]
        0x08001156:    f0410101    A...    ORR      r1,r1,#1
        0x0800115a:    6001        .`      STR      r1,[r0,#0]
        0x0800115c:    6800        .h      LDR      r0,[r0,#0]
        0x0800115e:    4669        iF      MOV      r1,sp
        0x08001160:    f0000001    ....    AND      r0,r0,#1
        0x08001164:    9005        ..      STR      r0,[sp,#0x14]
        0x08001166:    200c        .       MOVS     r0,#0xc
        0x08001168:    e9cd0300    ....    STRD     r0,r3,[sp,#0]
        0x0800116c:    4812        .H      LDR      r0,[pc,#72] ; [0x80011b8] = 0x40020000
        0x0800116e:    e018        ..      B        0x80011a2 ; HAL_UART_MspInit + 130
        0x08001170:    4f12        .O      LDR      r7,[pc,#72] ; [0x80011bc] = 0x40004800
        0x08001172:    42be        .B      CMP      r6,r7
        0x08001174:    d11a        ..      BNE      0x80011ac ; HAL_UART_MspInit + 140
        0x08001176:    680e        .h      LDR      r6,[r1,#0]
        0x08001178:    f4462680    F..&    ORR      r6,r6,#0x40000
        0x0800117c:    600e        .`      STR      r6,[r1,#0]
        0x0800117e:    6809        .h      LDR      r1,[r1,#0]
        0x08001180:    f4012180    ...!    AND      r1,r1,#0x40000
        0x08001184:    9105        ..      STR      r1,[sp,#0x14]
        0x08001186:    6801        .h      LDR      r1,[r0,#0]
        0x08001188:    f0410102    A...    ORR      r1,r1,#2
        0x0800118c:    6001        .`      STR      r1,[r0,#0]
        0x0800118e:    6800        .h      LDR      r0,[r0,#0]
        0x08001190:    4669        iF      MOV      r1,sp
        0x08001192:    f0000002    ....    AND      r0,r0,#2
        0x08001196:    9005        ..      STR      r0,[sp,#0x14]
        0x08001198:    f44f6040    O.@`    MOV      r0,#0xc00
        0x0800119c:    e9cd0300    ....    STRD     r0,r3,[sp,#0]
        0x080011a0:    4807        .H      LDR      r0,[pc,#28] ; [0x80011c0] = 0x40020400
        0x080011a2:    ae02        ..      ADD      r6,sp,#8
        0x080011a4:    e8860034    ..4.    STM      r6,{r2,r4,r5}
        0x080011a8:    f7fffb20    .. .    BL       HAL_GPIO_Init ; 0x80007ec
        0x080011ac:    b007        ..      ADD      sp,sp,#0x1c
        0x080011ae:    bdf0        ..      POP      {r4-r7,pc}
    $d
        0x080011b0:    40004400    .D.@    DCD    1073759232
        0x080011b4:    40023840    @8.@    DCD    1073887296
        0x080011b8:    40020000    ...@    DCD    1073872896
        0x080011bc:    40004800    .H.@    DCD    1073760256
        0x080011c0:    40020400    ...@    DCD    1073873920
    $t
    i.HAL_UART_Receive
    HAL_UART_Receive
        0x080011c4:    e92d43f8    -..C    PUSH     {r3-r9,lr}
        0x080011c8:    4604        .F      MOV      r4,r0
        0x080011ca:    f890003a    ..:.    LDRB     r0,[r0,#0x3a]
        0x080011ce:    4699        .F      MOV      r9,r3
        0x080011d0:    4616        .F      MOV      r6,r2
        0x080011d2:    460d        .F      MOV      r5,r1
        0x080011d4:    2820         (      CMP      r0,#0x20
        0x080011d6:    d152        R.      BNE      0x800127e ; HAL_UART_Receive + 186
        0x080011d8:    b1bd        ..      CBZ      r5,0x800120a ; HAL_UART_Receive + 70
        0x080011da:    b1b6        ..      CBZ      r6,0x800120a ; HAL_UART_Receive + 70
        0x080011dc:    f8940038    ..8.    LDRB     r0,[r4,#0x38]
        0x080011e0:    2801        .(      CMP      r0,#1
        0x080011e2:    d04c        L.      BEQ      0x800127e ; HAL_UART_Receive + 186
        0x080011e4:    2001        .       MOVS     r0,#1
        0x080011e6:    f8840038    ..8.    STRB     r0,[r4,#0x38]
        0x080011ea:    2700        .'      MOVS     r7,#0
        0x080011ec:    63e7        .c      STR      r7,[r4,#0x3c]
        0x080011ee:    2022        "       MOVS     r0,#0x22
        0x080011f0:    f884003a    ..:.    STRB     r0,[r4,#0x3a]
        0x080011f4:    342c        ,4      ADDS     r4,r4,#0x2c
        0x080011f6:    f7fffbe9    ....    BL       HAL_GetTick ; 0x80009cc
        0x080011fa:    f8246b02    $..k    STRH     r6,[r4],#2
        0x080011fe:    4680        .F      MOV      r8,r0
        0x08001200:    f8246b0a    $..k    STRH     r6,[r4],#0xa
        0x08001204:    f8047938    ..8y    STRB     r7,[r4],#-0x38
        0x08001208:    e031        1.      B        0x800126e ; HAL_UART_Receive + 170
        0x0800120a:    2001        .       MOVS     r0,#1
        0x0800120c:    e8bd83f8    ....    POP      {r3-r9,pc}
        0x08001210:    8de0        ..      LDRH     r0,[r4,#0x2e]
        0x08001212:    1e40        @.      SUBS     r0,r0,#1
        0x08001214:    85e0        ..      STRH     r0,[r4,#0x2e]
        0x08001216:    68a0        .h      LDR      r0,[r4,#8]
        0x08001218:    4643        CF      MOV      r3,r8
        0x0800121a:    f5b05f80    ..._    CMP      r0,#0x1000
        0x0800121e:    f04f0200    O...    MOV      r2,#0
        0x08001222:    f04f0120    O. .    MOV      r1,#0x20
        0x08001226:    4620         F      MOV      r0,r4
        0x08001228:    f8cd9000    ....    STR      r9,[sp,#0]
        0x0800122c:    d004        ..      BEQ      0x8001238 ; HAL_UART_Receive + 116
        0x0800122e:    f000fdf5    ....    BL       UART_WaitOnFlagUntilTimeout ; 0x8001e1c
        0x08001232:    b198        ..      CBZ      r0,0x800125c ; HAL_UART_Receive + 152
        0x08001234:    2003        .       MOVS     r0,#3
        0x08001236:    e7e9        ..      B        0x800120c ; HAL_UART_Receive + 72
        0x08001238:    f000fdf0    ....    BL       UART_WaitOnFlagUntilTimeout ; 0x8001e1c
        0x0800123c:    2800        .(      CMP      r0,#0
        0x0800123e:    d1f9        ..      BNE      0x8001234 ; HAL_UART_Receive + 112
        0x08001240:    6920         i      LDR      r0,[r4,#0x10]
        0x08001242:    2800        .(      CMP      r0,#0
        0x08001244:    6820         h      LDR      r0,[r4,#0]
        0x08001246:    6840        @h      LDR      r0,[r0,#4]
        0x08001248:    d003        ..      BEQ      0x8001252 ; HAL_UART_Receive + 142
        0x0800124a:    b2c1        ..      UXTB     r1,r0
        0x0800124c:    f8251b01    %...    STRH     r1,[r5],#1
        0x08001250:    e00d        ..      B        0x800126e ; HAL_UART_Receive + 170
        0x08001252:    f3c00108    ....    UBFX     r1,r0,#0,#9
        0x08001256:    f8251b02    %...    STRH     r1,[r5],#2
        0x0800125a:    e008        ..      B        0x800126e ; HAL_UART_Receive + 170
        0x0800125c:    6920         i      LDR      r0,[r4,#0x10]
        0x0800125e:    2800        .(      CMP      r0,#0
        0x08001260:    6820         h      LDR      r0,[r4,#0]
        0x08001262:    6840        @h      LDR      r0,[r0,#4]
        0x08001264:    d001        ..      BEQ      0x800126a ; HAL_UART_Receive + 166
        0x08001266:    f000007f    ....    AND      r0,r0,#0x7f
        0x0800126a:    f8050b01    ....    STRB     r0,[r5],#1
        0x0800126e:    8de0        ..      LDRH     r0,[r4,#0x2e]
        0x08001270:    2800        .(      CMP      r0,#0
        0x08001272:    d1cd        ..      BNE      0x8001210 ; HAL_UART_Receive + 76
        0x08001274:    2020                MOVS     r0,#0x20
        0x08001276:    f884003a    ..:.    STRB     r0,[r4,#0x3a]
        0x0800127a:    2000        .       MOVS     r0,#0
        0x0800127c:    e7c6        ..      B        0x800120c ; HAL_UART_Receive + 72
        0x0800127e:    2002        .       MOVS     r0,#2
        0x08001280:    e7c4        ..      B        0x800120c ; HAL_UART_Receive + 72
    i.HAL_UART_Transmit
    HAL_UART_Transmit
        0x08001282:    e92d43f8    -..C    PUSH     {r3-r9,lr}
        0x08001286:    4604        .F      MOV      r4,r0
        0x08001288:    f8900039    ..9.    LDRB     r0,[r0,#0x39]
        0x0800128c:    461f        .F      MOV      r7,r3
        0x0800128e:    4616        .F      MOV      r6,r2
        0x08001290:    460d        .F      MOV      r5,r1
        0x08001292:    2820         (      CMP      r0,#0x20
        0x08001294:    d150        P.      BNE      0x8001338 ; HAL_UART_Transmit + 182
        0x08001296:    b1b5        ..      CBZ      r5,0x80012c6 ; HAL_UART_Transmit + 68
        0x08001298:    b1ae        ..      CBZ      r6,0x80012c6 ; HAL_UART_Transmit + 68
        0x0800129a:    f8940038    ..8.    LDRB     r0,[r4,#0x38]
        0x0800129e:    2801        .(      CMP      r0,#1
        0x080012a0:    d04a        J.      BEQ      0x8001338 ; HAL_UART_Transmit + 182
        0x080012a2:    2001        .       MOVS     r0,#1
        0x080012a4:    f8840038    ..8.    STRB     r0,[r4,#0x38]
        0x080012a8:    f04f0800    O...    MOV      r8,#0
        0x080012ac:    f8c4803c    ..<.    STR      r8,[r4,#0x3c]
        0x080012b0:    2021        !       MOVS     r0,#0x21
        0x080012b2:    f8840039    ..9.    STRB     r0,[r4,#0x39]
        0x080012b6:    f7fffb89    ....    BL       HAL_GetTick ; 0x80009cc
        0x080012ba:    84a6        ..      STRH     r6,[r4,#0x24]
        0x080012bc:    4681        .F      MOV      r9,r0
        0x080012be:    84e6        ..      STRH     r6,[r4,#0x26]
        0x080012c0:    f8848038    ..8.    STRB     r8,[r4,#0x38]
        0x080012c4:    e026        &.      B        0x8001314 ; HAL_UART_Transmit + 146
        0x080012c6:    2001        .       MOVS     r0,#1
        0x080012c8:    e8bd83f8    ....    POP      {r3-r9,pc}
        0x080012cc:    8ce0        ..      LDRH     r0,[r4,#0x26]
        0x080012ce:    1e40        @.      SUBS     r0,r0,#1
        0x080012d0:    84e0        ..      STRH     r0,[r4,#0x26]
        0x080012d2:    68a0        .h      LDR      r0,[r4,#8]
        0x080012d4:    464b        KF      MOV      r3,r9
        0x080012d6:    f5b05f80    ..._    CMP      r0,#0x1000
        0x080012da:    f04f0200    O...    MOV      r2,#0
        0x080012de:    f04f0180    O...    MOV      r1,#0x80
        0x080012e2:    4620         F      MOV      r0,r4
        0x080012e4:    9700        ..      STR      r7,[sp,#0]
        0x080012e6:    d003        ..      BEQ      0x80012f0 ; HAL_UART_Transmit + 110
        0x080012e8:    f000fd98    ....    BL       UART_WaitOnFlagUntilTimeout ; 0x8001e1c
        0x080012ec:    b9e8        ..      CBNZ     r0,0x800132a ; HAL_UART_Transmit + 168
        0x080012ee:    e00d        ..      B        0x800130c ; HAL_UART_Transmit + 138
        0x080012f0:    f000fd94    ....    BL       UART_WaitOnFlagUntilTimeout ; 0x8001e1c
        0x080012f4:    b9c8        ..      CBNZ     r0,0x800132a ; HAL_UART_Transmit + 168
        0x080012f6:    8828        (.      LDRH     r0,[r5,#0]
        0x080012f8:    6821        !h      LDR      r1,[r4,#0]
        0x080012fa:    f3c00008    ....    UBFX     r0,r0,#0,#9
        0x080012fe:    6048        H`      STR      r0,[r1,#4]
        0x08001300:    6920         i      LDR      r0,[r4,#0x10]
        0x08001302:    b108        ..      CBZ      r0,0x8001308 ; HAL_UART_Transmit + 134
        0x08001304:    1c6d        m.      ADDS     r5,r5,#1
        0x08001306:    e005        ..      B        0x8001314 ; HAL_UART_Transmit + 146
        0x08001308:    1cad        ..      ADDS     r5,r5,#2
        0x0800130a:    e003        ..      B        0x8001314 ; HAL_UART_Transmit + 146
        0x0800130c:    6821        !h      LDR      r1,[r4,#0]
        0x0800130e:    f8150b01    ....    LDRB     r0,[r5],#1
        0x08001312:    6048        H`      STR      r0,[r1,#4]
        0x08001314:    8ce0        ..      LDRH     r0,[r4,#0x26]
        0x08001316:    2800        .(      CMP      r0,#0
        0x08001318:    d1d8        ..      BNE      0x80012cc ; HAL_UART_Transmit + 74
        0x0800131a:    464b        KF      MOV      r3,r9
        0x0800131c:    2200        ."      MOVS     r2,#0
        0x0800131e:    2140        @!      MOVS     r1,#0x40
        0x08001320:    4620         F      MOV      r0,r4
        0x08001322:    9700        ..      STR      r7,[sp,#0]
        0x08001324:    f000fd7a    ..z.    BL       UART_WaitOnFlagUntilTimeout ; 0x8001e1c
        0x08001328:    b108        ..      CBZ      r0,0x800132e ; HAL_UART_Transmit + 172
        0x0800132a:    2003        .       MOVS     r0,#3
        0x0800132c:    e7cc        ..      B        0x80012c8 ; HAL_UART_Transmit + 70
        0x0800132e:    2020                MOVS     r0,#0x20
        0x08001330:    f8840039    ..9.    STRB     r0,[r4,#0x39]
        0x08001334:    2000        .       MOVS     r0,#0
        0x08001336:    e7c7        ..      B        0x80012c8 ; HAL_UART_Transmit + 70
        0x08001338:    2002        .       MOVS     r0,#2
        0x0800133a:    e7c5        ..      B        0x80012c8 ; HAL_UART_Transmit + 70
    i.HardFault_Handler
    HardFault_Handler
        0x0800133c:    e7fe        ..      B        HardFault_Handler ; 0x800133c
        0x0800133e:    0000        ..      MOVS     r0,r0
    i.JumpToAddr
    JumpToAddr
        0x08001340:    b510        ..      PUSH     {r4,lr}
        0x08001342:    4602        .F      MOV      r2,r0
        0x08001344:    f000ff37    ..7.    BL       disableSystick ; 0x80021b6
        0x08001348:    6851        Qh      LDR      r1,[r2,#4]
        0x0800134a:    4805        .H      LDR      r0,[pc,#20] ; [0x8001360] = 0x20000400
        0x0800134c:    6041        A`      STR      r1,[r0,#4]
        0x0800134e:    6001        .`      STR      r1,[r0,#0]
        0x08001350:    6810        .h      LDR      r0,[r2,#0]
        0x08001352:    f3808808    ....    MSR      MSP,r0
        0x08001356:    4788        .G      BLX      r1
        0x08001358:    bf00        ..      NOP      
        0x0800135a:    bf00        ..      NOP      
        0x0800135c:    bd10        ..      POP      {r4,pc}
    $d
        0x0800135e:    0000        ..      DCW    0
        0x08001360:    20000400    ...     DCD    536871936
    $t
    i.MX_GPIO_Init
    MX_GPIO_Init
        0x08001364:    b530        0.      PUSH     {r4,r5,lr}
        0x08001366:    b087        ..      SUB      sp,sp,#0x1c
        0x08001368:    2114        .!      MOVS     r1,#0x14
        0x0800136a:    4668        hF      MOV      r0,sp
        0x0800136c:    f7feff72    ..r.    BL       __aeabi_memclr ; 0x8000254
        0x08001370:    481a        .H      LDR      r0,[pc,#104] ; [0x80013dc] = 0x40023830
        0x08001372:    2400        .$      MOVS     r4,#0
        0x08001374:    6801        .h      LDR      r1,[r0,#0]
        0x08001376:    f0410180    A...    ORR      r1,r1,#0x80
        0x0800137a:    6001        .`      STR      r1,[r0,#0]
        0x0800137c:    6801        .h      LDR      r1,[r0,#0]
        0x0800137e:    f0010180    ....    AND      r1,r1,#0x80
        0x08001382:    9105        ..      STR      r1,[sp,#0x14]
        0x08001384:    6801        .h      LDR      r1,[r0,#0]
        0x08001386:    f0410140    A.@.    ORR      r1,r1,#0x40
        0x0800138a:    6001        .`      STR      r1,[r0,#0]
        0x0800138c:    6801        .h      LDR      r1,[r0,#0]
        0x0800138e:    f0010140    ..@.    AND      r1,r1,#0x40
        0x08001392:    9105        ..      STR      r1,[sp,#0x14]
        0x08001394:    6801        .h      LDR      r1,[r0,#0]
        0x08001396:    f0410101    A...    ORR      r1,r1,#1
        0x0800139a:    6001        .`      STR      r1,[r0,#0]
        0x0800139c:    6801        .h      LDR      r1,[r0,#0]
        0x0800139e:    f0010101    ....    AND      r1,r1,#1
        0x080013a2:    9105        ..      STR      r1,[sp,#0x14]
        0x080013a4:    6801        .h      LDR      r1,[r0,#0]
        0x080013a6:    f0410102    A...    ORR      r1,r1,#2
        0x080013aa:    6001        .`      STR      r1,[r0,#0]
        0x080013ac:    6800        .h      LDR      r0,[r0,#0]
        0x080013ae:    4d0c        .M      LDR      r5,[pc,#48] ; [0x80013e0] = 0x40021800
        0x080013b0:    f0000002    ....    AND      r0,r0,#2
        0x080013b4:    9005        ..      STR      r0,[sp,#0x14]
        0x080013b6:    2200        ."      MOVS     r2,#0
        0x080013b8:    2103        .!      MOVS     r1,#3
        0x080013ba:    4628        (F      MOV      r0,r5
        0x080013bc:    f7fffb00    ....    BL       HAL_GPIO_WritePin ; 0x80009c0
        0x080013c0:    2003        .       MOVS     r0,#3
        0x080013c2:    9000        ..      STR      r0,[sp,#0]
        0x080013c4:    2001        .       MOVS     r0,#1
        0x080013c6:    9001        ..      STR      r0,[sp,#4]
        0x080013c8:    2002        .       MOVS     r0,#2
        0x080013ca:    e9cd0402    ....    STRD     r0,r4,[sp,#8]
        0x080013ce:    4669        iF      MOV      r1,sp
        0x080013d0:    4628        (F      MOV      r0,r5
        0x080013d2:    f7fffa0b    ....    BL       HAL_GPIO_Init ; 0x80007ec
        0x080013d6:    b007        ..      ADD      sp,sp,#0x1c
        0x080013d8:    bd30        0.      POP      {r4,r5,pc}
    $d
        0x080013da:    0000        ..      DCW    0
        0x080013dc:    40023830    08.@    DCD    1073887280
        0x080013e0:    40021800    ...@    DCD    1073879040
    $t
    i.MX_USART2_UART_Init
    MX_USART2_UART_Init
        0x080013e4:    480c        .H      LDR      r0,[pc,#48] ; [0x8001418] = 0x20020418
        0x080013e6:    b510        ..      PUSH     {r4,lr}
        0x080013e8:    490a        .I      LDR      r1,[pc,#40] ; [0x8001414] = 0x40004400
        0x080013ea:    6001        .`      STR      r1,[r0,#0]
        0x080013ec:    f44f31e1    O..1    MOV      r1,#0x1c200
        0x080013f0:    6041        A`      STR      r1,[r0,#4]
        0x080013f2:    2100        .!      MOVS     r1,#0
        0x080013f4:    6081        .`      STR      r1,[r0,#8]
        0x080013f6:    220c        ."      MOVS     r2,#0xc
        0x080013f8:    60c1        .`      STR      r1,[r0,#0xc]
        0x080013fa:    e9c01204    ....    STRD     r1,r2,[r0,#0x10]
        0x080013fe:    6181        .a      STR      r1,[r0,#0x18]
        0x08001400:    61c1        .a      STR      r1,[r0,#0x1c]
        0x08001402:    f7fffe5b    ..[.    BL       HAL_UART_Init ; 0x80010bc
        0x08001406:    2800        .(      CMP      r0,#0
        0x08001408:    d003        ..      BEQ      0x8001412 ; MX_USART2_UART_Init + 46
        0x0800140a:    e8bd4010    ...@    POP      {r4,lr}
        0x0800140e:    f7febf82    ....    B        Error_Handler ; 0x8000316
        0x08001412:    bd10        ..      POP      {r4,pc}
    $d
        0x08001414:    40004400    .D.@    DCD    1073759232
        0x08001418:    20020418    ...     DCD    537003032
    $t
    i.MX_USART3_UART_Init
    MX_USART3_UART_Init
        0x0800141c:    480c        .H      LDR      r0,[pc,#48] ; [0x8001450] = 0x20020458
        0x0800141e:    b510        ..      PUSH     {r4,lr}
        0x08001420:    490a        .I      LDR      r1,[pc,#40] ; [0x800144c] = 0x40004800
        0x08001422:    6001        .`      STR      r1,[r0,#0]
        0x08001424:    f44f31e1    O..1    MOV      r1,#0x1c200
        0x08001428:    6041        A`      STR      r1,[r0,#4]
        0x0800142a:    2100        .!      MOVS     r1,#0
        0x0800142c:    6081        .`      STR      r1,[r0,#8]
        0x0800142e:    220c        ."      MOVS     r2,#0xc
        0x08001430:    60c1        .`      STR      r1,[r0,#0xc]
        0x08001432:    e9c01204    ....    STRD     r1,r2,[r0,#0x10]
        0x08001436:    6181        .a      STR      r1,[r0,#0x18]
        0x08001438:    61c1        .a      STR      r1,[r0,#0x1c]
        0x0800143a:    f7fffe3f    ..?.    BL       HAL_UART_Init ; 0x80010bc
        0x0800143e:    2800        .(      CMP      r0,#0
        0x08001440:    d003        ..      BEQ      0x800144a ; MX_USART3_UART_Init + 46
        0x08001442:    e8bd4010    ...@    POP      {r4,lr}
        0x08001446:    f7febf66    ..f.    B        Error_Handler ; 0x8000316
        0x0800144a:    bd10        ..      POP      {r4,pc}
    $d
        0x0800144c:    40004800    .H.@    DCD    1073760256
        0x08001450:    20020458    X..     DCD    537003096
    $t
    i.Main_Menu
    Main_Menu
        0x08001454:    b092        ..      SUB      sp,sp,#0x48
        0x08001456:    2000        .       MOVS     r0,#0
        0x08001458:    f88d0028    ..(.    STRB     r0,[sp,#0x28]
        0x0800145c:    4840        @H      LDR      r0,[pc,#256] ; [0x8001560] = 0x80024b0
        0x0800145e:    f000fbe5    ....    BL       Serial_PutString ; 0x8001c2c
        0x08001462:    4840        @H      LDR      r0,[pc,#256] ; [0x8001564] = 0x80023cc
        0x08001464:    f000fbe2    ....    BL       Serial_PutString ; 0x8001c2c
        0x08001468:    483f        ?H      LDR      r0,[pc,#252] ; [0x8001568] = 0x8002380
        0x0800146a:    f000fbdf    ....    BL       Serial_PutString ; 0x8001c2c
        0x0800146e:    483f        ?H      LDR      r0,[pc,#252] ; [0x800156c] = 0x8002418
        0x08001470:    f000fbdc    ....    BL       Serial_PutString ; 0x8001c2c
        0x08001474:    483c        <H      LDR      r0,[pc,#240] ; [0x8001568] = 0x8002380
        0x08001476:    f000fbd9    ....    BL       Serial_PutString ; 0x8001c2c
        0x0800147a:    483d        =H      LDR      r0,[pc,#244] ; [0x8001570] = 0x8002464
        0x0800147c:    f000fbd6    ....    BL       Serial_PutString ; 0x8001c2c
        0x08001480:    4837        7H      LDR      r0,[pc,#220] ; [0x8001560] = 0x80024b0
        0x08001482:    f000fbd3    ....    BL       Serial_PutString ; 0x8001c2c
        0x08001486:    a03b        ;.      ADR      r0,{pc}+0xee ; 0x8001574
        0x08001488:    f000fbd0    ....    BL       Serial_PutString ; 0x8001c2c
        0x0800148c:    4f3b        ;O      LDR      r7,[pc,#236] ; [0x800157c] = 0x20020458
        0x0800148e:    4e3c        <N      LDR      r6,[pc,#240] ; [0x8001580] = 0x8020000
        0x08001490:    f8df80f0    ....    LDR      r8,[pc,#240] ; [0x8001584] = 0x8080000
        0x08001494:    f8df90f0    ....    LDR      r9,[pc,#240] ; [0x8001588] = 0x8120000
        0x08001498:    f8dfa0f0    ....    LDR      r10,[pc,#240] ; [0x800158c] = 0x8180000
        0x0800149c:    f04f35ff    O..5    MOV      r5,#0xffffffff
        0x080014a0:    f04f34a5    O..4    MOV      r4,#0xa5a5a5a5
        0x080014a4:    a03a        :.      ADR      r0,{pc}+0xec ; 0x8001590
        0x080014a6:    f000fbc1    ....    BL       Serial_PutString ; 0x8001c2c
        0x080014aa:    a049        I.      ADR      r0,{pc}+0x126 ; 0x80015d0
        0x080014ac:    f000fbbe    ....    BL       Serial_PutString ; 0x8001c2c
        0x080014b0:    a057        W.      ADR      r0,{pc}+0x160 ; 0x8001610
        0x080014b2:    f000fbbb    ....    BL       Serial_PutString ; 0x8001c2c
        0x080014b6:    a066        f.      ADR      r0,{pc}+0x19a ; 0x8001650
        0x080014b8:    f000fbb8    ....    BL       Serial_PutString ; 0x8001c2c
        0x080014bc:    a074        t.      ADR      r0,{pc}+0x1d4 ; 0x8001690
        0x080014be:    f000fbb5    ....    BL       Serial_PutString ; 0x8001c2c
        0x080014c2:    a083        ..      ADR      r0,{pc}+0x20e ; 0x80016d0
        0x080014c4:    f000fbb2    ....    BL       Serial_PutString ; 0x8001c2c
        0x080014c8:    a091        ..      ADR      r0,{pc}+0x248 ; 0x8001710
        0x080014ca:    f000fbaf    ....    BL       Serial_PutString ; 0x8001c2c
        0x080014ce:    a0a0        ..      ADR      r0,{pc}+0x282 ; 0x8001750
        0x080014d0:    f000fbac    ....    BL       Serial_PutString ; 0x8001c2c
        0x080014d4:    a0ae        ..      ADR      r0,{pc}+0x2bc ; 0x8001790
        0x080014d6:    f000fba9    ....    BL       Serial_PutString ; 0x8001c2c
        0x080014da:    a0bd        ..      ADR      r0,{pc}+0x2f6 ; 0x80017d0
        0x080014dc:    f000fba6    ....    BL       Serial_PutString ; 0x8001c2c
        0x080014e0:    a0cb        ..      ADR      r0,{pc}+0x330 ; 0x8001810
        0x080014e2:    f000fba3    ....    BL       Serial_PutString ; 0x8001c2c
        0x080014e6:    a0da        ..      ADR      r0,{pc}+0x36a ; 0x8001850
        0x080014e8:    f000fba0    ....    BL       Serial_PutString ; 0x8001c2c
        0x080014ec:    6838        8h      LDR      r0,[r7,#0]
        0x080014ee:    6840        @h      LDR      r0,[r0,#4]
        0x080014f0:    462b        +F      MOV      r3,r5
        0x080014f2:    2201        ."      MOVS     r2,#1
        0x080014f4:    a90a        ..      ADD      r1,sp,#0x28
        0x080014f6:    4821        !H      LDR      r0,[pc,#132] ; [0x800157c] = 0x20020458
        0x080014f8:    f7fffe64    ..d.    BL       HAL_UART_Receive ; 0x80011c4
        0x080014fc:    f89d0028    ..(.    LDRB     r0,[sp,#0x28]
        0x08001500:    3830        08      SUBS     r0,r0,#0x30
        0x08001502:    280a        .(      CMP      r0,#0xa
        0x08001504:    d22a        *.      BCS      0x800155c ; Main_Menu + 264
        0x08001506:    e8dff000    ....    TBB      [pc,r0]
    $d
        0x0800150a:    052a        *.      DCW    1322
        0x0800150c:    0f0b0907    ....    DCD    252381447
        0x08001510:    251e1914    ...%    DCD    622729492
    $t
        0x08001514:    4630        0F      MOV      r0,r6
        0x08001516:    e004        ..      B        0x8001522 ; Main_Menu + 206
        0x08001518:    4640        @F      MOV      r0,r8
        0x0800151a:    e002        ..      B        0x8001522 ; Main_Menu + 206
        0x0800151c:    4648        HF      MOV      r0,r9
        0x0800151e:    e000        ..      B        0x8001522 ; Main_Menu + 206
        0x08001520:    4650        PF      MOV      r0,r10
        0x08001522:    f000faaf    ....    BL       SerialDownload ; 0x8001a84
        0x08001526:    e7bd        ..      B        0x80014a4 ; Main_Menu + 80
        0x08001528:    a0d9        ..      ADR      r0,{pc}+0x368 ; 0x8001890
        0x0800152a:    f000fb7f    ....    BL       Serial_PutString ; 0x8001c2c
        0x0800152e:    4630        0F      MOV      r0,r6
        0x08001530:    e00d        ..      B        0x800154e ; Main_Menu + 250
        0x08001532:    a0e3        ..      ADR      r0,{pc}+0x38e ; 0x80018c0
        0x08001534:    f000fb7a    ..z.    BL       Serial_PutString ; 0x8001c2c
        0x08001538:    4640        @F      MOV      r0,r8
        0x0800153a:    e008        ..      B        0x800154e ; Main_Menu + 250
        0x0800153c:    a0ec        ..      ADR      r0,{pc}+0x3b4 ; 0x80018f0
        0x0800153e:    f000fb75    ..u.    BL       Serial_PutString ; 0x8001c2c
        0x08001542:    4648        HF      MOV      r0,r9
        0x08001544:    e003        ..      B        0x800154e ; Main_Menu + 250
        0x08001546:    a0f6        ..      ADR      r0,{pc}+0x3da ; 0x8001920
        0x08001548:    f000fb70    ..p.    BL       Serial_PutString ; 0x8001c2c
        0x0800154c:    4650        PF      MOV      r0,r10
        0x0800154e:    f7fffef7    ....    BL       JumpToAddr ; 0x8001340
        0x08001552:    e7a7        ..      B        0x80014a4 ; Main_Menu + 80
        0x08001554:    48fe        .H      LDR      r0,[pc,#1016] ; [0x8001950] = 0x20020498
        0x08001556:    69c2        .i      LDR      r2,[r0,#0x1c]
        0x08001558:    a1fe        ..      ADR      r1,{pc}+0x3fc ; 0x8001954
        0x0800155a:    e205        ..      B        0x8001968 ; Main_Menu + 1300
        0x0800155c:    e242        B.      B        0x80019e4 ; Main_Menu + 1424
        0x0800155e:    e22e        ..      B        0x80019be ; Main_Menu + 1386
    $d
        0x08001560:    080024b0    .$..    DCD    134227120
        0x08001564:    080023cc    .#..    DCD    134226892
        0x08001568:    08002380    .#..    DCD    134226816
        0x0800156c:    08002418    .$..    DCD    134226968
        0x08001570:    08002464    d$..    DCD    134227044
        0x08001574:    0a0d0a0d    ....    DCD    168626701
        0x08001578:    00000000    ....    DCD    0
        0x0800157c:    20020458    X..     DCD    537003096
        0x08001580:    08020000    ....    DCD    134348800
        0x08001584:    08080000    ....    DCD    134742016
        0x08001588:    08120000    ....    DCD    135397376
        0x0800158c:    08180000    ....    DCD    135790592
        0x08001590:    3d3d0a0d    ..==    DCD    1027410445
        0x08001594:    3d3d3d3d    ====    DCD    1027423549
        0x08001598:    3d3d3d3d    ====    DCD    1027423549
        0x0800159c:    3d3d3d3d    ====    DCD    1027423549
        0x080015a0:    3d3d3d3d    ====    DCD    1027423549
        0x080015a4:    614d203d    = Ma    DCD    1632444477
        0x080015a8:    4d206e69    in M    DCD    1293971049
        0x080015ac:    20756e65    enu     DCD    544566885
        0x080015b0:    3d3d3d3d    ====    DCD    1027423549
        0x080015b4:    3d3d3d3d    ====    DCD    1027423549
        0x080015b8:    3d3d3d3d    ====    DCD    1027423549
        0x080015bc:    3d3d3d3d    ====    DCD    1027423549
        0x080015c0:    3d3d3d3d    ====    DCD    1027423549
        0x080015c4:    3d3d3d3d    ====    DCD    1027423549
        0x080015c8:    3d3d3d3d    ====    DCD    1027423549
        0x080015cc:    000a0a0d    ....    DCD    657933
        0x080015d0:    6f442020      Do    DCD    1866735648
        0x080015d4:    6f6c6e77    wnlo    DCD    1869377143
        0x080015d8:    69206461    ad i    DCD    1763730529
        0x080015dc:    6567616d    mage    DCD    1701273965
        0x080015e0:    206f7420     to     DCD    544175136
        0x080015e4:    20656874    the     DCD    543516788
        0x080015e8:    6c707041    Appl    DCD    1819308097
        0x080015ec:    74616369    icat    DCD    1952539497
        0x080015f0:    206e6f69    ion     DCD    544108393
        0x080015f4:    2d2d2031    1 --    DCD    757932081
        0x080015f8:    2d2d2d2d    ----    DCD    757935405
        0x080015fc:    2d2d2d2d    ----    DCD    757935405
        0x08001600:    2d2d2d2d    ----    DCD    757935405
        0x08001604:    2d2d2d2d    ----    DCD    757935405
        0x08001608:    0a0d3120     1..    DCD    168636704
        0x0800160c:    0000000a    ....    DCD    10
        0x08001610:    6f442020      Do    DCD    1866735648
        0x08001614:    6f6c6e77    wnlo    DCD    1869377143
        0x08001618:    69206461    ad i    DCD    1763730529
        0x0800161c:    6567616d    mage    DCD    1701273965
        0x08001620:    206f7420     to     DCD    544175136
        0x08001624:    20656874    the     DCD    543516788
        0x08001628:    6c707041    Appl    DCD    1819308097
        0x0800162c:    74616369    icat    DCD    1952539497
        0x08001630:    206e6f69    ion     DCD    544108393
        0x08001634:    2d2d2032    2 --    DCD    757932082
        0x08001638:    2d2d2d2d    ----    DCD    757935405
        0x0800163c:    2d2d2d2d    ----    DCD    757935405
        0x08001640:    2d2d2d2d    ----    DCD    757935405
        0x08001644:    2d2d2d2d    ----    DCD    757935405
        0x08001648:    0a0d3220     2..    DCD    168636960
        0x0800164c:    0000000a    ....    DCD    10
        0x08001650:    6f442020      Do    DCD    1866735648
        0x08001654:    6f6c6e77    wnlo    DCD    1869377143
        0x08001658:    69206461    ad i    DCD    1763730529
        0x0800165c:    6567616d    mage    DCD    1701273965
        0x08001660:    206f7420     to     DCD    544175136
        0x08001664:    20656874    the     DCD    543516788
        0x08001668:    6c707041    Appl    DCD    1819308097
        0x0800166c:    74616369    icat    DCD    1952539497
        0x08001670:    206e6f69    ion     DCD    544108393
        0x08001674:    2d2d2033    3 --    DCD    757932083
        0x08001678:    2d2d2d2d    ----    DCD    757935405
        0x0800167c:    2d2d2d2d    ----    DCD    757935405
        0x08001680:    2d2d2d2d    ----    DCD    757935405
        0x08001684:    2d2d2d2d    ----    DCD    757935405
        0x08001688:    0a0d3320     3..    DCD    168637216
        0x0800168c:    0000000a    ....    DCD    10
        0x08001690:    6f442020      Do    DCD    1866735648
        0x08001694:    6f6c6e77    wnlo    DCD    1869377143
        0x08001698:    69206461    ad i    DCD    1763730529
        0x0800169c:    6567616d    mage    DCD    1701273965
        0x080016a0:    206f7420     to     DCD    544175136
        0x080016a4:    20656874    the     DCD    543516788
        0x080016a8:    6c707041    Appl    DCD    1819308097
        0x080016ac:    74616369    icat    DCD    1952539497
        0x080016b0:    206e6f69    ion     DCD    544108393
        0x080016b4:    2d2d2034    4 --    DCD    757932084
        0x080016b8:    2d2d2d2d    ----    DCD    757935405
        0x080016bc:    2d2d2d2d    ----    DCD    757935405
        0x080016c0:    2d2d2d2d    ----    DCD    757935405
        0x080016c4:    2d2d2d2d    ----    DCD    757935405
        0x080016c8:    0a0d3420     4..    DCD    168637472
        0x080016cc:    0000000a    ....    DCD    10
        0x080016d0:    78452020      Ex    DCD    2017796128
        0x080016d4:    74756365    ecut    DCD    1953850213
        0x080016d8:    68742065    e th    DCD    1752440933
        0x080016dc:    70412065    e Ap    DCD    1883316325
        0x080016e0:    63696c70    plic    DCD    1667853424
        0x080016e4:    6f697461    atio    DCD    1869182049
        0x080016e8:    2031206e    n 1     DCD    540090478
        0x080016ec:    2d2d2d2d    ----    DCD    757935405
        0x080016f0:    2d2d2d2d    ----    DCD    757935405
        0x080016f4:    2d2d2d2d    ----    DCD    757935405
        0x080016f8:    2d2d2d2d    ----    DCD    757935405
        0x080016fc:    2d2d2d2d    ----    DCD    757935405
        0x08001700:    2d2d2d2d    ----    DCD    757935405
        0x08001704:    2d2d2d2d    ----    DCD    757935405
        0x08001708:    0a0d3520     5..    DCD    168637728
        0x0800170c:    0000000a    ....    DCD    10
        0x08001710:    78452020      Ex    DCD    2017796128
        0x08001714:    74756365    ecut    DCD    1953850213
        0x08001718:    68742065    e th    DCD    1752440933
        0x0800171c:    70412065    e Ap    DCD    1883316325
        0x08001720:    63696c70    plic    DCD    1667853424
        0x08001724:    6f697461    atio    DCD    1869182049
        0x08001728:    2032206e    n 2     DCD    540156014
        0x0800172c:    2d2d2d2d    ----    DCD    757935405
        0x08001730:    2d2d2d2d    ----    DCD    757935405
        0x08001734:    2d2d2d2d    ----    DCD    757935405
        0x08001738:    2d2d2d2d    ----    DCD    757935405
        0x0800173c:    2d2d2d2d    ----    DCD    757935405
        0x08001740:    2d2d2d2d    ----    DCD    757935405
        0x08001744:    2d2d2d2d    ----    DCD    757935405
        0x08001748:    0a0d3620     6..    DCD    168637984
        0x0800174c:    0000000a    ....    DCD    10
        0x08001750:    78452020      Ex    DCD    2017796128
        0x08001754:    74756365    ecut    DCD    1953850213
        0x08001758:    68742065    e th    DCD    1752440933
        0x0800175c:    70412065    e Ap    DCD    1883316325
        0x08001760:    63696c70    plic    DCD    1667853424
        0x08001764:    6f697461    atio    DCD    1869182049
        0x08001768:    2033206e    n 3     DCD    540221550
        0x0800176c:    2d2d2d2d    ----    DCD    757935405
        0x08001770:    2d2d2d2d    ----    DCD    757935405
        0x08001774:    2d2d2d2d    ----    DCD    757935405
        0x08001778:    2d2d2d2d    ----    DCD    757935405
        0x0800177c:    2d2d2d2d    ----    DCD    757935405
        0x08001780:    2d2d2d2d    ----    DCD    757935405
        0x08001784:    2d2d2d2d    ----    DCD    757935405
        0x08001788:    0a0d3720     7..    DCD    168638240
        0x0800178c:    0000000a    ....    DCD    10
        0x08001790:    78452020      Ex    DCD    2017796128
        0x08001794:    74756365    ecut    DCD    1953850213
        0x08001798:    68742065    e th    DCD    1752440933
        0x0800179c:    70412065    e Ap    DCD    1883316325
        0x080017a0:    63696c70    plic    DCD    1667853424
        0x080017a4:    6f697461    atio    DCD    1869182049
        0x080017a8:    2034206e    n 4     DCD    540287086
        0x080017ac:    2d2d2d2d    ----    DCD    757935405
        0x080017b0:    2d2d2d2d    ----    DCD    757935405
        0x080017b4:    2d2d2d2d    ----    DCD    757935405
        0x080017b8:    2d2d2d2d    ----    DCD    757935405
        0x080017bc:    2d2d2d2d    ----    DCD    757935405
        0x080017c0:    2d2d2d2d    ----    DCD    757935405
        0x080017c4:    2d2d2d2d    ----    DCD    757935405
        0x080017c8:    0a0d3820     8..    DCD    168638496
        0x080017cc:    0000000a    ....    DCD    10
        0x080017d0:    65472020      Ge    DCD    1699160096
        0x080017d4:    704f2074    t Op    DCD    1884233844
        0x080017d8:    6e6f6974    tion    DCD    1852795252
        0x080017dc:    74794220     Byt    DCD    1954103840
        0x080017e0:    2d2d2065    e --    DCD    757932133
        0x080017e4:    2d2d2d2d    ----    DCD    757935405
        0x080017e8:    2d2d2d2d    ----    DCD    757935405
        0x080017ec:    2d2d2d2d    ----    DCD    757935405
        0x080017f0:    2d2d2d2d    ----    DCD    757935405
        0x080017f4:    2d2d2d2d    ----    DCD    757935405
        0x080017f8:    2d2d2d2d    ----    DCD    757935405
        0x080017fc:    2d2d2d2d    ----    DCD    757935405
        0x08001800:    2d2d2d2d    ----    DCD    757935405
        0x08001804:    2d2d2d2d    ----    DCD    757935405
        0x08001808:    0a0d3920     9..    DCD    168638752
        0x0800180c:    0000000a    ....    DCD    10
        0x08001810:    65532020      Se    DCD    1699946528
        0x08001814:    65442074    t De    DCD    1698963572
        0x08001818:    6c756166    faul    DCD    1819631974
        0x0800181c:    70412074    t Ap    DCD    1883316340
        0x08001820:    63696c70    plic    DCD    1667853424
        0x08001824:    6f697461    atio    DCD    1869182049
        0x08001828:    2d2d206e    n --    DCD    757932142
        0x0800182c:    2d2d2d2d    ----    DCD    757935405
        0x08001830:    2d2d2d2d    ----    DCD    757935405
        0x08001834:    2d2d2d2d    ----    DCD    757935405
        0x08001838:    2d2d2d2d    ----    DCD    757935405
        0x0800183c:    2d2d2d2d    ----    DCD    757935405
        0x08001840:    2d2d2d2d    ----    DCD    757935405
        0x08001844:    2d2d2d2d    ----    DCD    757935405
        0x08001848:    0a0d3020     0..    DCD    168636448
        0x0800184c:    0000000a    ....    DCD    10
        0x08001850:    3d3d3d3d    ====    DCD    1027423549
        0x08001854:    3d3d3d3d    ====    DCD    1027423549
        0x08001858:    3d3d3d3d    ====    DCD    1027423549
        0x0800185c:    3d3d3d3d    ====    DCD    1027423549
        0x08001860:    3d3d3d3d    ====    DCD    1027423549
        0x08001864:    3d3d3d3d    ====    DCD    1027423549
        0x08001868:    3d3d3d3d    ====    DCD    1027423549
        0x0800186c:    3d3d3d3d    ====    DCD    1027423549
        0x08001870:    3d3d3d3d    ====    DCD    1027423549
        0x08001874:    3d3d3d3d    ====    DCD    1027423549
        0x08001878:    3d3d3d3d    ====    DCD    1027423549
        0x0800187c:    3d3d3d3d    ====    DCD    1027423549
        0x08001880:    3d3d3d3d    ====    DCD    1027423549
        0x08001884:    3d3d3d3d    ====    DCD    1027423549
        0x08001888:    0a0d3d3d    ==..    DCD    168639805
        0x0800188c:    0000000a    ....    DCD    10
        0x08001890:    72617453    Star    DCD    1918989395
        0x08001894:    70612074    t ap    DCD    1885413492
        0x08001898:    63696c70    plic    DCD    1667853424
        0x0800189c:    696f7461    atoi    DCD    1768911969
        0x080018a0:    2031206e    n 1     DCD    540090478
        0x080018a4:    676f7270    prog    DCD    1735357040
        0x080018a8:    206d6172    ram     DCD    544039282
        0x080018ac:    63657865    exec    DCD    1667594341
        0x080018b0:    6f697475    utio    DCD    1869182069
        0x080018b4:    2e2e2e6e    n...    DCD    774778478
        0x080018b8:    0d2e2e2e    ....    DCD    221130286
        0x080018bc:    00000a0a    ....    DCD    2570
        0x080018c0:    72617453    Star    DCD    1918989395
        0x080018c4:    70612074    t ap    DCD    1885413492
        0x080018c8:    63696c70    plic    DCD    1667853424
        0x080018cc:    696f7461    atoi    DCD    1768911969
        0x080018d0:    2032206e    n 2     DCD    540156014
        0x080018d4:    676f7270    prog    DCD    1735357040
        0x080018d8:    206d6172    ram     DCD    544039282
        0x080018dc:    63657865    exec    DCD    1667594341
        0x080018e0:    6f697475    utio    DCD    1869182069
        0x080018e4:    2e2e2e6e    n...    DCD    774778478
        0x080018e8:    0d2e2e2e    ....    DCD    221130286
        0x080018ec:    00000a0a    ....    DCD    2570
        0x080018f0:    72617453    Star    DCD    1918989395
        0x080018f4:    70612074    t ap    DCD    1885413492
        0x080018f8:    63696c70    plic    DCD    1667853424
        0x080018fc:    696f7461    atoi    DCD    1768911969
        0x08001900:    2033206e    n 3     DCD    540221550
        0x08001904:    676f7270    prog    DCD    1735357040
        0x08001908:    206d6172    ram     DCD    544039282
        0x0800190c:    63657865    exec    DCD    1667594341
        0x08001910:    6f697475    utio    DCD    1869182069
        0x08001914:    2e2e2e6e    n...    DCD    774778478
        0x08001918:    0d2e2e2e    ....    DCD    221130286
        0x0800191c:    00000a0a    ....    DCD    2570
        0x08001920:    72617453    Star    DCD    1918989395
        0x08001924:    70612074    t ap    DCD    1885413492
        0x08001928:    63696c70    plic    DCD    1667853424
        0x0800192c:    696f7461    atoi    DCD    1768911969
        0x08001930:    2034206e    n 4     DCD    540287086
        0x08001934:    676f7270    prog    DCD    1735357040
        0x08001938:    206d6172    ram     DCD    544039282
        0x0800193c:    63657865    exec    DCD    1667594341
        0x08001940:    6f697475    utio    DCD    1869182069
        0x08001944:    2e2e2e6e    n...    DCD    774778478
        0x08001948:    0d2e2e2e    ....    DCD    221130286
        0x0800194c:    00000a0a    ....    DCD    2570
        0x08001950:    20020498    ...     DCD    537003160
        0x08001954:    6f727245    Erro    DCD    1869771333
        0x08001958:    646f4372    rCod    DCD    1685013362
        0x0800195c:    203d2065    e =     DCD    540876901
        0x08001960:    0d582325    %#X.    DCD    223879973
        0x08001964:    00000a0a    ....    DCD    2570
    $t
        0x08001968:    a802        ..      ADD      r0,sp,#8
        0x0800196a:    f000fa8b    ....    BL       __0sprintf$5 ; 0x8001e84
        0x0800196e:    a802        ..      ADD      r0,sp,#8
        0x08001970:    f000f95c    ..\.    BL       Serial_PutString ; 0x8001c2c
        0x08001974:    a80b        ..      ADD      r0,sp,#0x2c
        0x08001976:    f7fefd40    ..@.    BL       FLASH_If_GetOptionByte ; 0x80003fa
        0x0800197a:    a124        $.      ADR      r1,{pc}+0x92 ; 0x8001a0c
        0x0800197c:    a802        ..      ADD      r0,sp,#8
        0x0800197e:    9a0d        ..      LDR      r2,[sp,#0x34]
        0x08001980:    f000fa80    ....    BL       __0sprintf$5 ; 0x8001e84
        0x08001984:    a802        ..      ADD      r0,sp,#8
        0x08001986:    f000f951    ..Q.    BL       Serial_PutString ; 0x8001c2c
        0x0800198a:    a125        %.      ADR      r1,{pc}+0x96 ; 0x8001a20
        0x0800198c:    a802        ..      ADD      r0,sp,#8
        0x0800198e:    9a0f        ..      LDR      r2,[sp,#0x3c]
        0x08001990:    f000fa78    ..x.    BL       __0sprintf$5 ; 0x8001e84
        0x08001994:    a802        ..      ADD      r0,sp,#8
        0x08001996:    f000f949    ..I.    BL       Serial_PutString ; 0x8001c2c
        0x0800199a:    f89d2044    ..D     LDRB     r2,[sp,#0x44]
        0x0800199e:    a125        %.      ADR      r1,{pc}+0x96 ; 0x8001a34
        0x080019a0:    a802        ..      ADD      r0,sp,#8
        0x080019a2:    f000fa6f    ..o.    BL       __0sprintf$5 ; 0x8001e84
        0x080019a6:    a802        ..      ADD      r0,sp,#8
        0x080019a8:    f000f940    ..@.    BL       Serial_PutString ; 0x8001c2c
        0x080019ac:    a126        &.      ADR      r1,{pc}+0x9c ; 0x8001a48
        0x080019ae:    a802        ..      ADD      r0,sp,#8
        0x080019b0:    9a10        ..      LDR      r2,[sp,#0x40]
        0x080019b2:    f000fa67    ..g.    BL       __0sprintf$5 ; 0x8001e84
        0x080019b6:    a802        ..      ADD      r0,sp,#8
        0x080019b8:    f000f938    ..8.    BL       Serial_PutString ; 0x8001c2c
        0x080019bc:    e572        r.      B        0x80014a4 ; Main_Menu + 80
        0x080019be:    4827        'H      LDR      r0,[pc,#156] ; [0x8001a5c] = 0x800233c
        0x080019c0:    f000f934    ..4.    BL       Serial_PutString ; 0x8001c2c
        0x080019c4:    462b        +F      MOV      r3,r5
        0x080019c6:    2201        ."      MOVS     r2,#1
        0x080019c8:    a90a        ..      ADD      r1,sp,#0x28
        0x080019ca:    4825        %H      LDR      r0,[pc,#148] ; [0x8001a60] = 0x20020458
        0x080019cc:    f7fffbfa    ....    BL       HAL_UART_Receive ; 0x80011c4
        0x080019d0:    f89d0028    ..(.    LDRB     r0,[sp,#0x28]
        0x080019d4:    2831        1(      CMP      r0,#0x31
        0x080019d6:    d007        ..      BEQ      0x80019e8 ; Main_Menu + 1428
        0x080019d8:    2832        2(      CMP      r0,#0x32
        0x080019da:    d009        ..      BEQ      0x80019f0 ; Main_Menu + 1436
        0x080019dc:    2833        3(      CMP      r0,#0x33
        0x080019de:    d00d        ..      BEQ      0x80019fc ; Main_Menu + 1448
        0x080019e0:    2834        4(      CMP      r0,#0x34
        0x080019e2:    d00f        ..      BEQ      0x8001a04 ; Main_Menu + 1456
        0x080019e4:    a01f        ..      ADR      r0,{pc}+0x80 ; 0x8001a64
        0x080019e6:    e7e7        ..      B        0x80019b8 ; Main_Menu + 1380
        0x080019e8:    e9cd4600    ...F    STRD     r4,r6,[sp,#0]
        0x080019ec:    4668        hF      MOV      r0,sp
        0x080019ee:    e002        ..      B        0x80019f6 ; Main_Menu + 1442
        0x080019f0:    e9cd4800    ...H    STRD     r4,r8,[sp,#0]
        0x080019f4:    4668        hF      MOV      r0,sp
        0x080019f6:    f000fc87    ....    BL       update_config_data ; 0x8002308
        0x080019fa:    e553        S.      B        0x80014a4 ; Main_Menu + 80
        0x080019fc:    e9cd4900    ...I    STRD     r4,r9,[sp,#0]
        0x08001a00:    4668        hF      MOV      r0,sp
        0x08001a02:    e7f8        ..      B        0x80019f6 ; Main_Menu + 1442
        0x08001a04:    e9cd4a00    ...J    STRD     r4,r10,[sp,#0]
        0x08001a08:    4668        hF      MOV      r0,sp
        0x08001a0a:    e7f4        ..      B        0x80019f6 ; Main_Menu + 1442
    $d
        0x08001a0c:    53505257    WRPS    DCD    1397772887
        0x08001a10:    6f746365    ecto    DCD    1869898597
        0x08001a14:    203d2072    r =     DCD    540876914
        0x08001a18:    0d582325    %#X.    DCD    223879973
        0x08001a1c:    0000000a    ....    DCD    10
        0x08001a20:    4c504452    RDPL    DCD    1280328786
        0x08001a24:    6c657665    evel    DCD    1818588773
        0x08001a28:    25203d20     = %    DCD    622869792
        0x08001a2c:    0a0d5823    #X..    DCD    168646691
        0x08001a30:    00000000    ....    DCD    0
        0x08001a34:    52455355    USER    DCD    1380275029
        0x08001a38:    666e6f43    Conf    DCD    1718513475
        0x08001a3c:    3d206769    ig =    DCD    1025533801
        0x08001a40:    58232520     %#X    DCD    1478698272
        0x08001a44:    00000a0d    ....    DCD    2573
        0x08001a48:    4c524f42    BORL    DCD    1280462658
        0x08001a4c:    6c657665    evel    DCD    1818588773
        0x08001a50:    25203d20     = %    DCD    622869792
        0x08001a54:    0a0d5823    #X..    DCD    168646691
        0x08001a58:    0000000a    ....    DCD    10
        0x08001a5c:    0800233c    <#..    DCD    134226748
        0x08001a60:    20020458    X..     DCD    537003096
        0x08001a64:    61766e49    Inva    DCD    1635151433
        0x08001a68:    2064696c    lid     DCD    543451500
        0x08001a6c:    72616863    char    DCD    1918986339
        0x08001a70:    65746361    acte    DCD    1702126433
        0x08001a74:    0a0d2172    r!..    DCD    168632690
        0x08001a78:    00000000    ....    DCD    0
    $t
    i.MemManage_Handler
    MemManage_Handler
        0x08001a7c:    e7fe        ..      B        MemManage_Handler ; 0x8001a7c
    i.NMI_Handler
    NMI_Handler
        0x08001a7e:    4770        pG      BX       lr
    i.PendSV_Handler
    PendSV_Handler
        0x08001a80:    4770        pG      BX       lr
    i.SVC_Handler
    SVC_Handler
        0x08001a82:    4770        pG      BX       lr
    i.SerialDownload
    SerialDownload
        0x08001a84:    b5f0        ..      PUSH     {r4-r7,lr}
        0x08001a86:    4605        .F      MOV      r5,r0
        0x08001a88:    b0c1        ..      SUB      sp,sp,#0x104
        0x08001a8a:    a032        2.      ADR      r0,{pc}+0xca ; 0x8001b54
        0x08001a8c:    f000f8ce    ....    BL       Serial_PutString ; 0x8001c2c
        0x08001a90:    f64e2360    N.`#    MOV      r3,#0xea60
        0x08001a94:    f44f7280    O..r    MOV      r2,#0x100
        0x08001a98:    4669        iF      MOV      r1,sp
        0x08001a9a:    4838        8H      LDR      r0,[pc,#224] ; [0x8001b7c] = 0x20020458
        0x08001a9c:    f7fffb92    ....    BL       HAL_UART_Receive ; 0x80011c4
        0x08001aa0:    b108        ..      CBZ      r0,0x8001aa6 ; SerialDownload + 34
        0x08001aa2:    a037        7.      ADR      r0,{pc}+0xde ; 0x8001b80
        0x08001aa4:    e051        Q.      B        0x8001b4a ; SerialDownload + 198
        0x08001aa6:    9830        0.      LDR      r0,[sp,#0xc0]
        0x08001aa8:    f44f427f    O..B    MOV      r2,#0xff00
        0x08001aac:    ba00        ..      REV      r0,r0
        0x08001aae:    f02004ff     ...    BIC      r4,r0,#0xff
        0x08001ab2:    f89d00c3    ....    LDRB     r0,[sp,#0xc3]
        0x08001ab6:    f2427310    B..s    MOV      r3,#0x2710
        0x08001aba:    4304        .C      ORRS     r4,r4,r0
        0x08001abc:    9831        1.      LDR      r0,[sp,#0xc4]
        0x08001abe:    ba00        ..      REV      r0,r0
        0x08001ac0:    f02006ff     ...    BIC      r6,r0,#0xff
        0x08001ac4:    f89d00c7    ....    LDRB     r0,[sp,#0xc7]
        0x08001ac8:    4306        .C      ORRS     r6,r6,r0
        0x08001aca:    4294        .B      CMP      r4,r2
        0x08001acc:    d90b        ..      BLS      0x8001ae6 ; SerialDownload + 98
        0x08001ace:    461f        .F      MOV      r7,r3
        0x08001ad0:    492e        .I      LDR      r1,[pc,#184] ; [0x8001b8c] = 0x20000418
        0x08001ad2:    482a        *H      LDR      r0,[pc,#168] ; [0x8001b7c] = 0x20020458
        0x08001ad4:    f7fffb76    ..v.    BL       HAL_UART_Receive ; 0x80011c4
        0x08001ad8:    f5a4407f    ...@    SUB      r0,r4,#0xff00
        0x08001adc:    b282        ..      UXTH     r2,r0
        0x08001ade:    463b        ;F      MOV      r3,r7
        0x08001ae0:    492b        +I      LDR      r1,[pc,#172] ; [0x8001b90] = 0x20010318
        0x08001ae2:    4826        &H      LDR      r0,[pc,#152] ; [0x8001b7c] = 0x20020458
        0x08001ae4:    e002        ..      B        0x8001aec ; SerialDownload + 104
        0x08001ae6:    b2a2        ..      UXTH     r2,r4
        0x08001ae8:    4928        (I      LDR      r1,[pc,#160] ; [0x8001b8c] = 0x20000418
        0x08001aea:    4824        $H      LDR      r0,[pc,#144] ; [0x8001b7c] = 0x20020458
        0x08001aec:    f7fffb6a    ..j.    BL       HAL_UART_Receive ; 0x80011c4
        0x08001af0:    a128        (.      ADR      r1,{pc}+0xa4 ; 0x8001b94
        0x08001af2:    4668        hF      MOV      r0,sp
        0x08001af4:    f7fefbb9    ....    BL       strcmp ; 0x800026a
        0x08001af8:    b108        ..      CBZ      r0,0x8001afe ; SerialDownload + 122
        0x08001afa:    a02c        ,.      ADR      r0,{pc}+0xb2 ; 0x8001bac
        0x08001afc:    e025        %.      B        0x8001b4a ; SerialDownload + 198
        0x08001afe:    4621        !F      MOV      r1,r4
        0x08001b00:    4822        "H      LDR      r0,[pc,#136] ; [0x8001b8c] = 0x20000418
        0x08001b02:    f7fefbf3    ....    BL       Cal_CRC32 ; 0x80002ec
        0x08001b06:    42b0        .B      CMP      r0,r6
        0x08001b08:    d107        ..      BNE      0x8001b1a ; SerialDownload + 150
        0x08001b0a:    a037        7.      ADR      r0,{pc}+0xde ; 0x8001be8
        0x08001b0c:    f000f88e    ....    BL       Serial_PutString ; 0x8001c2c
        0x08001b10:    4839        9H      LDR      r0,[pc,#228] ; [0x8001bf8] = 0x8020000
        0x08001b12:    4285        .B      CMP      r5,r0
        0x08001b14:    d103        ..      BNE      0x8001b1e ; SerialDownload + 154
        0x08001b16:    2005        .       MOVS     r0,#5
        0x08001b18:    e00f        ..      B        0x8001b3a ; SerialDownload + 182
        0x08001b1a:    a038        8.      ADR      r0,{pc}+0xe2 ; 0x8001bfc
        0x08001b1c:    e015        ..      B        0x8001b4a ; SerialDownload + 198
        0x08001b1e:    483b        ;H      LDR      r0,[pc,#236] ; [0x8001c0c] = 0x8080000
        0x08001b20:    4285        .B      CMP      r5,r0
        0x08001b22:    d101        ..      BNE      0x8001b28 ; SerialDownload + 164
        0x08001b24:    2008        .       MOVS     r0,#8
        0x08001b26:    e008        ..      B        0x8001b3a ; SerialDownload + 182
        0x08001b28:    4839        9H      LDR      r0,[pc,#228] ; [0x8001c10] = 0x8120000
        0x08001b2a:    4285        .B      CMP      r5,r0
        0x08001b2c:    d101        ..      BNE      0x8001b32 ; SerialDownload + 174
        0x08001b2e:    2011        .       MOVS     r0,#0x11
        0x08001b30:    e003        ..      B        0x8001b3a ; SerialDownload + 182
        0x08001b32:    4838        8H      LDR      r0,[pc,#224] ; [0x8001c14] = 0x8180000
        0x08001b34:    4285        .B      CMP      r5,r0
        0x08001b36:    d102        ..      BNE      0x8001b3e ; SerialDownload + 186
        0x08001b38:    2014        .       MOVS     r0,#0x14
        0x08001b3a:    f7fefc41    ..A.    BL       FLASH_If_Erase ; 0x80003c0
        0x08001b3e:    08a2        ..      LSRS     r2,r4,#2
        0x08001b40:    4912        .I      LDR      r1,[pc,#72] ; [0x8001b8c] = 0x20000418
        0x08001b42:    4628        (F      MOV      r0,r5
        0x08001b44:    f7fefc6e    ..n.    BL       FLASH_If_Write ; 0x8000424
        0x08001b48:    a033        3.      ADR      r0,{pc}+0xd0 ; 0x8001c18
        0x08001b4a:    f000f86f    ..o.    BL       Serial_PutString ; 0x8001c2c
        0x08001b4e:    b041        A.      ADD      sp,sp,#0x104
        0x08001b50:    bdf0        ..      POP      {r4-r7,pc}
    $d
        0x08001b52:    0000        ..      DCW    0
        0x08001b54:    74696157    Wait    DCD    1953063255
        0x08001b58:    20676e69    ing     DCD    543649385
        0x08001b5c:    20726f66    for     DCD    544370534
        0x08001b60:    20656874    the     DCD    543516788
        0x08001b64:    656c6966    file    DCD    1701603686
        0x08001b68:    206f7420     to     DCD    544175136
        0x08001b6c:    73206562    be s    DCD    1931502946
        0x08001b70:    20746e65    ent     DCD    544501349
        0x08001b74:    202e2e2e    ...     DCD    539897390
        0x08001b78:    00000a0d    ....    DCD    2573
        0x08001b7c:    20020458    X..     DCD    537003096
        0x08001b80:    656d6954    Time    DCD    1701669204
        0x08001b84:    0d74756f    out.    DCD    225736047
        0x08001b88:    0000000a    ....    DCD    10
        0x08001b8c:    20000418    ...     DCD    536871960
        0x08001b90:    20010318    ...     DCD    536937240
        0x08001b94:    54454e4f    ONET    DCD    1413828175
        0x08001b98:    2d4a422d    -BJ-    DCD    759841325
        0x08001b9c:    54534554    TEST    DCD    1414743380
        0x08001ba0:    52414f42    BOAR    DCD    1380011842
        0x08001ba4:    302e3244    D2.0    DCD    808333892
        0x08001ba8:    00000000    ....    DCD    0
        0x08001bac:    20656854    The     DCD    543516756
        0x08001bb0:    656c6966    file    DCD    1701603686
        0x08001bb4:    20736920     is     DCD    544434464
        0x08001bb8:    20746f6e    not     DCD    544501614
        0x08001bbc:    20656874    the     DCD    543516788
        0x08001bc0:    6d726966    firm    DCD    1836214630
        0x08001bc4:    65726177    ware    DCD    1701994871
        0x08001bc8:    726f6320     cor    DCD    1919902496
        0x08001bcc:    70736572    resp    DCD    1886610802
        0x08001bd0:    69646e6f    ondi    DCD    1768189551
        0x08001bd4:    7420676e    ng t    DCD    1948280686
        0x08001bd8:    6874206f    o th    DCD    1752440943
        0x08001bdc:    6d207369    is m    DCD    1830843241
        0x08001be0:    6c75646f    odul    DCD    1819632751
        0x08001be4:    000a0d65    e...    DCD    658789
        0x08001be8:    33435243    CRC3    DCD    860049987
        0x08001bec:    75732032    2 su    DCD    1970479154
        0x08001bf0:    73656363    cces    DCD    1936024419
        0x08001bf4:    000a0d73    s...    DCD    658803
        0x08001bf8:    08020000    ....    DCD    134348800
        0x08001bfc:    33435243    CRC3    DCD    860049987
        0x08001c00:    61662032    2 fa    DCD    1634082866
        0x08001c04:    64656c69    iled    DCD    1684368489
        0x08001c08:    00000a0d    ....    DCD    2573
        0x08001c0c:    08080000    ....    DCD    134742016
        0x08001c10:    08120000    ....    DCD    135397376
        0x08001c14:    08180000    ....    DCD    135790592
        0x08001c18:    6e776f44    Down    DCD    1853321028
        0x08001c1c:    64616f6c    load    DCD    1684107116
        0x08001c20:    63757320     suc    DCD    1668641568
        0x08001c24:    73736563    cess    DCD    1936942435
        0x08001c28:    00000a0d    ....    DCD    2573
    $t
    i.Serial_PutString
    Serial_PutString
        0x08001c2c:    2200        ."      MOVS     r2,#0
        0x08001c2e:    e001        ..      B        0x8001c34 ; Serial_PutString + 8
        0x08001c30:    1c52        R.      ADDS     r2,r2,#1
        0x08001c32:    b292        ..      UXTH     r2,r2
        0x08001c34:    5c81        .\      LDRB     r1,[r0,r2]
        0x08001c36:    2900        .)      CMP      r1,#0
        0x08001c38:    d1fa        ..      BNE      0x8001c30 ; Serial_PutString + 4
        0x08001c3a:    4601        .F      MOV      r1,r0
        0x08001c3c:    2364        d#      MOVS     r3,#0x64
        0x08001c3e:    4801        .H      LDR      r0,[pc,#4] ; [0x8001c44] = 0x20020458
        0x08001c40:    f7ffbb1f    ....    B        HAL_UART_Transmit ; 0x8001282
    $d
        0x08001c44:    20020458    X..     DCD    537003096
    $t
    i.SysTick_Handler
    SysTick_Handler
        0x08001c48:    f7febec6    ....    B        HAL_IncTick ; 0x80009d8
    i.SystemClock_Config
    SystemClock_Config
        0x08001c4c:    b530        0.      PUSH     {r4,r5,lr}
        0x08001c4e:    b093        ..      SUB      sp,sp,#0x4c
        0x08001c50:    2130        0!      MOVS     r1,#0x30
        0x08001c52:    4668        hF      MOV      r0,sp
        0x08001c54:    f7fefafe    ....    BL       __aeabi_memclr ; 0x8000254
        0x08001c58:    2114        .!      MOVS     r1,#0x14
        0x08001c5a:    a80c        ..      ADD      r0,sp,#0x30
        0x08001c5c:    f7fefafa    ....    BL       __aeabi_memclr ; 0x8000254
        0x08001c60:    481b        .H      LDR      r0,[pc,#108] ; [0x8001cd0] = 0x40023840
        0x08001c62:    2500        .%      MOVS     r5,#0
        0x08001c64:    6801        .h      LDR      r1,[r0,#0]
        0x08001c66:    f0415180    A..Q    ORR      r1,r1,#0x10000000
        0x08001c6a:    6001        .`      STR      r1,[r0,#0]
        0x08001c6c:    6800        .h      LDR      r0,[r0,#0]
        0x08001c6e:    f0005080    ...P    AND      r0,r0,#0x10000000
        0x08001c72:    9011        ..      STR      r0,[sp,#0x44]
        0x08001c74:    4817        .H      LDR      r0,[pc,#92] ; [0x8001cd4] = 0x40007000
        0x08001c76:    6801        .h      LDR      r1,[r0,#0]
        0x08001c78:    f4414140    A.@A    ORR      r1,r1,#0xc000
        0x08001c7c:    6001        .`      STR      r1,[r0,#0]
        0x08001c7e:    6800        .h      LDR      r0,[r0,#0]
        0x08001c80:    2402        .$      MOVS     r4,#2
        0x08001c82:    f4004040    ..@@    AND      r0,r0,#0xc000
        0x08001c86:    9011        ..      STR      r0,[sp,#0x44]
        0x08001c88:    2001        .       MOVS     r0,#1
        0x08001c8a:    9000        ..      STR      r0,[sp,#0]
        0x08001c8c:    0400        ..      LSLS     r0,r0,#16
        0x08001c8e:    9001        ..      STR      r0,[sp,#4]
        0x08001c90:    0180        ..      LSLS     r0,r0,#6
        0x08001c92:    e9cd4006    ...@    STRD     r4,r0,[sp,#0x18]
        0x08001c96:    2014        .       MOVS     r0,#0x14
        0x08001c98:    9008        ..      STR      r0,[sp,#0x20]
        0x08001c9a:    f44f70b4    O..p    MOV      r0,#0x168
        0x08001c9e:    e9cd0409    ....    STRD     r0,r4,[sp,#0x24]
        0x08001ca2:    2004        .       MOVS     r0,#4
        0x08001ca4:    900b        ..      STR      r0,[sp,#0x2c]
        0x08001ca6:    4668        hF      MOV      r0,sp
        0x08001ca8:    f7fff846    ..F.    BL       HAL_RCC_OscConfig ; 0x8000d38
        0x08001cac:    f7feff20    .. .    BL       HAL_PWREx_EnableOverDrive ; 0x8000af0
        0x08001cb0:    a90c        ..      ADD      r1,sp,#0x30
        0x08001cb2:    200f        .       MOVS     r0,#0xf
        0x08001cb4:    e8810031    ..1.    STM      r1,{r0,r4,r5}
        0x08001cb8:    f44f50a0    O..P    MOV      r0,#0x1400
        0x08001cbc:    900f        ..      STR      r0,[sp,#0x3c]
        0x08001cbe:    02e0        ..      LSLS     r0,r4,#11
        0x08001cc0:    9010        ..      STR      r0,[sp,#0x40]
        0x08001cc2:    2105        .!      MOVS     r1,#5
        0x08001cc4:    a80c        ..      ADD      r0,sp,#0x30
        0x08001cc6:    f7feff4b    ..K.    BL       HAL_RCC_ClockConfig ; 0x8000b60
        0x08001cca:    b013        ..      ADD      sp,sp,#0x4c
        0x08001ccc:    bd30        0.      POP      {r4,r5,pc}
    $d
        0x08001cce:    0000        ..      DCW    0
        0x08001cd0:    40023840    @8.@    DCD    1073887296
        0x08001cd4:    40007000    .p.@    DCD    1073770496
    $t
    i.SystemInit
    SystemInit
        0x08001cd8:    4805        .H      LDR      r0,[pc,#20] ; [0x8001cf0] = 0xe000ed88
        0x08001cda:    6801        .h      LDR      r1,[r0,#0]
        0x08001cdc:    f4410170    A.p.    ORR      r1,r1,#0xf00000
        0x08001ce0:    6001        .`      STR      r1,[r0,#0]
        0x08001ce2:    4903        .I      LDR      r1,[pc,#12] ; [0x8001cf0] = 0xe000ed88
        0x08001ce4:    f04f6000    O..`    MOV      r0,#0x8000000
        0x08001ce8:    3980        .9      SUBS     r1,r1,#0x80
        0x08001cea:    6008        .`      STR      r0,[r1,#0]
        0x08001cec:    4770        pG      BX       lr
    $d
        0x08001cee:    0000        ..      DCW    0
        0x08001cf0:    e000ed88    ....    DCD    3758157192
    $t
    i.UART_SetConfig
    UART_SetConfig
        0x08001cf4:    e92d41f0    -..A    PUSH     {r4-r8,lr}
        0x08001cf8:    4604        .F      MOV      r4,r0
        0x08001cfa:    6800        .h      LDR      r0,[r0,#0]
        0x08001cfc:    6901        .i      LDR      r1,[r0,#0x10]
        0x08001cfe:    68e2        .h      LDR      r2,[r4,#0xc]
        0x08001d00:    f4215140    !.@Q    BIC      r1,r1,#0x3000
        0x08001d04:    4311        .C      ORRS     r1,r1,r2
        0x08001d06:    6101        .a      STR      r1,[r0,#0x10]
        0x08001d08:    6921        !i      LDR      r1,[r4,#0x10]
        0x08001d0a:    68a0        .h      LDR      r0,[r4,#8]
        0x08001d0c:    69e2        .i      LDR      r2,[r4,#0x1c]
        0x08001d0e:    4308        .C      ORRS     r0,r0,r1
        0x08001d10:    6961        ai      LDR      r1,[r4,#0x14]
        0x08001d12:    4311        .C      ORRS     r1,r1,r2
        0x08001d14:    4308        .C      ORRS     r0,r0,r1
        0x08001d16:    6821        !h      LDR      r1,[r4,#0]
        0x08001d18:    68ca        .h      LDR      r2,[r1,#0xc]
        0x08001d1a:    f249630c    I..c    MOV      r3,#0x960c
        0x08001d1e:    439a        .C      BICS     r2,r2,r3
        0x08001d20:    4302        .C      ORRS     r2,r2,r0
        0x08001d22:    60ca        .`      STR      r2,[r1,#0xc]
        0x08001d24:    6820         h      LDR      r0,[r4,#0]
        0x08001d26:    6941        Ai      LDR      r1,[r0,#0x14]
        0x08001d28:    69a2        .i      LDR      r2,[r4,#0x18]
        0x08001d2a:    f4217140    !.@q    BIC      r1,r1,#0x300
        0x08001d2e:    4311        .C      ORRS     r1,r1,r2
        0x08001d30:    6141        Aa      STR      r1,[r0,#0x14]
        0x08001d32:    69e0        .i      LDR      r0,[r4,#0x1c]
        0x08001d34:    2719        .'      MOVS     r7,#0x19
        0x08001d36:    2564        d%      MOVS     r5,#0x64
        0x08001d38:    2632        2&      MOVS     r6,#0x32
        0x08001d3a:    f5b04f00    ...O    CMP      r0,#0x8000
        0x08001d3e:    4a35        5J      LDR      r2,[pc,#212] ; [0x8001e14] = 0x40011400
        0x08001d40:    4935        5I      LDR      r1,[pc,#212] ; [0x8001e18] = 0x40011000
        0x08001d42:    6820         h      LDR      r0,[r4,#0]
        0x08001d44:    f04f0800    O...    MOV      r8,#0
        0x08001d48:    d006        ..      BEQ      0x8001d58 ; UART_SetConfig + 100
        0x08001d4a:    4288        .B      CMP      r0,r1
        0x08001d4c:    d001        ..      BEQ      0x8001d52 ; UART_SetConfig + 94
        0x08001d4e:    4290        .B      CMP      r0,r2
        0x08001d50:    d136        6.      BNE      0x8001dc0 ; UART_SetConfig + 204
        0x08001d52:    f7feffaf    ....    BL       HAL_RCC_GetPCLK2Freq ; 0x8000cb4
        0x08001d56:    e035        5.      B        0x8001dc4 ; UART_SetConfig + 208
        0x08001d58:    4288        .B      CMP      r0,r1
        0x08001d5a:    d001        ..      BEQ      0x8001d60 ; UART_SetConfig + 108
        0x08001d5c:    4290        .B      CMP      r0,r2
        0x08001d5e:    d102        ..      BNE      0x8001d66 ; UART_SetConfig + 114
        0x08001d60:    f7feffa8    ....    BL       HAL_RCC_GetPCLK2Freq ; 0x8000cb4
        0x08001d64:    e001        ..      B        0x8001d6a ; UART_SetConfig + 118
        0x08001d66:    f7feff95    ....    BL       HAL_RCC_GetPCLK1Freq ; 0x8000c94
        0x08001d6a:    6861        ah      LDR      r1,[r4,#4]
        0x08001d6c:    184a        J.      ADDS     r2,r1,r1
        0x08001d6e:    fba00107    ....    UMULL    r0,r1,r0,r7
        0x08001d72:    eb480308    H...    ADC      r3,r8,r8
        0x08001d76:    f7fefa35    ..5.    BL       __aeabi_uldivmod ; 0x80001e4
        0x08001d7a:    4601        .F      MOV      r1,r0
        0x08001d7c:    fbb0f0f5    ....    UDIV     r0,r0,r5
        0x08001d80:    0102        ..      LSLS     r2,r0,#4
        0x08001d82:    fbb1f0f5    ....    UDIV     r0,r1,r5
        0x08001d86:    f06f0318    o...    MVN      r3,#0x18
        0x08001d8a:    4358        XC      MULS     r0,r3,r0
        0x08001d8c:    eb010080    ....    ADD      r0,r1,r0,LSL #2
        0x08001d90:    eb0600c0    ....    ADD      r0,r6,r0,LSL #3
        0x08001d94:    fbb0f0f5    ....    UDIV     r0,r0,r5
        0x08001d98:    f00000f8    ....    AND      r0,r0,#0xf8
        0x08001d9c:    eb020240    ..@.    ADD      r2,r2,r0,LSL #1
        0x08001da0:    fbb1f0f5    ....    UDIV     r0,r1,r5
        0x08001da4:    4358        XC      MULS     r0,r3,r0
        0x08001da6:    eb010080    ....    ADD      r0,r1,r0,LSL #2
        0x08001daa:    eb0600c0    ....    ADD      r0,r6,r0,LSL #3
        0x08001dae:    fbb0f0f5    ....    UDIV     r0,r0,r5
        0x08001db2:    f0000007    ....    AND      r0,r0,#7
        0x08001db6:    6821        !h      LDR      r1,[r4,#0]
        0x08001db8:    4410        .D      ADD      r0,r0,r2
        0x08001dba:    6088        .`      STR      r0,[r1,#8]
        0x08001dbc:    e8bd81f0    ....    POP      {r4-r8,pc}
        0x08001dc0:    f7feff68    ..h.    BL       HAL_RCC_GetPCLK1Freq ; 0x8000c94
        0x08001dc4:    6861        ah      LDR      r1,[r4,#4]
        0x08001dc6:    0f8b        ..      LSRS     r3,r1,#30
        0x08001dc8:    008a        ..      LSLS     r2,r1,#2
        0x08001dca:    fba00107    ....    UMULL    r0,r1,r0,r7
        0x08001dce:    f7fefa09    ....    BL       __aeabi_uldivmod ; 0x80001e4
        0x08001dd2:    4601        .F      MOV      r1,r0
        0x08001dd4:    fbb0f0f5    ....    UDIV     r0,r0,r5
        0x08001dd8:    f06f0218    o...    MVN      r2,#0x18
        0x08001ddc:    4350        PC      MULS     r0,r2,r0
        0x08001dde:    eb010080    ....    ADD      r0,r1,r0,LSL #2
        0x08001de2:    eb061000    ....    ADD      r0,r6,r0,LSL #4
        0x08001de6:    fbb0f0f5    ....    UDIV     r0,r0,r5
        0x08001dea:    f00002f0    ....    AND      r2,r0,#0xf0
        0x08001dee:    fbb1f0f5    ....    UDIV     r0,r1,r5
        0x08001df2:    eb021200    ....    ADD      r2,r2,r0,LSL #4
        0x08001df6:    fbb1f0f5    ....    UDIV     r0,r1,r5
        0x08001dfa:    f06f0318    o...    MVN      r3,#0x18
        0x08001dfe:    4358        XC      MULS     r0,r3,r0
        0x08001e00:    eb010080    ....    ADD      r0,r1,r0,LSL #2
        0x08001e04:    eb061000    ....    ADD      r0,r6,r0,LSL #4
        0x08001e08:    fbb0f0f5    ....    UDIV     r0,r0,r5
        0x08001e0c:    f000000f    ....    AND      r0,r0,#0xf
        0x08001e10:    e7d1        ..      B        0x8001db6 ; UART_SetConfig + 194
    $d
        0x08001e12:    0000        ..      DCW    0
        0x08001e14:    40011400    ...@    DCD    1073812480
        0x08001e18:    40011000    ...@    DCD    1073811456
    $t
    i.UART_WaitOnFlagUntilTimeout
    UART_WaitOnFlagUntilTimeout
        0x08001e1c:    e92d41f0    -..A    PUSH     {r4-r8,lr}
        0x08001e20:    4698        .F      MOV      r8,r3
        0x08001e22:    4617        .F      MOV      r7,r2
        0x08001e24:    460e        .F      MOV      r6,r1
        0x08001e26:    4604        .F      MOV      r4,r0
        0x08001e28:    9d06        ..      LDR      r5,[sp,#0x18]
        0x08001e2a:    e01d        ..      B        0x8001e68 ; UART_WaitOnFlagUntilTimeout + 76
        0x08001e2c:    1c68        h.      ADDS     r0,r5,#1
        0x08001e2e:    d01b        ..      BEQ      0x8001e68 ; UART_WaitOnFlagUntilTimeout + 76
        0x08001e30:    b12d        -.      CBZ      r5,0x8001e3e ; UART_WaitOnFlagUntilTimeout + 34
        0x08001e32:    f7fefdcb    ....    BL       HAL_GetTick ; 0x80009cc
        0x08001e36:    eba00008    ....    SUB      r0,r0,r8
        0x08001e3a:    42a8        .B      CMP      r0,r5
        0x08001e3c:    d914        ..      BLS      0x8001e68 ; UART_WaitOnFlagUntilTimeout + 76
        0x08001e3e:    6820         h      LDR      r0,[r4,#0]
        0x08001e40:    68c1        .h      LDR      r1,[r0,#0xc]
        0x08001e42:    f42171d0    !..q    BIC      r1,r1,#0x1a0
        0x08001e46:    60c1        .`      STR      r1,[r0,#0xc]
        0x08001e48:    6820         h      LDR      r0,[r4,#0]
        0x08001e4a:    6941        Ai      LDR      r1,[r0,#0x14]
        0x08001e4c:    f0210101    !...    BIC      r1,r1,#1
        0x08001e50:    6141        Aa      STR      r1,[r0,#0x14]
        0x08001e52:    2020                MOVS     r0,#0x20
        0x08001e54:    f8840039    ..9.    STRB     r0,[r4,#0x39]
        0x08001e58:    f884003a    ..:.    STRB     r0,[r4,#0x3a]
        0x08001e5c:    2000        .       MOVS     r0,#0
        0x08001e5e:    f8840038    ..8.    STRB     r0,[r4,#0x38]
        0x08001e62:    2003        .       MOVS     r0,#3
        0x08001e64:    e8bd81f0    ....    POP      {r4-r8,pc}
        0x08001e68:    6820         h      LDR      r0,[r4,#0]
        0x08001e6a:    6800        .h      LDR      r0,[r0,#0]
        0x08001e6c:    ea360000    6...    BICS     r0,r6,r0
        0x08001e70:    d004        ..      BEQ      0x8001e7c ; UART_WaitOnFlagUntilTimeout + 96
        0x08001e72:    2000        .       MOVS     r0,#0
        0x08001e74:    42b8        .B      CMP      r0,r7
        0x08001e76:    d0d9        ..      BEQ      0x8001e2c ; UART_WaitOnFlagUntilTimeout + 16
        0x08001e78:    2000        .       MOVS     r0,#0
        0x08001e7a:    e7f3        ..      B        0x8001e64 ; UART_WaitOnFlagUntilTimeout + 72
        0x08001e7c:    2001        .       MOVS     r0,#1
        0x08001e7e:    e7f9        ..      B        0x8001e74 ; UART_WaitOnFlagUntilTimeout + 88
    i.UsageFault_Handler
    UsageFault_Handler
        0x08001e80:    e7fe        ..      B        UsageFault_Handler ; 0x8001e80
        0x08001e82:    0000        ..      MOVS     r0,r0
    i.__0sprintf$5
    __0sprintf$5
    __1sprintf$5
    __2sprintf
        0x08001e84:    b40f        ..      PUSH     {r0-r3}
        0x08001e86:    4b08        .K      LDR      r3,[pc,#32] ; [0x8001ea8] = 0x80021ad
        0x08001e88:    b510        ..      PUSH     {r4,lr}
        0x08001e8a:    a904        ..      ADD      r1,sp,#0x10
        0x08001e8c:    aa02        ..      ADD      r2,sp,#8
        0x08001e8e:    9803        ..      LDR      r0,[sp,#0xc]
        0x08001e90:    f000f82c    ..,.    BL       _printf_core ; 0x8001eec
        0x08001e94:    4604        .F      MOV      r4,r0
        0x08001e96:    a902        ..      ADD      r1,sp,#8
        0x08001e98:    2000        .       MOVS     r0,#0
        0x08001e9a:    f000f987    ....    BL       _sputc ; 0x80021ac
        0x08001e9e:    4620         F      MOV      r0,r4
        0x08001ea0:    bc10        ..      POP      {r4}
        0x08001ea2:    f85dfb14    ]...    LDR      pc,[sp],#0x14
    $d
        0x08001ea6:    0000        ..      DCW    0
        0x08001ea8:    080021ad    .!..    DCD    134226349
    $t
    i.__NVIC_SetPriority
    __NVIC_SetPriority
        0x08001eac:    0709        ..      LSLS     r1,r1,#28
        0x08001eae:    0e09        ..      LSRS     r1,r1,#24
        0x08001eb0:    2800        .(      CMP      r0,#0
        0x08001eb2:    db04        ..      BLT      0x8001ebe ; __NVIC_SetPriority + 18
        0x08001eb4:    f10020e0    ...     ADD      r0,r0,#0xe000e000
        0x08001eb8:    f8801400    ....    STRB     r1,[r0,#0x400]
        0x08001ebc:    4770        pG      BX       lr
        0x08001ebe:    f000000f    ....    AND      r0,r0,#0xf
        0x08001ec2:    f10020e0    ...     ADD      r0,r0,#0xe000e000
        0x08001ec6:    f8801d14    ....    STRB     r1,[r0,#0xd14]
        0x08001eca:    4770        pG      BX       lr
    i.__scatterload_copy
    __scatterload_copy
        0x08001ecc:    e002        ..      B        0x8001ed4 ; __scatterload_copy + 8
        0x08001ece:    c808        ..      LDM      r0!,{r3}
        0x08001ed0:    1f12        ..      SUBS     r2,r2,#4
        0x08001ed2:    c108        ..      STM      r1!,{r3}
        0x08001ed4:    2a00        .*      CMP      r2,#0
        0x08001ed6:    d1fa        ..      BNE      0x8001ece ; __scatterload_copy + 2
        0x08001ed8:    4770        pG      BX       lr
    i.__scatterload_null
    __scatterload_null
        0x08001eda:    4770        pG      BX       lr
    i.__scatterload_zeroinit
    __scatterload_zeroinit
        0x08001edc:    2000        .       MOVS     r0,#0
        0x08001ede:    e001        ..      B        0x8001ee4 ; __scatterload_zeroinit + 8
        0x08001ee0:    c101        ..      STM      r1!,{r0}
        0x08001ee2:    1f12        ..      SUBS     r2,r2,#4
        0x08001ee4:    2a00        .*      CMP      r2,#0
        0x08001ee6:    d1fb        ..      BNE      0x8001ee0 ; __scatterload_zeroinit + 4
        0x08001ee8:    4770        pG      BX       lr
        0x08001eea:    0000        ..      MOVS     r0,r0
    i._printf_core
    _printf_core
        0x08001eec:    e92d4fff    -..O    PUSH     {r0-r11,lr}
        0x08001ef0:    b08d        ..      SUB      sp,sp,#0x34
        0x08001ef2:    469b        .F      MOV      r11,r3
        0x08001ef4:    460f        .F      MOV      r7,r1
        0x08001ef6:    4604        .F      MOV      r4,r0
        0x08001ef8:    2600        .&      MOVS     r6,#0
        0x08001efa:    e006        ..      B        0x8001f0a ; _printf_core + 30
        0x08001efc:    2825        %(      CMP      r0,#0x25
        0x08001efe:    d00b        ..      BEQ      0x8001f18 ; _printf_core + 44
        0x08001f00:    465a        ZF      MOV      r2,r11
        0x08001f02:    990f        ..      LDR      r1,[sp,#0x3c]
        0x08001f04:    4790        .G      BLX      r2
        0x08001f06:    1c64        d.      ADDS     r4,r4,#1
        0x08001f08:    1c76        v.      ADDS     r6,r6,#1
        0x08001f0a:    7820         x      LDRB     r0,[r4,#0]
        0x08001f0c:    2800        .(      CMP      r0,#0
        0x08001f0e:    d1f5        ..      BNE      0x8001efc ; _printf_core + 16
        0x08001f10:    b011        ..      ADD      sp,sp,#0x44
        0x08001f12:    4630        0F      MOV      r0,r6
        0x08001f14:    e8bd8ff0    ....    POP      {r4-r11,pc}
        0x08001f18:    2500        .%      MOVS     r5,#0
        0x08001f1a:    46a8        .F      MOV      r8,r5
        0x08001f1c:    2201        ."      MOVS     r2,#1
        0x08001f1e:    4998        .I      LDR      r1,[pc,#608] ; [0x8002180] = 0x12809
        0x08001f20:    e000        ..      B        0x8001f24 ; _printf_core + 56
        0x08001f22:    4305        .C      ORRS     r5,r5,r0
        0x08001f24:    f8143f01    ...?    LDRB     r3,[r4,#1]!
        0x08001f28:    3b20         ;      SUBS     r3,r3,#0x20
        0x08001f2a:    fa02f003    ....    LSL      r0,r2,r3
        0x08001f2e:    4208        .B      TST      r0,r1
        0x08001f30:    d1f7        ..      BNE      0x8001f22 ; _printf_core + 54
        0x08001f32:    7820         x      LDRB     r0,[r4,#0]
        0x08001f34:    282e        .(      CMP      r0,#0x2e
        0x08001f36:    d117        ..      BNE      0x8001f68 ; _printf_core + 124
        0x08001f38:    f8140f01    ....    LDRB     r0,[r4,#1]!
        0x08001f3c:    f0450504    E...    ORR      r5,r5,#4
        0x08001f40:    282a        *(      CMP      r0,#0x2a
        0x08001f42:    d00e        ..      BEQ      0x8001f62 ; _printf_core + 118
        0x08001f44:    f06f022f    o./.    MVN      r2,#0x2f
        0x08001f48:    7820         x      LDRB     r0,[r4,#0]
        0x08001f4a:    f1a00130    ..0.    SUB      r1,r0,#0x30
        0x08001f4e:    2909        .)      CMP      r1,#9
        0x08001f50:    d80a        ..      BHI      0x8001f68 ; _printf_core + 124
        0x08001f52:    eb080188    ....    ADD      r1,r8,r8,LSL #2
        0x08001f56:    eb020141    ..A.    ADD      r1,r2,r1,LSL #1
        0x08001f5a:    eb000801    ....    ADD      r8,r0,r1
        0x08001f5e:    1c64        d.      ADDS     r4,r4,#1
        0x08001f60:    e7f2        ..      B        0x8001f48 ; _printf_core + 92
        0x08001f62:    f8578b04    W...    LDR      r8,[r7],#4
        0x08001f66:    1c64        d.      ADDS     r4,r4,#1
        0x08001f68:    7820         x      LDRB     r0,[r4,#0]
        0x08001f6a:    286c        l(      CMP      r0,#0x6c
        0x08001f6c:    d00d        ..      BEQ      0x8001f8a ; _printf_core + 158
        0x08001f6e:    dc04        ..      BGT      0x8001f7a ; _printf_core + 142
        0x08001f70:    284c        L(      CMP      r0,#0x4c
        0x08001f72:    d012        ..      BEQ      0x8001f9a ; _printf_core + 174
        0x08001f74:    286a        j(      CMP      r0,#0x6a
        0x08001f76:    d111        ..      BNE      0x8001f9c ; _printf_core + 176
        0x08001f78:    e004        ..      B        0x8001f84 ; _printf_core + 152
        0x08001f7a:    2874        t(      CMP      r0,#0x74
        0x08001f7c:    d00d        ..      BEQ      0x8001f9a ; _printf_core + 174
        0x08001f7e:    287a        z(      CMP      r0,#0x7a
        0x08001f80:    d10c        ..      BNE      0x8001f9c ; _printf_core + 176
        0x08001f82:    e00a        ..      B        0x8001f9a ; _printf_core + 174
        0x08001f84:    f4451500    E...    ORR      r5,r5,#0x200000
        0x08001f88:    e007        ..      B        0x8001f9a ; _printf_core + 174
        0x08001f8a:    7861        ax      LDRB     r1,[r4,#1]
        0x08001f8c:    f4451580    E...    ORR      r5,r5,#0x100000
        0x08001f90:    4281        .B      CMP      r1,r0
        0x08001f92:    d102        ..      BNE      0x8001f9a ; _printf_core + 174
        0x08001f94:    1c64        d.      ADDS     r4,r4,#1
        0x08001f96:    f5051580    ....    ADD      r5,r5,#0x100000
        0x08001f9a:    1c64        d.      ADDS     r4,r4,#1
        0x08001f9c:    7822        "x      LDRB     r2,[r4,#0]
        0x08001f9e:    2a69        i*      CMP      r2,#0x69
        0x08001fa0:    d045        E.      BEQ      0x800202e ; _printf_core + 322
        0x08001fa2:    dc08        ..      BGT      0x8001fb6 ; _printf_core + 202
        0x08001fa4:    2a00        .*      CMP      r2,#0
        0x08001fa6:    d0b3        ..      BEQ      0x8001f10 ; _printf_core + 36
        0x08001fa8:    2a58        X*      CMP      r2,#0x58
        0x08001faa:    d069        i.      BEQ      0x8002080 ; _printf_core + 404
        0x08001fac:    2a63        c*      CMP      r2,#0x63
        0x08001fae:    d010        ..      BEQ      0x8001fd2 ; _printf_core + 230
        0x08001fb0:    2a64        d*      CMP      r2,#0x64
        0x08001fb2:    d108        ..      BNE      0x8001fc6 ; _printf_core + 218
        0x08001fb4:    e03b        ;.      B        0x800202e ; _printf_core + 322
        0x08001fb6:    2a70        p*      CMP      r2,#0x70
        0x08001fb8:    d067        g.      BEQ      0x800208a ; _printf_core + 414
        0x08001fba:    2a73        s*      CMP      r2,#0x73
        0x08001fbc:    d013        ..      BEQ      0x8001fe6 ; _printf_core + 250
        0x08001fbe:    2a75        u*      CMP      r2,#0x75
        0x08001fc0:    d05c        \.      BEQ      0x800207c ; _printf_core + 400
        0x08001fc2:    2a78        x*      CMP      r2,#0x78
        0x08001fc4:    d05c        \.      BEQ      0x8002080 ; _printf_core + 404
        0x08001fc6:    4610        .F      MOV      r0,r2
        0x08001fc8:    465a        ZF      MOV      r2,r11
        0x08001fca:    990f        ..      LDR      r1,[sp,#0x3c]
        0x08001fcc:    4790        .G      BLX      r2
        0x08001fce:    1c76        v.      ADDS     r6,r6,#1
        0x08001fd0:    e0d3        ..      B        0x800217a ; _printf_core + 654
        0x08001fd2:    f8170b04    ....    LDRB     r0,[r7],#4
        0x08001fd6:    f88d0000    ....    STRB     r0,[sp,#0]
        0x08001fda:    2000        .       MOVS     r0,#0
        0x08001fdc:    f88d0001    ....    STRB     r0,[sp,#1]
        0x08001fe0:    46e9        .F      MOV      r9,sp
        0x08001fe2:    2001        .       MOVS     r0,#1
        0x08001fe4:    e003        ..      B        0x8001fee ; _printf_core + 258
        0x08001fe6:    f8579b04    W...    LDR      r9,[r7],#4
        0x08001fea:    f04f30ff    O..0    MOV      r0,#0xffffffff
        0x08001fee:    0769        i.      LSLS     r1,r5,#29
        0x08001ff0:    f04f0500    O...    MOV      r5,#0
        0x08001ff4:    d401        ..      BMI      0x8001ffa ; _printf_core + 270
        0x08001ff6:    e00a        ..      B        0x800200e ; _printf_core + 290
        0x08001ff8:    1c6d        m.      ADDS     r5,r5,#1
        0x08001ffa:    4545        EE      CMP      r5,r8
        0x08001ffc:    da0d        ..      BGE      0x800201a ; _printf_core + 302
        0x08001ffe:    4285        .B      CMP      r5,r0
        0x08002000:    dbfa        ..      BLT      0x8001ff8 ; _printf_core + 268
        0x08002002:    f8191005    ....    LDRB     r1,[r9,r5]
        0x08002006:    2900        .)      CMP      r1,#0
        0x08002008:    d1f6        ..      BNE      0x8001ff8 ; _printf_core + 268
        0x0800200a:    e006        ..      B        0x800201a ; _printf_core + 302
        0x0800200c:    1c6d        m.      ADDS     r5,r5,#1
        0x0800200e:    4285        .B      CMP      r5,r0
        0x08002010:    dbfc        ..      BLT      0x800200c ; _printf_core + 288
        0x08002012:    f8191005    ....    LDRB     r1,[r9,r5]
        0x08002016:    2900        .)      CMP      r1,#0
        0x08002018:    d1f8        ..      BNE      0x800200c ; _printf_core + 288
        0x0800201a:    442e        .D      ADD      r6,r6,r5
        0x0800201c:    e004        ..      B        0x8002028 ; _printf_core + 316
        0x0800201e:    f8190b01    ....    LDRB     r0,[r9],#1
        0x08002022:    465a        ZF      MOV      r2,r11
        0x08002024:    990f        ..      LDR      r1,[sp,#0x3c]
        0x08002026:    4790        .G      BLX      r2
        0x08002028:    1e6d        m.      SUBS     r5,r5,#1
        0x0800202a:    d2f8        ..      BCS      0x800201e ; _printf_core + 306
        0x0800202c:    e0a5        ..      B        0x800217a ; _printf_core + 654
        0x0800202e:    200a        .       MOVS     r0,#0xa
        0x08002030:    2100        .!      MOVS     r1,#0
        0x08002032:    e9cd0108    ....    STRD     r0,r1,[sp,#0x20]
        0x08002036:    f3c55002    ...P    UBFX     r0,r5,#20,#3
        0x0800203a:    2802        .(      CMP      r0,#2
        0x0800203c:    d00d        ..      BEQ      0x800205a ; _printf_core + 366
        0x0800203e:    cf01        ..      LDM      r7!,{r0}
        0x08002040:    17c1        ..      ASRS     r1,r0,#31
        0x08002042:    1e03        ..      SUBS     r3,r0,#0
        0x08002044:    f1710300    q...    SBCS     r3,r1,#0
        0x08002048:    da0d        ..      BGE      0x8002066 ; _printf_core + 378
        0x0800204a:    f04f0c00    O...    MOV      r12,#0
        0x0800204e:    ebd0000c    ....    RSBS     r0,r0,r12
        0x08002052:    eb6c0101    l...    SBC      r1,r12,r1
        0x08002056:    232d        -#      MOVS     r3,#0x2d
        0x08002058:    e008        ..      B        0x800206c ; _printf_core + 384
        0x0800205a:    1dff        ..      ADDS     r7,r7,#7
        0x0800205c:    f0270707    '...    BIC      r7,r7,#7
        0x08002060:    e8f70102    ....    LDRD     r0,r1,[r7],#8
        0x08002064:    e7ed        ..      B        0x8002042 ; _printf_core + 342
        0x08002066:    052b        +.      LSLS     r3,r5,#20
        0x08002068:    d504        ..      BPL      0x8002074 ; _printf_core + 392
        0x0800206a:    232b        +#      MOVS     r3,#0x2b
        0x0800206c:    f88d3028    ..(0    STRB     r3,[sp,#0x28]
        0x08002070:    2301        .#      MOVS     r3,#1
        0x08002072:    e03b        ;.      B        0x80020ec ; _printf_core + 512
        0x08002074:    07eb        ..      LSLS     r3,r5,#31
        0x08002076:    d039        9.      BEQ      0x80020ec ; _printf_core + 512
        0x08002078:    2320         #      MOVS     r3,#0x20
        0x0800207a:    e7f7        ..      B        0x800206c ; _printf_core + 384
        0x0800207c:    200a        .       MOVS     r0,#0xa
        0x0800207e:    e000        ..      B        0x8002082 ; _printf_core + 406
        0x08002080:    2010        .       MOVS     r0,#0x10
        0x08002082:    2100        .!      MOVS     r1,#0
        0x08002084:    e9cd0108    ....    STRD     r0,r1,[sp,#0x20]
        0x08002088:    e007        ..      B        0x800209a ; _printf_core + 430
        0x0800208a:    2010        .       MOVS     r0,#0x10
        0x0800208c:    2100        .!      MOVS     r1,#0
        0x0800208e:    f0450504    E...    ORR      r5,r5,#4
        0x08002092:    e9cd0108    ....    STRD     r0,r1,[sp,#0x20]
        0x08002096:    f04f0808    O...    MOV      r8,#8
        0x0800209a:    f3c55002    ...P    UBFX     r0,r5,#20,#3
        0x0800209e:    2802        .(      CMP      r0,#2
        0x080020a0:    d00f        ..      BEQ      0x80020c2 ; _printf_core + 470
        0x080020a2:    cf01        ..      LDM      r7!,{r0}
        0x080020a4:    2100        .!      MOVS     r1,#0
        0x080020a6:    f04f0a00    O...    MOV      r10,#0
        0x080020aa:    072b        +.      LSLS     r3,r5,#28
        0x080020ac:    d51f        ..      BPL      0x80020ee ; _printf_core + 514
        0x080020ae:    2a70        p*      CMP      r2,#0x70
        0x080020b0:    d00d        ..      BEQ      0x80020ce ; _printf_core + 482
        0x080020b2:    e9ddc308    ....    LDRD     r12,r3,[sp,#0x20]
        0x080020b6:    f08c0c10    ....    EOR      r12,r12,#0x10
        0x080020ba:    ea5c0c03    \...    ORRS     r12,r12,r3
        0x080020be:    d00c        ..      BEQ      0x80020da ; _printf_core + 494
        0x080020c0:    e015        ..      B        0x80020ee ; _printf_core + 514
        0x080020c2:    1dff        ..      ADDS     r7,r7,#7
        0x080020c4:    f0270707    '...    BIC      r7,r7,#7
        0x080020c8:    e8f70102    ....    LDRD     r0,r1,[r7],#8
        0x080020cc:    e7eb        ..      B        0x80020a6 ; _printf_core + 442
        0x080020ce:    2240        @"      MOVS     r2,#0x40
        0x080020d0:    f88d2028    ..(     STRB     r2,[sp,#0x28]
        0x080020d4:    f04f0a01    O...    MOV      r10,#1
        0x080020d8:    e00b        ..      B        0x80020f2 ; _printf_core + 518
        0x080020da:    ea500301    P...    ORRS     r3,r0,r1
        0x080020de:    d006        ..      BEQ      0x80020ee ; _printf_core + 514
        0x080020e0:    2330        0#      MOVS     r3,#0x30
        0x080020e2:    f88d3028    ..(0    STRB     r3,[sp,#0x28]
        0x080020e6:    f88d2029    ..)     STRB     r2,[sp,#0x29]
        0x080020ea:    2302        .#      MOVS     r3,#2
        0x080020ec:    469a        .F      MOV      r10,r3
        0x080020ee:    2a58        X*      CMP      r2,#0x58
        0x080020f0:    d004        ..      BEQ      0x80020fc ; _printf_core + 528
        0x080020f2:    a224        $.      ADR      r2,{pc}+0x92 ; 0x8002184
        0x080020f4:    f10d0920    .. .    ADD      r9,sp,#0x20
        0x080020f8:    920b        ..      STR      r2,[sp,#0x2c]
        0x080020fa:    e009        ..      B        0x8002110 ; _printf_core + 548
        0x080020fc:    a226        &.      ADR      r2,{pc}+0x9c ; 0x8002198
        0x080020fe:    e7f9        ..      B        0x80020f4 ; _printf_core + 520
        0x08002100:    e9dd2308    ...#    LDRD     r2,r3,[sp,#0x20]
        0x08002104:    f7fef86e    ..n.    BL       __aeabi_uldivmod ; 0x80001e4
        0x08002108:    9b0b        ..      LDR      r3,[sp,#0x2c]
        0x0800210a:    5c9b        .\      LDRB     r3,[r3,r2]
        0x0800210c:    f8093d01    ...=    STRB     r3,[r9,#-1]!
        0x08002110:    ea500201    P...    ORRS     r2,r0,r1
        0x08002114:    d1f4        ..      BNE      0x8002100 ; _printf_core + 532
        0x08002116:    ebad0009    ....    SUB      r0,sp,r9
        0x0800211a:    3020         0      ADDS     r0,r0,#0x20
        0x0800211c:    9008        ..      STR      r0,[sp,#0x20]
        0x0800211e:    0768        h.      LSLS     r0,r5,#29
        0x08002120:    d401        ..      BMI      0x8002126 ; _printf_core + 570
        0x08002122:    f04f0801    O...    MOV      r8,#1
        0x08002126:    9908        ..      LDR      r1,[sp,#0x20]
        0x08002128:    4588        .E      CMP      r8,r1
        0x0800212a:    dd02        ..      BLE      0x8002132 ; _printf_core + 582
        0x0800212c:    eba80001    ....    SUB      r0,r8,r1
        0x08002130:    e000        ..      B        0x8002134 ; _printf_core + 584
        0x08002132:    2000        .       MOVS     r0,#0
        0x08002134:    4680        .F      MOV      r8,r0
        0x08002136:    2500        .%      MOVS     r5,#0
        0x08002138:    e006        ..      B        0x8002148 ; _printf_core + 604
        0x0800213a:    a80a        ..      ADD      r0,sp,#0x28
        0x0800213c:    465a        ZF      MOV      r2,r11
        0x0800213e:    5d40        @]      LDRB     r0,[r0,r5]
        0x08002140:    990f        ..      LDR      r1,[sp,#0x3c]
        0x08002142:    4790        .G      BLX      r2
        0x08002144:    1c6d        m.      ADDS     r5,r5,#1
        0x08002146:    1c76        v.      ADDS     r6,r6,#1
        0x08002148:    4555        UE      CMP      r5,r10
        0x0800214a:    dbf6        ..      BLT      0x800213a ; _printf_core + 590
        0x0800214c:    e004        ..      B        0x8002158 ; _printf_core + 620
        0x0800214e:    2030        0       MOVS     r0,#0x30
        0x08002150:    465a        ZF      MOV      r2,r11
        0x08002152:    990f        ..      LDR      r1,[sp,#0x3c]
        0x08002154:    4790        .G      BLX      r2
        0x08002156:    1c76        v.      ADDS     r6,r6,#1
        0x08002158:    f1b80100    ....    SUBS     r1,r8,#0
        0x0800215c:    f1a80801    ....    SUB      r8,r8,#1
        0x08002160:    dcf5        ..      BGT      0x800214e ; _printf_core + 610
        0x08002162:    e005        ..      B        0x8002170 ; _printf_core + 644
        0x08002164:    f8190b01    ....    LDRB     r0,[r9],#1
        0x08002168:    465a        ZF      MOV      r2,r11
        0x0800216a:    990f        ..      LDR      r1,[sp,#0x3c]
        0x0800216c:    4790        .G      BLX      r2
        0x0800216e:    1c76        v.      ADDS     r6,r6,#1
        0x08002170:    9908        ..      LDR      r1,[sp,#0x20]
        0x08002172:    1e48        H.      SUBS     r0,r1,#1
        0x08002174:    9008        ..      STR      r0,[sp,#0x20]
        0x08002176:    2900        .)      CMP      r1,#0
        0x08002178:    dcf4        ..      BGT      0x8002164 ; _printf_core + 632
        0x0800217a:    1c64        d.      ADDS     r4,r4,#1
        0x0800217c:    e6c5        ..      B        0x8001f0a ; _printf_core + 30
    $d
        0x0800217e:    0000        ..      DCW    0
        0x08002180:    00012809    .(..    DCD    75785
        0x08002184:    33323130    0123    DCD    858927408
        0x08002188:    37363534    4567    DCD    926299444
        0x0800218c:    62613938    89ab    DCD    1650538808
        0x08002190:    66656463    cdef    DCD    1717920867
        0x08002194:    00000000    ....    DCD    0
        0x08002198:    33323130    0123    DCD    858927408
        0x0800219c:    37363534    4567    DCD    926299444
        0x080021a0:    42413938    89AB    DCD    1111570744
        0x080021a4:    46454443    CDEF    DCD    1178944579
        0x080021a8:    00000000    ....    DCD    0
    $t
    i._sputc
    _sputc
        0x080021ac:    680a        .h      LDR      r2,[r1,#0]
        0x080021ae:    1c53        S.      ADDS     r3,r2,#1
        0x080021b0:    600b        .`      STR      r3,[r1,#0]
        0x080021b2:    7010        .p      STRB     r0,[r2,#0]
        0x080021b4:    4770        pG      BX       lr
    i.disableSystick
    disableSystick
        0x080021b6:    f04f20e0    O..     MOV      r0,#0xe000e000
        0x080021ba:    2100        .!      MOVS     r1,#0
        0x080021bc:    6181        .a      STR      r1,[r0,#0x18]
        0x080021be:    2104        .!      MOVS     r1,#4
        0x080021c0:    6101        .a      STR      r1,[r0,#0x10]
        0x080021c2:    4770        pG      BX       lr
    i.get_config_date
    get_config_date
        0x080021c4:    4a02        .J      LDR      r2,[pc,#8] ; [0x80021d0] = 0x8010000
        0x080021c6:    e9d21200    ....    LDRD     r1,r2,[r2,#0]
        0x080021ca:    e9c01200    ....    STRD     r1,r2,[r0,#0]
        0x080021ce:    4770        pG      BX       lr
    $d
        0x080021d0:    08010000    ....    DCD    134283264
    $t
    i.main
    main
        0x080021d4:    b50e        ..      PUSH     {r1-r3,lr}
        0x080021d6:    2403        .$      MOVS     r4,#3
        0x080021d8:    f7fefc06    ....    BL       HAL_Init ; 0x80009e8
        0x080021dc:    f7fffd36    ..6.    BL       SystemClock_Config ; 0x8001c4c
        0x080021e0:    f7fff8c0    ....    BL       MX_GPIO_Init ; 0x8001364
        0x080021e4:    f7fff8fe    ....    BL       MX_USART2_UART_Init ; 0x80013e4
        0x080021e8:    f7fff918    ....    BL       MX_USART3_UART_Init ; 0x800141c
        0x080021ec:    4826        &H      LDR      r0,[pc,#152] ; [0x8002288] = 0x20020458
        0x080021ee:    6801        .h      LDR      r1,[r0,#0]
        0x080021f0:    680a        .h      LDR      r2,[r1,#0]
        0x080021f2:    f0220220    ". .    BIC      r2,r2,#0x20
        0x080021f6:    600a        .`      STR      r2,[r1,#0]
        0x080021f8:    6800        .h      LDR      r0,[r0,#0]
        0x080021fa:    6840        @h      LDR      r0,[r0,#4]
        0x080021fc:    a023        #.      ADR      r0,{pc}+0x90 ; 0x800228c
        0x080021fe:    f7fffd15    ....    BL       Serial_PutString ; 0x8001c2c
        0x08002202:    f44f757a    O.zu    MOV      r5,#0x3e8
        0x08002206:    e00f        ..      B        0x8002228 ; main + 84
        0x08002208:    a02a        *.      ADR      r0,{pc}+0xac ; 0x80022b4
        0x0800220a:    f7fffd0f    ....    BL       Serial_PutString ; 0x8001c2c
        0x0800220e:    462b        +F      MOV      r3,r5
        0x08002210:    2201        ."      MOVS     r2,#1
        0x08002212:    a902        ..      ADD      r1,sp,#8
        0x08002214:    481c        .H      LDR      r0,[pc,#112] ; [0x8002288] = 0x20020458
        0x08002216:    f7feffd5    ....    BL       HAL_UART_Receive ; 0x80011c4
        0x0800221a:    2803        .(      CMP      r0,#3
        0x0800221c:    d004        ..      BEQ      0x8002228 ; main + 84
        0x0800221e:    a026        &.      ADR      r0,{pc}+0x9a ; 0x80022b8
        0x08002220:    f7fffd04    ....    BL       Serial_PutString ; 0x8001c2c
        0x08002224:    f7fff916    ....    BL       Main_Menu ; 0x8001454
        0x08002228:    1e64        d.      SUBS     r4,r4,#1
        0x0800222a:    d2ed        ..      BCS      0x8002208 ; main + 52
        0x0800222c:    a022        ".      ADR      r0,{pc}+0x8c ; 0x80022b8
        0x0800222e:    f7fffcfd    ....    BL       Serial_PutString ; 0x8001c2c
        0x08002232:    4668        hF      MOV      r0,sp
        0x08002234:    f7ffffc6    ....    BL       get_config_date ; 0x80021c4
        0x08002238:    9800        ..      LDR      r0,[sp,#0]
        0x0800223a:    f1b03fa5    ...?    CMP      r0,#0xa5a5a5a5
        0x0800223e:    d005        ..      BEQ      0x800224c ; main + 120
        0x08002240:    a01e        ..      ADR      r0,{pc}+0x7c ; 0x80022bc
        0x08002242:    f7fffcf3    ....    BL       Serial_PutString ; 0x8001c2c
        0x08002246:    f7fff905    ....    BL       Main_Menu ; 0x8001454
        0x0800224a:    e018        ..      B        0x800227e ; main + 170
        0x0800224c:    a022        ".      ADR      r0,{pc}+0x8c ; 0x80022d8
        0x0800224e:    f7fffced    ....    BL       Serial_PutString ; 0x8001c2c
        0x08002252:    4928        (I      LDR      r1,[pc,#160] ; [0x80022f4] = 0xf7fe0000
        0x08002254:    9801        ..      LDR      r0,[sp,#4]
        0x08002256:    1840        @.      ADDS     r0,r0,r1
        0x08002258:    d009        ..      BEQ      0x800226e ; main + 154
        0x0800225a:    f5b02fc0    .../    CMP      r0,#0x60000
        0x0800225e:    d008        ..      BEQ      0x8002272 ; main + 158
        0x08002260:    f5b01f80    ....    CMP      r0,#0x100000
        0x08002264:    d00c        ..      BEQ      0x8002280 ; main + 172
        0x08002266:    f5b01fb0    ....    CMP      r0,#0x160000
        0x0800226a:    d105        ..      BNE      0x8002278 ; main + 164
        0x0800226c:    e00a        ..      B        0x8002284 ; main + 176
        0x0800226e:    a022        ".      ADR      r0,{pc}+0x8a ; 0x80022f8
        0x08002270:    e000        ..      B        0x8002274 ; main + 160
        0x08002272:    a022        ".      ADR      r0,{pc}+0x8a ; 0x80022fc
        0x08002274:    f7fffcda    ....    BL       Serial_PutString ; 0x8001c2c
        0x08002278:    9801        ..      LDR      r0,[sp,#4]
        0x0800227a:    f7fff861    ..a.    BL       JumpToAddr ; 0x8001340
        0x0800227e:    e7fe        ..      B        0x800227e ; main + 170
        0x08002280:    a01f        ..      ADR      r0,{pc}+0x80 ; 0x8002300
        0x08002282:    e7f7        ..      B        0x8002274 ; main + 160
        0x08002284:    a01f        ..      ADR      r0,{pc}+0x80 ; 0x8002304
        0x08002286:    e7f5        ..      B        0x8002274 ; main + 160
    $d
        0x08002288:    20020458    X..     DCD    537003096
        0x0800228c:    72500a0d    ..Pr    DCD    1917848077
        0x08002290:    20737365    ess     DCD    544437093
        0x08002294:    20796e61    any     DCD    544829025
        0x08002298:    2079656b    key     DCD    544826731
        0x0800229c:    65206f74    to e    DCD    1696624500
        0x080022a0:    7265746e    nter    DCD    1919251566
        0x080022a4:    6d6f6320     com    DCD    1836016416
        0x080022a8:    646e616d    mand    DCD    1684955501
        0x080022ac:    6e696c20     lin    DCD    1852402720
        0x080022b0:    00002065    e ..    DCD    8293
        0x080022b4:    0000002e    ....    DCD    46
        0x080022b8:    00000a0d    ....    DCD    2573
        0x080022bc:    6465654e    Need    DCD    1684366670
        0x080022c0:    66654420     Def    DCD    1717912608
        0x080022c4:    746c7561    ault    DCD    1953264993
        0x080022c8:    70704120     App    DCD    1886404896
        0x080022cc:    6163696c    lica    DCD    1633905004
        0x080022d0:    6e6f6974    tion    DCD    1852795252
        0x080022d4:    00000a0d    ....    DCD    2573
        0x080022d8:    746f6f42    Boot    DCD    1953460034
        0x080022dc:    20676e69    ing     DCD    543649385
        0x080022e0:    6d6f7266    from    DCD    1836020326
        0x080022e4:    70704120     App    DCD    1886404896
        0x080022e8:    6163696c    lica    DCD    1633905004
        0x080022ec:    6e6f6974    tion    DCD    1852795252
        0x080022f0:    00000020     ...    DCD    32
        0x080022f4:    f7fe0000    ....    DCD    4160618496
        0x080022f8:    000a0d31    1...    DCD    658737
        0x080022fc:    000a0d32    2...    DCD    658738
        0x08002300:    000a0d33    3...    DCD    658739
        0x08002304:    000a0d34    4...    DCD    658740
    $t
    i.update_config_data
    update_config_data
        0x08002308:    b510        ..      PUSH     {r4,lr}
        0x0800230a:    4604        .F      MOV      r4,r0
        0x0800230c:    2004        .       MOVS     r0,#4
        0x0800230e:    f7fef857    ..W.    BL       FLASH_If_Erase ; 0x80003c0
        0x08002312:    4621        !F      MOV      r1,r4
        0x08002314:    e8bd4010    ...@    POP      {r4,lr}
        0x08002318:    2202        ."      MOVS     r2,#2
        0x0800231a:    4801        .H      LDR      r0,[pc,#4] ; [0x8002320] = 0x8010000
        0x0800231c:    f7feb882    ....    B        FLASH_If_Write ; 0x8000424
    $d
        0x08002320:    08010000    ....    DCD    134283264
    $d.realdata
    .constdata
    AHBPrescTable
        0x08002324:    00000000    ....    DCD    0
        0x08002328:    00000000    ....    DCD    0
        0x0800232c:    04030201    ....    DCD    67305985
        0x08002330:    09080706    ....    DCD    151521030
    .constdata
    APBPrescTable
        0x08002334:    00000000    ....    DCD    0
        0x08002338:    04030201    ....    DCD    67305985
    .conststring
        0x0800233c:    61656c50    Plea    DCD    1634036816
        0x08002340:    65206573    se e    DCD    1696621939
        0x08002344:    7265746e    nter    DCD    1919251566
        0x08002348:    65687420     the    DCD    1701344288
        0x0800234c:    6d756e20     num    DCD    1836412448
        0x08002350:    20726562    ber     DCD    544367970
        0x08002354:    6420666f    of d    DCD    1679844975
        0x08002358:    6c616665    efal    DCD    1818322533
        0x0800235c:    61207475    ut a    DCD    1629516917
        0x08002360:    696c7070    ppli    DCD    1768714352
        0x08002364:    69746163    cati    DCD    1769234787
        0x08002368:    31286e6f    on(1    DCD    824733295
        0x0800236c:    332f322f    /2/3    DCD    858731055
        0x08002370:    2e29342f    /4).    DCD    774452271
        0x08002374:    2e2e2e2e    ....    DCD    774778414
        0x08002378:    0a0a0d2e    ....    DCD    168430894
        0x0800237c:    00000000    ....    DCD    0
        0x08002380:    203d0a0d    ..=     DCD    540871181
        0x08002384:    20202020            DCD    538976288
        0x08002388:    20202020            DCD    538976288
        0x0800238c:    20202020            DCD    538976288
        0x08002390:    20202020            DCD    538976288
        0x08002394:    20202020            DCD    538976288
        0x08002398:    20202020            DCD    538976288
        0x0800239c:    20202020            DCD    538976288
        0x080023a0:    20202020            DCD    538976288
        0x080023a4:    20202020            DCD    538976288
        0x080023a8:    20202020            DCD    538976288
        0x080023ac:    20202020            DCD    538976288
        0x080023b0:    20202020            DCD    538976288
        0x080023b4:    20202020            DCD    538976288
        0x080023b8:    20202020            DCD    538976288
        0x080023bc:    20202020            DCD    538976288
        0x080023c0:    20202020            DCD    538976288
        0x080023c4:    3d202020       =    DCD    1025515552
        0x080023c8:    00000000    ....    DCD    0
        0x080023cc:    203d0a0d    ..=     DCD    540871181
        0x080023d0:    20202020            DCD    538976288
        0x080023d4:    20202020            DCD    538976288
        0x080023d8:    20202020            DCD    538976288
        0x080023dc:    29432820     (C)    DCD    692267040
        0x080023e0:    504f4320     COP    DCD    1347371808
        0x080023e4:    47495259    YRIG    DCD    1195987545
        0x080023e8:    32205448    HT 2    DCD    840979528
        0x080023ec:    20303230    020     DCD    540029488
        0x080023f0:    654e2d4f    O-Ne    DCD    1699622223
        0x080023f4:    65542074    t Te    DCD    1700012148
        0x080023f8:    6f6e6863    chno    DCD    1869506659
        0x080023fc:    69676f6c    logi    DCD    1768386412
        0x08002400:    20207365    es      DCD    538997605
        0x08002404:    20202020            DCD    538976288
        0x08002408:    20202020            DCD    538976288
        0x0800240c:    20202020            DCD    538976288
        0x08002410:    3d202020       =    DCD    1025515552
        0x08002414:    00000000    ....    DCD    0
        0x08002418:    203d0a0d    ..=     DCD    540871181
        0x0800241c:    20202020            DCD    538976288
        0x08002420:    20202020            DCD    538976288
        0x08002424:    74736554    Test    DCD    1953719636
        0x08002428:    616f4220     Boa    DCD    1634681376
        0x0800242c:    50206472    rd P    DCD    1344300146
        0x08002430:    72676f72    rogr    DCD    1919381362
        0x08002434:    696d6d61    ammi    DCD    1768779105
        0x08002438:    4120676e    ng A    DCD    1092642670
        0x0800243c:    696c7070    ppli    DCD    1768714352
        0x08002440:    69746163    cati    DCD    1769234787
        0x08002444:    20206e6f    on      DCD    538996335
        0x08002448:    72655628    (Ver    DCD    1919243816
        0x0800244c:    6e6f6973    sion    DCD    1852795251
        0x08002450:    302e3120     1.0    DCD    808333600
        0x08002454:    2029322e    .2)     DCD    539570734
        0x08002458:    20202020            DCD    538976288
        0x0800245c:    3d202020       =    DCD    1025515552
        0x08002460:    00000000    ....    DCD    0
        0x08002464:    203d0a0d    ..=     DCD    540871181
        0x08002468:    20202020            DCD    538976288
        0x0800246c:    20202020            DCD    538976288
        0x08002470:    20202020            DCD    538976288
        0x08002474:    20202020            DCD    538976288
        0x08002478:    20202020            DCD    538976288
        0x0800247c:    20202020            DCD    538976288
        0x08002480:    20202020            DCD    538976288
        0x08002484:    20202020            DCD    538976288
        0x08002488:    20202020            DCD    538976288
        0x0800248c:    20202020            DCD    538976288
        0x08002490:    20202020            DCD    538976288
        0x08002494:    42202020       B    DCD    1109401632
        0x08002498:    65422079    y Be    DCD    1698832505
        0x0800249c:    6e696a69    ijin    DCD    1852402281
        0x080024a0:    26522067    g R&    DCD    642916455
        0x080024a4:    20202044    D       DCD    538976324
        0x080024a8:    3d202020       =    DCD    1025515552
        0x080024ac:    00000000    ....    DCD    0
        0x080024b0:    3d3d0a0d    ..==    DCD    1027410445
        0x080024b4:    3d3d3d3d    ====    DCD    1027423549
        0x080024b8:    3d3d3d3d    ====    DCD    1027423549
        0x080024bc:    3d3d3d3d    ====    DCD    1027423549
        0x080024c0:    3d3d3d3d    ====    DCD    1027423549
        0x080024c4:    3d3d3d3d    ====    DCD    1027423549
        0x080024c8:    3d3d3d3d    ====    DCD    1027423549
        0x080024cc:    3d3d3d3d    ====    DCD    1027423549
        0x080024d0:    3d3d3d3d    ====    DCD    1027423549
        0x080024d4:    3d3d3d3d    ====    DCD    1027423549
        0x080024d8:    3d3d3d3d    ====    DCD    1027423549
        0x080024dc:    3d3d3d3d    ====    DCD    1027423549
        0x080024e0:    3d3d3d3d    ====    DCD    1027423549
        0x080024e4:    3d3d3d3d    ====    DCD    1027423549
        0x080024e8:    3d3d3d3d    ====    DCD    1027423549
        0x080024ec:    3d3d3d3d    ====    DCD    1027423549
        0x080024f0:    3d3d3d3d    ====    DCD    1027423549
        0x080024f4:    3d3d3d3d    ====    DCD    1027423549
        0x080024f8:    00000000    ....    DCD    0
    Region$$Table$$Base
        0x080024fc:    0800251c    .%..    DCD    134227228
        0x08002500:    20000000    ...     DCD    536870912
        0x08002504:    00000418    ....    DCD    1048
        0x08002508:    08001ecc    ....    DCD    134225612
        0x0800250c:    08002934    4)..    DCD    134228276
        0x08002510:    20000418    ...     DCD    536871960
        0x08002514:    000204a0    ....    DCD    132256
        0x08002518:    08001edc    ....    DCD    134225628
    Region$$Table$$Limit

** Section #2 'RW_IRAM1' (SHT_PROGBITS) [SHF_ALLOC + SHF_WRITE]
    Size   : 1048 bytes (alignment 4)
    Address: 0x20000000


** Section #3 'RW_IRAM1' (SHT_NOBITS) [SHF_ALLOC + SHF_WRITE]
    Size   : 132256 bytes (alignment 8)
    Address: 0x20000418


** Section #4 '.debug_abbrev' (SHT_PROGBITS)
    Size   : 1476 bytes


** Section #5 '.debug_frame' (SHT_PROGBITS)
    Size   : 3160 bytes


** Section #6 '.debug_info' (SHT_PROGBITS)
    Size   : 50668 bytes


** Section #7 '.debug_line' (SHT_PROGBITS)
    Size   : 15148 bytes


** Section #8 '.debug_loc' (SHT_PROGBITS)
    Size   : 5016 bytes


** Section #9 '.debug_macinfo' (SHT_PROGBITS)
    Size   : 732436 bytes


** Section #10 '.debug_pubnames' (SHT_PROGBITS)
    Size   : 2665 bytes


** Section #11 '.symtab' (SHT_SYMTAB)
    Size   : 8960 bytes (alignment 4)
    String table #12 '.strtab'
    Last local symbol no. 322


** Section #12 '.strtab' (SHT_STRTAB)
    Size   : 8820 bytes


** Section #13 '.note' (SHT_NOTE)
    Size   : 28 bytes (alignment 4)


** Section #14 '.comment' (SHT_PROGBITS)
    Size   : 36364 bytes


** Section #15 '.shstrtab' (SHT_STRTAB)
    Size   : 156 bytes


address     size       variable name                            type
0x08002324  0x10       AHBPrescTable                            array[16] of const uint8_t

address     size       variable name                            type
0x08002334  0x8        APBPrescTable                            array[8] of const uint8_t

address     size       variable name                            type
0x20000414  0x4        SystemCoreClock                          uint32_t

address     size       variable name                            type
0x20000410  0x4        uwTick                                   volatile uint32_t

address     size       variable name                            type
0x20000408  0x1        uwTickFreq                               HAL_TickFreqTypeDef

address     size       variable name                            type
0x2000040c  0x4        uwTickPrio                               uint32_t

address     size       variable name                            type
0x20020498  0x20       pFlash                                   FLASH_ProcessTypeDef
0x20020498  0x1      * pFlash.ProcedureOnGoing                  volatile FLASH_ProcedureTypeDef
0x2002049c  0x4        pFlash.NbSectorsToErase                  volatile uint32_t
0x200204a0  0x1      * pFlash.VoltageForErase                   volatile uint8_t
0x200204a4  0x4        pFlash.Sector                            volatile uint32_t
0x200204a8  0x4        pFlash.Bank                              volatile uint32_t
0x200204ac  0x4        pFlash.Address                           volatile uint32_t
0x200204b0  0x1      * pFlash.Lock                              HAL_LockTypeDef
0x200204b4  0x4        pFlash.ErrorCode                         volatile uint32_t

address     size       variable name                            type
0x20020418  0x40       huart2                                   UART_HandleTypeDef
0x20020418  0x4        huart2.Instance                          pointer to USART_TypeDef
0x2002041c  0x1c       huart2.Init                              UART_InitTypeDef
0x2002041c  0x4        huart2.Init.BaudRate                     uint32_t
0x20020420  0x4        huart2.Init.WordLength                   uint32_t
0x20020424  0x4        huart2.Init.StopBits                     uint32_t
0x20020428  0x4        huart2.Init.Parity                       uint32_t
0x2002042c  0x4        huart2.Init.Mode                         uint32_t
0x20020430  0x4        huart2.Init.HwFlowCtl                    uint32_t
0x20020434  0x4        huart2.Init.OverSampling                 uint32_t
0x20020438  0x4        huart2.pTxBuffPtr                        pointer to uint8_t
0x2002043c  0x2        huart2.TxXferSize                        uint16_t
0x2002043e  0x2        huart2.TxXferCount                       volatile uint16_t
0x20020440  0x4        huart2.pRxBuffPtr                        pointer to uint8_t
0x20020444  0x2        huart2.RxXferSize                        uint16_t
0x20020446  0x2        huart2.RxXferCount                       volatile uint16_t
0x20020448  0x4        huart2.hdmatx                            pointer to DMA_HandleTypeDef
0x2002044c  0x4        huart2.hdmarx                            pointer to DMA_HandleTypeDef
0x20020450  0x1        huart2.Lock                              HAL_LockTypeDef
0x20020451  0x1        huart2.gState                            volatile HAL_UART_StateTypeDef
0x20020452  0x1      * huart2.RxState                           volatile HAL_UART_StateTypeDef
0x20020454  0x4        huart2.ErrorCode                         volatile uint32_t

address     size       variable name                            type
0x20020458  0x40       huart3                                   UART_HandleTypeDef
0x20020458  0x4        huart3.Instance                          pointer to USART_TypeDef
0x2002045c  0x1c       huart3.Init                              UART_InitTypeDef
0x2002045c  0x4        huart3.Init.BaudRate                     uint32_t
0x20020460  0x4        huart3.Init.WordLength                   uint32_t
0x20020464  0x4        huart3.Init.StopBits                     uint32_t
0x20020468  0x4        huart3.Init.Parity                       uint32_t
0x2002046c  0x4        huart3.Init.Mode                         uint32_t
0x20020470  0x4        huart3.Init.HwFlowCtl                    uint32_t
0x20020474  0x4        huart3.Init.OverSampling                 uint32_t
0x20020478  0x4        huart3.pTxBuffPtr                        pointer to uint8_t
0x2002047c  0x2        huart3.TxXferSize                        uint16_t
0x2002047e  0x2        huart3.TxXferCount                       volatile uint16_t
0x20020480  0x4        huart3.pRxBuffPtr                        pointer to uint8_t
0x20020484  0x2        huart3.RxXferSize                        uint16_t
0x20020486  0x2        huart3.RxXferCount                       volatile uint16_t
0x20020488  0x4        huart3.hdmatx                            pointer to DMA_HandleTypeDef
0x2002048c  0x4        huart3.hdmarx                            pointer to DMA_HandleTypeDef
0x20020490  0x1        huart3.Lock                              HAL_LockTypeDef
0x20020491  0x1        huart3.gState                            volatile HAL_UART_StateTypeDef
0x20020492  0x1      * huart3.RxState                           volatile HAL_UART_StateTypeDef
0x20020494  0x4        huart3.ErrorCode                         volatile uint32_t

address     size       variable name                            type
0x00000000  0x4        FlashProtection                          uint32_t

address     size       variable name                            type
0x20000404  0x4        JumpAddress                              uint32_t

address     size       variable name                            type
0x20000400  0x4        JumpToApplication                        pFunction

address     size       variable name                            type
0x00000000  0x40       aFileName                                array[64] of uint8_t

address     size       variable name                            type
0x20000418  0x20000    fw_buf                                   array[131072] of uint8_t

