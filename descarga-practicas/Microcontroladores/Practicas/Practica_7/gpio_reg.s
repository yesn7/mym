;*****************************************************************************
;
; GPIO registers (PORTA AHB)
;
;*****************************************************************************
GPIO_PORTA_DATA_BITS_R            .equ     0x40058000		; Direccion Base para manipulación individual de Bits
GPIO_PORTA_DATA_R                 .equ     0x400583FC		; Dirección para acceso a todos los Bits en lectura y escritura
GPIO_PORTA_DIR_R                  .equ     0x40058400		; Registro de configuracion de Dirección
GPIO_PORTA_IS_R                   .equ     0x40058404		; Registros de configuracion para uso de Interrupciones
GPIO_PORTA_IBE_R                  .equ     0x40058408		; ...
GPIO_PORTA_IEV_R                  .equ     0x4005840C		;	...
GPIO_PORTA_IM_R                   .equ     0x40058410		;		...
GPIO_PORTA_RIS_R                  .equ     0x40058414		;			...	
GPIO_PORTA_MIS_R                  .equ     0x40058418		;				...
GPIO_PORTA_ICR_R                  .equ     0x4005841C		;					...
GPIO_PORTA_AFSEL_R                .equ     0x40058420		; Registro de configuración de Seleccion de Funcion Alterna
GPIO_PORTA_DR2R_R                 .equ     0x40058500		;
GPIO_PORTA_DR4R_R                 .equ     0x40058504
GPIO_PORTA_DR8R_R                 .equ     0x40058508
GPIO_PORTA_ODR_R                  .equ     0x4005850C
GPIO_PORTA_PUR_R                  .equ     0x40058510		; Pullup    Register
GPIO_PORTA_PDR_R                  .equ     0x40058514		; Pulldown  Register
GPIO_PORTA_SLR_R                  .equ     0x40058518		
GPIO_PORTA_DEN_R                  .equ     0x4005851C		; Digital Enable
GPIO_PORTA_LOCK_R                 .equ     0x40058520		
GPIO_PORTA_CR_R                   .equ     0x40058524		; Commit Register
GPIO_PORTA_AMSEL_R                .equ     0x40058528		; Analog Mode Select
GPIO_PORTA_PCTL_R                 .equ     0x4005852C		; Port Control
GPIO_PORTA_ADCCTL_R               .equ     0x40058530
GPIO_PORTA_DMACTL_R               .equ     0x40058534
GPIO_PORTA_SI_R                   .equ     0x40058538
GPIO_PORTA_DR12R_R                .equ     0x4005853C
GPIO_PORTA_WAKEPEN_R              .equ     0x40058540
GPIO_PORTA_WAKELVL_R              .equ     0x40058544
GPIO_PORTA_WAKESTAT_R             .equ     0x40058548
GPIO_PORTA_PP_R                   .equ     0x40058FC0
GPIO_PORTA_PC_R                   .equ     0x40058FC4

;*****************************************************************************
;
; GPIO registers (PORTB AHB)
;
;*****************************************************************************
GPIO_PORTB_DATA_BITS_R            .equ     0x40059000
GPIO_PORTB_DATA_R                 .equ     0x400593FC
GPIO_PORTB_DIR_R                  .equ     0x40059400
GPIO_PORTB_IS_R                   .equ     0x40059404
GPIO_PORTB_IBE_R                  .equ     0x40059408
GPIO_PORTB_IEV_R                  .equ     0x4005940C
GPIO_PORTB_IM_R                   .equ     0x40059410
GPIO_PORTB_RIS_R                  .equ     0x40059414
GPIO_PORTB_MIS_R                  .equ     0x40059418
GPIO_PORTB_ICR_R                  .equ     0x4005941C
GPIO_PORTB_AFSEL_R                .equ     0x40059420
GPIO_PORTB_DR2R_R                 .equ     0x40059500
GPIO_PORTB_DR4R_R                 .equ     0x40059504
GPIO_PORTB_DR8R_R                 .equ     0x40059508
GPIO_PORTB_ODR_R                  .equ     0x4005950C
GPIO_PORTB_PUR_R                  .equ     0x40059510
GPIO_PORTB_PDR_R                  .equ     0x40059514
GPIO_PORTB_SLR_R                  .equ     0x40059518
GPIO_PORTB_DEN_R                  .equ     0x4005951C
GPIO_PORTB_LOCK_R                 .equ     0x40059520
GPIO_PORTB_CR_R                   .equ     0x40059524
GPIO_PORTB_AMSEL_R                .equ     0x40059528
GPIO_PORTB_PCTL_R                 .equ     0x4005952C
GPIO_PORTB_ADCCTL_R               .equ     0x40059530
GPIO_PORTB_DMACTL_R               .equ     0x40059534
GPIO_PORTB_SI_R                   .equ     0x40059538
GPIO_PORTB_DR12R_R                .equ     0x4005953C
GPIO_PORTB_WAKEPEN_R              .equ     0x40059540
GPIO_PORTB_WAKELVL_R              .equ     0x40059544
GPIO_PORTB_WAKESTAT_R             .equ     0x40059548
GPIO_PORTB_PP_R                   .equ     0x40059FC0
GPIO_PORTB_PC_R                   .equ     0x40059FC4

;*****************************************************************************
;
; GPIO registers (PORTC AHB)
;
;*****************************************************************************
GPIO_PORTC_DATA_BITS_R            .equ     0x4005A000
GPIO_PORTC_DATA_R                 .equ     0x4005A3FC
GPIO_PORTC_DIR_R                  .equ     0x4005A400
GPIO_PORTC_IS_R                   .equ     0x4005A404
GPIO_PORTC_IBE_R                  .equ     0x4005A408
GPIO_PORTC_IEV_R                  .equ     0x4005A40C
GPIO_PORTC_IM_R                   .equ     0x4005A410
GPIO_PORTC_RIS_R                  .equ     0x4005A414
GPIO_PORTC_MIS_R                  .equ     0x4005A418
GPIO_PORTC_ICR_R                  .equ     0x4005A41C
GPIO_PORTC_AFSEL_R                .equ     0x4005A420
GPIO_PORTC_DR2R_R                 .equ     0x4005A500
GPIO_PORTC_DR4R_R                 .equ     0x4005A504
GPIO_PORTC_DR8R_R                 .equ     0x4005A508
GPIO_PORTC_ODR_R                  .equ     0x4005A50C
GPIO_PORTC_PUR_R                  .equ     0x4005A510
GPIO_PORTC_PDR_R                  .equ     0x4005A514
GPIO_PORTC_SLR_R                  .equ     0x4005A518
GPIO_PORTC_DEN_R                  .equ     0x4005A51C
GPIO_PORTC_LOCK_R                 .equ     0x4005A520
GPIO_PORTC_CR_R                   .equ     0x4005A524
GPIO_PORTC_AMSEL_R                .equ     0x4005A528
GPIO_PORTC_PCTL_R                 .equ     0x4005A52C
GPIO_PORTC_ADCCTL_R               .equ     0x4005A530
GPIO_PORTC_DMACTL_R               .equ     0x4005A534
GPIO_PORTC_SI_R                   .equ     0x4005A538
GPIO_PORTC_DR12R_R                .equ     0x4005A53C
GPIO_PORTC_WAKEPEN_R              .equ     0x4005A540
GPIO_PORTC_WAKELVL_R              .equ     0x4005A544
GPIO_PORTC_WAKESTAT_R             .equ     0x4005A548
GPIO_PORTC_PP_R                   .equ     0x4005AFC0
GPIO_PORTC_PC_R                   .equ     0x4005AFC4

;*****************************************************************************
;
; GPIO registers (PORTD AHB)
;
;*****************************************************************************
GPIO_PORTD_DATA_BITS_R            .equ     0x4005B000
GPIO_PORTD_DATA_R                 .equ     0x4005B3FC
GPIO_PORTD_DIR_R                  .equ     0x4005B400
GPIO_PORTD_IS_R                   .equ     0x4005B404
GPIO_PORTD_IBE_R                  .equ     0x4005B408
GPIO_PORTD_IEV_R                  .equ     0x4005B40C
GPIO_PORTD_IM_R                   .equ     0x4005B410
GPIO_PORTD_RIS_R                  .equ     0x4005B414
GPIO_PORTD_MIS_R                  .equ     0x4005B418
GPIO_PORTD_ICR_R                  .equ     0x4005B41C
GPIO_PORTD_AFSEL_R                .equ     0x4005B420
GPIO_PORTD_DR2R_R                 .equ     0x4005B500
GPIO_PORTD_DR4R_R                 .equ     0x4005B504
GPIO_PORTD_DR8R_R                 .equ     0x4005B508
GPIO_PORTD_ODR_R                  .equ     0x4005B50C
GPIO_PORTD_PUR_R                  .equ     0x4005B510
GPIO_PORTD_PDR_R                  .equ     0x4005B514
GPIO_PORTD_SLR_R                  .equ     0x4005B518
GPIO_PORTD_DEN_R                  .equ     0x4005B51C
GPIO_PORTD_LOCK_R                 .equ     0x4005B520
GPIO_PORTD_CR_R                   .equ     0x4005B524
GPIO_PORTD_AMSEL_R                .equ     0x4005B528
GPIO_PORTD_PCTL_R                 .equ     0x4005B52C
GPIO_PORTD_ADCCTL_R               .equ     0x4005B530
GPIO_PORTD_DMACTL_R               .equ     0x4005B534
GPIO_PORTD_SI_R                   .equ     0x4005B538
GPIO_PORTD_DR12R_R                .equ     0x4005B53C
GPIO_PORTD_WAKEPEN_R              .equ     0x4005B540
GPIO_PORTD_WAKELVL_R              .equ     0x4005B544
GPIO_PORTD_WAKESTAT_R             .equ     0x4005B548
GPIO_PORTD_PP_R                   .equ     0x4005BFC0
GPIO_PORTD_PC_R                   .equ     0x4005BFC4

;*****************************************************************************
;
; GPIO registers (PORTE AHB)
;
;*****************************************************************************
GPIO_PORTE_DATA_BITS_R            .equ     0x4005C000
GPIO_PORTE_DATA_R                 .equ     0x4005C3FC
GPIO_PORTE_DIR_R                  .equ     0x4005C400
GPIO_PORTE_IS_R                   .equ     0x4005C404
GPIO_PORTE_IBE_R                  .equ     0x4005C408
GPIO_PORTE_IEV_R                  .equ     0x4005C40C
GPIO_PORTE_IM_R                   .equ     0x4005C410
GPIO_PORTE_RIS_R                  .equ     0x4005C414
GPIO_PORTE_MIS_R                  .equ     0x4005C418
GPIO_PORTE_ICR_R                  .equ     0x4005C41C
GPIO_PORTE_AFSEL_R                .equ     0x4005C420
GPIO_PORTE_DR2R_R                 .equ     0x4005C500
GPIO_PORTE_DR4R_R                 .equ     0x4005C504
GPIO_PORTE_DR8R_R                 .equ     0x4005C508
GPIO_PORTE_ODR_R                  .equ     0x4005C50C
GPIO_PORTE_PUR_R                  .equ     0x4005C510
GPIO_PORTE_PDR_R                  .equ     0x4005C514
GPIO_PORTE_SLR_R                  .equ     0x4005C518
GPIO_PORTE_DEN_R                  .equ     0x4005C51C
GPIO_PORTE_LOCK_R                 .equ     0x4005C520
GPIO_PORTE_CR_R                   .equ     0x4005C524
GPIO_PORTE_AMSEL_R                .equ     0x4005C528
GPIO_PORTE_PCTL_R                 .equ     0x4005C52C
GPIO_PORTE_ADCCTL_R               .equ     0x4005C530
GPIO_PORTE_DMACTL_R               .equ     0x4005C534
GPIO_PORTE_SI_R                   .equ     0x4005C538
GPIO_PORTE_DR12R_R                .equ     0x4005C53C
GPIO_PORTE_WAKEPEN_R              .equ     0x4005C540
GPIO_PORTE_WAKELVL_R              .equ     0x4005C544
GPIO_PORTE_WAKESTAT_R             .equ     0x4005C548
GPIO_PORTE_PP_R                   .equ     0x4005CFC0
GPIO_PORTE_PC_R                   .equ     0x4005CFC4

;*****************************************************************************
;
; GPIO registers (PORTF AHB)
;
;*****************************************************************************
GPIO_PORTF_DATA_BITS_R            .equ     0x4005D000
GPIO_PORTF_DATA_R                 .equ     0x4005D3FC
GPIO_PORTF_DIR_R                  .equ     0x4005D400
GPIO_PORTF_IS_R                   .equ     0x4005D404
GPIO_PORTF_IBE_R                  .equ     0x4005D408
GPIO_PORTF_IEV_R                  .equ     0x4005D40C
GPIO_PORTF_IM_R                   .equ     0x4005D410
GPIO_PORTF_RIS_R                  .equ     0x4005D414
GPIO_PORTF_MIS_R                  .equ     0x4005D418
GPIO_PORTF_ICR_R                  .equ     0x4005D41C
GPIO_PORTF_AFSEL_R                .equ     0x4005D420
GPIO_PORTF_DR2R_R                 .equ     0x4005D500
GPIO_PORTF_DR4R_R                 .equ     0x4005D504
GPIO_PORTF_DR8R_R                 .equ     0x4005D508
GPIO_PORTF_ODR_R                  .equ     0x4005D50C
GPIO_PORTF_PUR_R                  .equ     0x4005D510
GPIO_PORTF_PDR_R                  .equ     0x4005D514
GPIO_PORTF_SLR_R                  .equ     0x4005D518
GPIO_PORTF_DEN_R                  .equ     0x4005D51C
GPIO_PORTF_LOCK_R                 .equ     0x4005D520
GPIO_PORTF_CR_R                   .equ     0x4005D524
GPIO_PORTF_AMSEL_R                .equ     0x4005D528
GPIO_PORTF_PCTL_R                 .equ     0x4005D52C
GPIO_PORTF_ADCCTL_R               .equ     0x4005D530
GPIO_PORTF_DMACTL_R               .equ     0x4005D534
GPIO_PORTF_SI_R                   .equ     0x4005D538
GPIO_PORTF_DR12R_R                .equ     0x4005D53C
GPIO_PORTF_WAKEPEN_R              .equ     0x4005D540
GPIO_PORTF_WAKELVL_R              .equ     0x4005D544
GPIO_PORTF_WAKESTAT_R             .equ     0x4005D548
GPIO_PORTF_PP_R                   .equ     0x4005DFC0
GPIO_PORTF_PC_R                   .equ     0x4005DFC4

;*****************************************************************************
;
; GPIO registers (PORTG AHB)
;
;*****************************************************************************
GPIO_PORTG_DATA_BITS_R            .equ     0x4005E000
GPIO_PORTG_DATA_R                 .equ     0x4005E3FC
GPIO_PORTG_DIR_R                  .equ     0x4005E400
GPIO_PORTG_IS_R                   .equ     0x4005E404
GPIO_PORTG_IBE_R                  .equ     0x4005E408
GPIO_PORTG_IEV_R                  .equ     0x4005E40C
GPIO_PORTG_IM_R                   .equ     0x4005E410
GPIO_PORTG_RIS_R                  .equ     0x4005E414
GPIO_PORTG_MIS_R                  .equ     0x4005E418
GPIO_PORTG_ICR_R                  .equ     0x4005E41C
GPIO_PORTG_AFSEL_R                .equ     0x4005E420
GPIO_PORTG_DR2R_R                 .equ     0x4005E500
GPIO_PORTG_DR4R_R                 .equ     0x4005E504
GPIO_PORTG_DR8R_R                 .equ     0x4005E508
GPIO_PORTG_ODR_R                  .equ     0x4005E50C
GPIO_PORTG_PUR_R                  .equ     0x4005E510
GPIO_PORTG_PDR_R                  .equ     0x4005E514
GPIO_PORTG_SLR_R                  .equ     0x4005E518
GPIO_PORTG_DEN_R                  .equ     0x4005E51C
GPIO_PORTG_LOCK_R                 .equ     0x4005E520
GPIO_PORTG_CR_R                   .equ     0x4005E524
GPIO_PORTG_AMSEL_R                .equ     0x4005E528
GPIO_PORTG_PCTL_R                 .equ     0x4005E52C
GPIO_PORTG_ADCCTL_R               .equ     0x4005E530
GPIO_PORTG_DMACTL_R               .equ     0x4005E534
GPIO_PORTG_SI_R                   .equ     0x4005E538
GPIO_PORTG_DR12R_R                .equ     0x4005E53C
GPIO_PORTG_WAKEPEN_R              .equ     0x4005E540
GPIO_PORTG_WAKELVL_R              .equ     0x4005E544
GPIO_PORTG_WAKESTAT_R             .equ     0x4005E548
GPIO_PORTG_PP_R                   .equ     0x4005EFC0
GPIO_PORTG_PC_R                   .equ     0x4005EFC4

;*****************************************************************************
;
; GPIO registers (PORTH AHB)
;
;*****************************************************************************
GPIO_PORTH_DATA_BITS_R            .equ     0x4005F000
GPIO_PORTH_DATA_R                 .equ     0x4005F3FC
GPIO_PORTH_DIR_R                  .equ     0x4005F400
GPIO_PORTH_IS_R                   .equ     0x4005F404
GPIO_PORTH_IBE_R                  .equ     0x4005F408
GPIO_PORTH_IEV_R                  .equ     0x4005F40C
GPIO_PORTH_IM_R                   .equ     0x4005F410
GPIO_PORTH_RIS_R                  .equ     0x4005F414
GPIO_PORTH_MIS_R                  .equ     0x4005F418
GPIO_PORTH_ICR_R                  .equ     0x4005F41C
GPIO_PORTH_AFSEL_R                .equ     0x4005F420
GPIO_PORTH_DR2R_R                 .equ     0x4005F500
GPIO_PORTH_DR4R_R                 .equ     0x4005F504
GPIO_PORTH_DR8R_R                 .equ     0x4005F508
GPIO_PORTH_ODR_R                  .equ     0x4005F50C
GPIO_PORTH_PUR_R                  .equ     0x4005F510
GPIO_PORTH_PDR_R                  .equ     0x4005F514
GPIO_PORTH_SLR_R                  .equ     0x4005F518
GPIO_PORTH_DEN_R                  .equ     0x4005F51C
GPIO_PORTH_LOCK_R                 .equ     0x4005F520
GPIO_PORTH_CR_R                   .equ     0x4005F524
GPIO_PORTH_AMSEL_R                .equ     0x4005F528
GPIO_PORTH_PCTL_R                 .equ     0x4005F52C
GPIO_PORTH_ADCCTL_R               .equ     0x4005F530
GPIO_PORTH_DMACTL_R               .equ     0x4005F534
GPIO_PORTH_SI_R                   .equ     0x4005F538
GPIO_PORTH_DR12R_R                .equ     0x4005F53C
GPIO_PORTH_WAKEPEN_R              .equ     0x4005F540
GPIO_PORTH_WAKELVL_R              .equ     0x4005F544
GPIO_PORTH_WAKESTAT_R             .equ     0x4005F548
GPIO_PORTH_PP_R                   .equ     0x4005FFC0
GPIO_PORTH_PC_R                   .equ     0x4005FFC4

;*****************************************************************************
;
; GPIO registers (PORTJ AHB)
;
;*****************************************************************************
GPIO_PORTJ_DATA_BITS_R            .equ     0x40060000
GPIO_PORTJ_DATA_R                 .equ     0x400603FC
GPIO_PORTJ_DIR_R                  .equ     0x40060400
GPIO_PORTJ_IS_R                   .equ     0x40060404
GPIO_PORTJ_IBE_R                  .equ     0x40060408
GPIO_PORTJ_IEV_R                  .equ     0x4006040C
GPIO_PORTJ_IM_R                   .equ     0x40060410
GPIO_PORTJ_RIS_R                  .equ     0x40060414
GPIO_PORTJ_MIS_R                  .equ     0x40060418
GPIO_PORTJ_ICR_R                  .equ     0x4006041C
GPIO_PORTJ_AFSEL_R                .equ     0x40060420
GPIO_PORTJ_DR2R_R                 .equ     0x40060500
GPIO_PORTJ_DR4R_R                 .equ     0x40060504
GPIO_PORTJ_DR8R_R                 .equ     0x40060508
GPIO_PORTJ_ODR_R                  .equ     0x4006050C
GPIO_PORTJ_PUR_R                  .equ     0x40060510
GPIO_PORTJ_PDR_R                  .equ     0x40060514
GPIO_PORTJ_SLR_R                  .equ     0x40060518
GPIO_PORTJ_DEN_R                  .equ     0x4006051C
GPIO_PORTJ_LOCK_R                 .equ     0x40060520
GPIO_PORTJ_CR_R                   .equ     0x40060524
GPIO_PORTJ_AMSEL_R                .equ     0x40060528
GPIO_PORTJ_PCTL_R                 .equ     0x4006052C
GPIO_PORTJ_ADCCTL_R               .equ     0x40060530
GPIO_PORTJ_DMACTL_R               .equ     0x40060534
GPIO_PORTJ_SI_R                   .equ     0x40060538
GPIO_PORTJ_DR12R_R                .equ     0x4006053C
GPIO_PORTJ_WAKEPEN_R              .equ     0x40060540
GPIO_PORTJ_WAKELVL_R              .equ     0x40060544
GPIO_PORTJ_WAKESTAT_R             .equ     0x40060548
GPIO_PORTJ_PP_R                   .equ     0x40060FC0
GPIO_PORTJ_PC_R                   .equ     0x40060FC4

;*****************************************************************************
;
; GPIO registers (PORTK)
;
;*****************************************************************************
GPIO_PORTK_DATA_BITS_R            .equ     0x40061000
GPIO_PORTK_DATA_R                 .equ     0x400613FC
GPIO_PORTK_DIR_R                  .equ     0x40061400
GPIO_PORTK_IS_R                   .equ     0x40061404
GPIO_PORTK_IBE_R                  .equ     0x40061408
GPIO_PORTK_IEV_R                  .equ     0x4006140C
GPIO_PORTK_IM_R                   .equ     0x40061410
GPIO_PORTK_RIS_R                  .equ     0x40061414
GPIO_PORTK_MIS_R                  .equ     0x40061418
GPIO_PORTK_ICR_R                  .equ     0x4006141C
GPIO_PORTK_AFSEL_R                .equ     0x40061420
GPIO_PORTK_DR2R_R                 .equ     0x40061500
GPIO_PORTK_DR4R_R                 .equ     0x40061504
GPIO_PORTK_DR8R_R                 .equ     0x40061508
GPIO_PORTK_ODR_R                  .equ     0x4006150C
GPIO_PORTK_PUR_R                  .equ     0x40061510
GPIO_PORTK_PDR_R                  .equ     0x40061514
GPIO_PORTK_SLR_R                  .equ     0x40061518
GPIO_PORTK_DEN_R                  .equ     0x4006151C
GPIO_PORTK_LOCK_R                 .equ     0x40061520
GPIO_PORTK_CR_R                   .equ     0x40061524
GPIO_PORTK_AMSEL_R                .equ     0x40061528
GPIO_PORTK_PCTL_R                 .equ     0x4006152C
GPIO_PORTK_ADCCTL_R               .equ     0x40061530
GPIO_PORTK_DMACTL_R               .equ     0x40061534
GPIO_PORTK_SI_R                   .equ     0x40061538
GPIO_PORTK_DR12R_R                .equ     0x4006153C
GPIO_PORTK_WAKEPEN_R              .equ     0x40061540
GPIO_PORTK_WAKELVL_R              .equ     0x40061544
GPIO_PORTK_WAKESTAT_R             .equ     0x40061548
GPIO_PORTK_PP_R                   .equ     0x40061FC0
GPIO_PORTK_PC_R                   .equ     0x40061FC4

;*****************************************************************************
;
; GPIO registers (PORTL)
;
;*****************************************************************************
GPIO_PORTL_DATA_BITS_R            .equ     0x40062000
GPIO_PORTL_DATA_R                 .equ     0x400623FC
GPIO_PORTL_DIR_R                  .equ     0x40062400
GPIO_PORTL_IS_R                   .equ     0x40062404
GPIO_PORTL_IBE_R                  .equ     0x40062408
GPIO_PORTL_IEV_R                  .equ     0x4006240C
GPIO_PORTL_IM_R                   .equ     0x40062410
GPIO_PORTL_RIS_R                  .equ     0x40062414
GPIO_PORTL_MIS_R                  .equ     0x40062418
GPIO_PORTL_ICR_R                  .equ     0x4006241C
GPIO_PORTL_AFSEL_R                .equ     0x40062420
GPIO_PORTL_DR2R_R                 .equ     0x40062500
GPIO_PORTL_DR4R_R                 .equ     0x40062504
GPIO_PORTL_DR8R_R                 .equ     0x40062508
GPIO_PORTL_ODR_R                  .equ     0x4006250C
GPIO_PORTL_PUR_R                  .equ     0x40062510
GPIO_PORTL_PDR_R                  .equ     0x40062514
GPIO_PORTL_SLR_R                  .equ     0x40062518
GPIO_PORTL_DEN_R                  .equ     0x4006251C
GPIO_PORTL_LOCK_R                 .equ     0x40062520
GPIO_PORTL_CR_R                   .equ     0x40062524
GPIO_PORTL_AMSEL_R                .equ     0x40062528
GPIO_PORTL_PCTL_R                 .equ     0x4006252C
GPIO_PORTL_ADCCTL_R               .equ     0x40062530
GPIO_PORTL_DMACTL_R               .equ     0x40062534
GPIO_PORTL_SI_R                   .equ     0x40062538
GPIO_PORTL_DR12R_R                .equ     0x4006253C
GPIO_PORTL_WAKEPEN_R              .equ     0x40062540
GPIO_PORTL_WAKELVL_R              .equ     0x40062544
GPIO_PORTL_WAKESTAT_R             .equ     0x40062548
GPIO_PORTL_PP_R                   .equ     0x40062FC0
GPIO_PORTL_PC_R                   .equ     0x40062FC4

;*****************************************************************************
;
; GPIO registers (PORTM)
;
;*****************************************************************************
GPIO_PORTM_DATA_BITS_R            .equ     0x40063000
GPIO_PORTM_DATA_R                 .equ     0x400633FC
GPIO_PORTM_DIR_R                  .equ     0x40063400
GPIO_PORTM_IS_R                   .equ     0x40063404
GPIO_PORTM_IBE_R                  .equ     0x40063408
GPIO_PORTM_IEV_R                  .equ     0x4006340C
GPIO_PORTM_IM_R                   .equ     0x40063410
GPIO_PORTM_RIS_R                  .equ     0x40063414
GPIO_PORTM_MIS_R                  .equ     0x40063418
GPIO_PORTM_ICR_R                  .equ     0x4006341C
GPIO_PORTM_AFSEL_R                .equ     0x40063420
GPIO_PORTM_DR2R_R                 .equ     0x40063500
GPIO_PORTM_DR4R_R                 .equ     0x40063504
GPIO_PORTM_DR8R_R                 .equ     0x40063508
GPIO_PORTM_ODR_R                  .equ     0x4006350C
GPIO_PORTM_PUR_R                  .equ     0x40063510
GPIO_PORTM_PDR_R                  .equ     0x40063514
GPIO_PORTM_SLR_R                  .equ     0x40063518
GPIO_PORTM_DEN_R                  .equ     0x4006351C
GPIO_PORTM_LOCK_R                 .equ     0x40063520
GPIO_PORTM_CR_R                   .equ     0x40063524
GPIO_PORTM_AMSEL_R                .equ     0x40063528
GPIO_PORTM_PCTL_R                 .equ     0x4006352C
GPIO_PORTM_ADCCTL_R               .equ     0x40063530
GPIO_PORTM_DMACTL_R               .equ     0x40063534
GPIO_PORTM_SI_R                   .equ     0x40063538
GPIO_PORTM_DR12R_R                .equ     0x4006353C
GPIO_PORTM_WAKEPEN_R              .equ     0x40063540
GPIO_PORTM_WAKELVL_R              .equ     0x40063544
GPIO_PORTM_WAKESTAT_R             .equ     0x40063548
GPIO_PORTM_PP_R                   .equ     0x40063FC0
GPIO_PORTM_PC_R                   .equ     0x40063FC4

;*****************************************************************************
;
; GPIO registers (PORTN)
;
;*****************************************************************************
GPIO_PORTN_DATA_BITS_R            .equ     0x40064000
GPIO_PORTN_DATA_R                 .equ     0x400643FC
GPIO_PORTN_DIR_R                  .equ     0x40064400
GPIO_PORTN_IS_R                   .equ     0x40064404
GPIO_PORTN_IBE_R                  .equ     0x40064408
GPIO_PORTN_IEV_R                  .equ     0x4006440C
GPIO_PORTN_IM_R                   .equ     0x40064410
GPIO_PORTN_RIS_R                  .equ     0x40064414
GPIO_PORTN_MIS_R                  .equ     0x40064418
GPIO_PORTN_ICR_R                  .equ     0x4006441C
GPIO_PORTN_AFSEL_R                .equ     0x40064420
GPIO_PORTN_DR2R_R                 .equ     0x40064500
GPIO_PORTN_DR4R_R                 .equ     0x40064504
GPIO_PORTN_DR8R_R                 .equ     0x40064508
GPIO_PORTN_ODR_R                  .equ     0x4006450C
GPIO_PORTN_PUR_R                  .equ     0x40064510
GPIO_PORTN_PDR_R                  .equ     0x40064514
GPIO_PORTN_SLR_R                  .equ     0x40064518
GPIO_PORTN_DEN_R                  .equ     0x4006451C
GPIO_PORTN_LOCK_R                 .equ     0x40064520
GPIO_PORTN_CR_R                   .equ     0x40064524
GPIO_PORTN_AMSEL_R                .equ     0x40064528
GPIO_PORTN_PCTL_R                 .equ     0x4006452C
GPIO_PORTN_ADCCTL_R               .equ     0x40064530
GPIO_PORTN_DMACTL_R               .equ     0x40064534
GPIO_PORTN_SI_R                   .equ     0x40064538
GPIO_PORTN_DR12R_R                .equ     0x4006453C
GPIO_PORTN_WAKEPEN_R              .equ     0x40064540
GPIO_PORTN_WAKELVL_R              .equ     0x40064544
GPIO_PORTN_WAKESTAT_R             .equ     0x40064548
GPIO_PORTN_PP_R                   .equ     0x40064FC0
GPIO_PORTN_PC_R                   .equ     0x40064FC4

;*****************************************************************************
;
; GPIO registers (PORTP)
;
;*****************************************************************************
GPIO_PORTP_DATA_BITS_R            .equ     0x40065000
GPIO_PORTP_DATA_R                 .equ     0x400653FC
GPIO_PORTP_DIR_R                  .equ     0x40065400
GPIO_PORTP_IS_R                   .equ     0x40065404
GPIO_PORTP_IBE_R                  .equ     0x40065408
GPIO_PORTP_IEV_R                  .equ     0x4006540C
GPIO_PORTP_IM_R                   .equ     0x40065410
GPIO_PORTP_RIS_R                  .equ     0x40065414
GPIO_PORTP_MIS_R                  .equ     0x40065418
GPIO_PORTP_ICR_R                  .equ     0x4006541C
GPIO_PORTP_AFSEL_R                .equ     0x40065420
GPIO_PORTP_DR2R_R                 .equ     0x40065500
GPIO_PORTP_DR4R_R                 .equ     0x40065504
GPIO_PORTP_DR8R_R                 .equ     0x40065508
GPIO_PORTP_ODR_R                  .equ     0x4006550C
GPIO_PORTP_PUR_R                  .equ     0x40065510
GPIO_PORTP_PDR_R                  .equ     0x40065514
GPIO_PORTP_SLR_R                  .equ     0x40065518
GPIO_PORTP_DEN_R                  .equ     0x4006551C
GPIO_PORTP_LOCK_R                 .equ     0x40065520
GPIO_PORTP_CR_R                   .equ     0x40065524
GPIO_PORTP_AMSEL_R                .equ     0x40065528
GPIO_PORTP_PCTL_R                 .equ     0x4006552C
GPIO_PORTP_ADCCTL_R               .equ     0x40065530
GPIO_PORTP_DMACTL_R               .equ     0x40065534
GPIO_PORTP_SI_R                   .equ     0x40065538
GPIO_PORTP_DR12R_R                .equ     0x4006553C
GPIO_PORTP_WAKEPEN_R              .equ     0x40065540
GPIO_PORTP_WAKELVL_R              .equ     0x40065544
GPIO_PORTP_WAKESTAT_R             .equ     0x40065548
GPIO_PORTP_PP_R                   .equ     0x40065FC0
GPIO_PORTP_PC_R                   .equ     0x40065FC4

;*****************************************************************************
;
; GPIO registers (PORTQ)
;
;*****************************************************************************
GPIO_PORTQ_DATA_BITS_R            .equ     0x40066000
GPIO_PORTQ_DATA_R                 .equ     0x400663FC
GPIO_PORTQ_DIR_R                  .equ     0x40066400
GPIO_PORTQ_IS_R                   .equ     0x40066404
GPIO_PORTQ_IBE_R                  .equ     0x40066408
GPIO_PORTQ_IEV_R                  .equ     0x4006640C
GPIO_PORTQ_IM_R                   .equ     0x40066410
GPIO_PORTQ_RIS_R                  .equ     0x40066414
GPIO_PORTQ_MIS_R                  .equ     0x40066418
GPIO_PORTQ_ICR_R                  .equ     0x4006641C
GPIO_PORTQ_AFSEL_R                .equ     0x40066420
GPIO_PORTQ_DR2R_R                 .equ     0x40066500
GPIO_PORTQ_DR4R_R                 .equ     0x40066504
GPIO_PORTQ_DR8R_R                 .equ     0x40066508
GPIO_PORTQ_ODR_R                  .equ     0x4006650C
GPIO_PORTQ_PUR_R                  .equ     0x40066510
GPIO_PORTQ_PDR_R                  .equ     0x40066514
GPIO_PORTQ_SLR_R                  .equ     0x40066518
GPIO_PORTQ_DEN_R                  .equ     0x4006651C
GPIO_PORTQ_LOCK_R                 .equ     0x40066520
GPIO_PORTQ_CR_R                   .equ     0x40066524
GPIO_PORTQ_AMSEL_R                .equ     0x40066528
GPIO_PORTQ_PCTL_R                 .equ     0x4006652C
GPIO_PORTQ_ADCCTL_R               .equ     0x40066530
GPIO_PORTQ_DMACTL_R               .equ     0x40066534
GPIO_PORTQ_SI_R                   .equ     0x40066538
GPIO_PORTQ_DR12R_R                .equ     0x4006653C
GPIO_PORTQ_WAKEPEN_R              .equ     0x40066540
GPIO_PORTQ_WAKELVL_R              .equ     0x40066544
GPIO_PORTQ_WAKESTAT_R             .equ     0x40066548
GPIO_PORTQ_PP_R                   .equ     0x40066FC0
GPIO_PORTQ_PC_R                   .equ     0x40066FC4


;*****************************************************************************
;
; System Control registers (SYSCTL)
;
;*****************************************************************************
SYSCTL_DID0_R                     .equ     0x400FE000
SYSCTL_DID1_R                     .equ     0x400FE004
SYSCTL_PTBOCTL_R                  .equ     0x400FE038
SYSCTL_RIS_R                      .equ     0x400FE050
SYSCTL_IMC_R                      .equ     0x400FE054
SYSCTL_MISC_R                     .equ     0x400FE058
SYSCTL_RESC_R                     .equ     0x400FE05C
SYSCTL_PWRTC_R                    .equ     0x400FE060
SYSCTL_NMIC_R                     .equ     0x400FE064
SYSCTL_MOSCCTL_R                  .equ     0x400FE07C
SYSCTL_RSCLKCFG_R                 .equ     0x400FE0B0
SYSCTL_MEMTIM0_R                  .equ     0x400FE0C0
SYSCTL_ALTCLKCFG_R                .equ     0x400FE138
SYSCTL_DSCLKCFG_R                 .equ     0x400FE144
SYSCTL_DIVSCLK_R                  .equ     0x400FE148
SYSCTL_SYSPROP_R                  .equ     0x400FE14C
SYSCTL_PIOSCCAL_R                 .equ     0x400FE150
SYSCTL_PIOSCSTAT_R                .equ     0x400FE154
SYSCTL_PLLFREQ0_R                 .equ     0x400FE160
SYSCTL_PLLFREQ1_R                 .equ     0x400FE164
SYSCTL_PLLSTAT_R                  .equ     0x400FE168
SYSCTL_SLPPWRCFG_R                .equ     0x400FE188
SYSCTL_DSLPPWRCFG_R               .equ     0x400FE18C
SYSCTL_NVMSTAT_R                  .equ     0x400FE1A0
SYSCTL_LDOSPCTL_R                 .equ     0x400FE1B4
SYSCTL_LDODPCTL_R                 .equ     0x400FE1BC
SYSCTL_RESBEHAVCTL_R              .equ     0x400FE1D8
SYSCTL_HSSR_R                     .equ     0x400FE1F4
SYSCTL_USBPDS_R                   .equ     0x400FE280
SYSCTL_USBMPC_R                   .equ     0x400FE284
SYSCTL_EMACPDS_R                  .equ     0x400FE288
SYSCTL_EMACMPC_R                  .equ     0x400FE28C
SYSCTL_PPWD_R                     .equ     0x400FE300
SYSCTL_PPTIMER_R                  .equ     0x400FE304
SYSCTL_PPGPIO_R                   .equ     0x400FE308
SYSCTL_PPDMA_R                    .equ     0x400FE30C
SYSCTL_PPEPI_R                    .equ     0x400FE310
SYSCTL_PPHIB_R                    .equ     0x400FE314
SYSCTL_PPUART_R                   .equ     0x400FE318
SYSCTL_PPSSI_R                    .equ     0x400FE31C
SYSCTL_PPI2C_R                    .equ     0x400FE320
SYSCTL_PPUSB_R                    .equ     0x400FE328
SYSCTL_PPEPHY_R                   .equ     0x400FE330
SYSCTL_PPCAN_R                    .equ     0x400FE334
SYSCTL_PPADC_R                    .equ     0x400FE338
SYSCTL_PPACMP_R                   .equ     0x400FE33C
SYSCTL_PPPWM_R                    .equ     0x400FE340
SYSCTL_PPQEI_R                    .equ     0x400FE344
SYSCTL_PPLPC_R                    .equ     0x400FE348
SYSCTL_PPPECI_R                   .equ     0x400FE350
SYSCTL_PPFAN_R                    .equ     0x400FE354
SYSCTL_PPEEPROM_R                 .equ     0x400FE358
SYSCTL_PPWTIMER_R                 .equ     0x400FE35C
SYSCTL_PPRTS_R                    .equ     0x400FE370
SYSCTL_PPCCM_R                    .equ     0x400FE374
SYSCTL_PPLCD_R                    .equ     0x400FE390
SYSCTL_PPOWIRE_R                  .equ     0x400FE398
SYSCTL_PPEMAC_R                   .equ     0x400FE39C
SYSCTL_PPHIM_R                    .equ     0x400FE3A4
SYSCTL_SRWD_R                     .equ     0x400FE500
SYSCTL_SRTIMER_R                  .equ     0x400FE504
SYSCTL_SRGPIO_R                   .equ     0x400FE508
SYSCTL_SRDMA_R                    .equ     0x400FE50C
SYSCTL_SREPI_R                    .equ     0x400FE510
SYSCTL_SRHIB_R                    .equ     0x400FE514
SYSCTL_SRUART_R                   .equ     0x400FE518
SYSCTL_SRSSI_R                    .equ     0x400FE51C
SYSCTL_SRI2C_R                    .equ     0x400FE520
SYSCTL_SRUSB_R                    .equ     0x400FE528
SYSCTL_SREPHY_R                   .equ     0x400FE530
SYSCTL_SRCAN_R                    .equ     0x400FE534
SYSCTL_SRADC_R                    .equ     0x400FE538
SYSCTL_SRACMP_R                   .equ     0x400FE53C
SYSCTL_SRPWM_R                    .equ     0x400FE540
SYSCTL_SRQEI_R                    .equ     0x400FE544
SYSCTL_SREEPROM_R                 .equ     0x400FE558
SYSCTL_SRCCM_R                    .equ     0x400FE574
SYSCTL_SREMAC_R                   .equ     0x400FE59C
SYSCTL_RCGCWD_R                   .equ     0x400FE600
SYSCTL_RCGCTIMER_R                .equ     0x400FE604
SYSCTL_RCGCGPIO_R                 .equ     0x400FE608
SYSCTL_RCGCDMA_R                  .equ     0x400FE60C
SYSCTL_RCGCEPI_R                  .equ     0x400FE610
SYSCTL_RCGCHIB_R                  .equ     0x400FE614
SYSCTL_RCGCUART_R                 .equ     0x400FE618
SYSCTL_RCGCSSI_R                  .equ     0x400FE61C
SYSCTL_RCGCI2C_R                  .equ     0x400FE620
SYSCTL_RCGCUSB_R                  .equ     0x400FE628
SYSCTL_RCGCEPHY_R                 .equ     0x400FE630
SYSCTL_RCGCCAN_R                  .equ     0x400FE634
SYSCTL_RCGCADC_R                  .equ     0x400FE638
SYSCTL_RCGCACMP_R                 .equ     0x400FE63C
SYSCTL_RCGCPWM_R                  .equ     0x400FE640
SYSCTL_RCGCQEI_R                  .equ     0x400FE644
SYSCTL_RCGCEEPROM_R               .equ     0x400FE658
SYSCTL_RCGCCCM_R                  .equ     0x400FE674
SYSCTL_RCGCEMAC_R                 .equ     0x400FE69C
SYSCTL_SCGCWD_R                   .equ     0x400FE700
SYSCTL_SCGCTIMER_R                .equ     0x400FE704
SYSCTL_SCGCGPIO_R                 .equ     0x400FE708
SYSCTL_SCGCDMA_R                  .equ     0x400FE70C
SYSCTL_SCGCEPI_R                  .equ     0x400FE710
SYSCTL_SCGCHIB_R                  .equ     0x400FE714
SYSCTL_SCGCUART_R                 .equ     0x400FE718
SYSCTL_SCGCSSI_R                  .equ     0x400FE71C
SYSCTL_SCGCI2C_R                  .equ     0x400FE720
SYSCTL_SCGCUSB_R                  .equ     0x400FE728
SYSCTL_SCGCEPHY_R                 .equ     0x400FE730
SYSCTL_SCGCCAN_R                  .equ     0x400FE734
SYSCTL_SCGCADC_R                  .equ     0x400FE738
SYSCTL_SCGCACMP_R                 .equ     0x400FE73C
SYSCTL_SCGCPWM_R                  .equ     0x400FE740
SYSCTL_SCGCQEI_R                  .equ     0x400FE744
SYSCTL_SCGCEEPROM_R               .equ     0x400FE758
SYSCTL_SCGCCCM_R                  .equ     0x400FE774
SYSCTL_SCGCEMAC_R                 .equ     0x400FE79C
SYSCTL_DCGCWD_R                   .equ     0x400FE800
SYSCTL_DCGCTIMER_R                .equ     0x400FE804
SYSCTL_DCGCGPIO_R                 .equ     0x400FE808
SYSCTL_DCGCDMA_R                  .equ     0x400FE80C
SYSCTL_DCGCEPI_R                  .equ     0x400FE810
SYSCTL_DCGCHIB_R                  .equ     0x400FE814
SYSCTL_DCGCUART_R                 .equ     0x400FE818
SYSCTL_DCGCSSI_R                  .equ     0x400FE81C
SYSCTL_DCGCI2C_R                  .equ     0x400FE820
SYSCTL_DCGCUSB_R                  .equ     0x400FE828
SYSCTL_DCGCEPHY_R                 .equ     0x400FE830
SYSCTL_DCGCCAN_R                  .equ     0x400FE834
SYSCTL_DCGCADC_R                  .equ     0x400FE838
SYSCTL_DCGCACMP_R                 .equ     0x400FE83C
SYSCTL_DCGCPWM_R                  .equ     0x400FE840
SYSCTL_DCGCQEI_R                  .equ     0x400FE844
SYSCTL_DCGCEEPROM_R               .equ     0x400FE858
SYSCTL_DCGCCCM_R                  .equ     0x400FE874
SYSCTL_DCGCEMAC_R                 .equ     0x400FE89C
SYSCTL_PCWD_R                     .equ     0x400FE900
SYSCTL_PCTIMER_R                  .equ     0x400FE904
SYSCTL_PCGPIO_R                   .equ     0x400FE908
SYSCTL_PCDMA_R                    .equ     0x400FE90C
SYSCTL_PCEPI_R                    .equ     0x400FE910
SYSCTL_PCHIB_R                    .equ     0x400FE914
SYSCTL_PCUART_R                   .equ     0x400FE918
SYSCTL_PCSSI_R                    .equ     0x400FE91C
SYSCTL_PCI2C_R                    .equ     0x400FE920
SYSCTL_PCUSB_R                    .equ     0x400FE928
SYSCTL_PCEPHY_R                   .equ     0x400FE930
SYSCTL_PCCAN_R                    .equ     0x400FE934
SYSCTL_PCADC_R                    .equ     0x400FE938
SYSCTL_PCACMP_R                   .equ     0x400FE93C
SYSCTL_PCPWM_R                    .equ     0x400FE940
SYSCTL_PCQEI_R                    .equ     0x400FE944
SYSCTL_PCEEPROM_R                 .equ     0x400FE958
SYSCTL_PCCCM_R                    .equ     0x400FE974
SYSCTL_PCEMAC_R                   .equ     0x400FE99C
SYSCTL_PRWD_R                     .equ     0x400FEA00
SYSCTL_PRTIMER_R                  .equ     0x400FEA04
SYSCTL_PRGPIO_R                   .equ     0x400FEA08
SYSCTL_PRDMA_R                    .equ     0x400FEA0C
SYSCTL_PREPI_R                    .equ     0x400FEA10
SYSCTL_PRHIB_R                    .equ     0x400FEA14
SYSCTL_PRUART_R                   .equ     0x400FEA18
SYSCTL_PRSSI_R                    .equ     0x400FEA1C
SYSCTL_PRI2C_R                    .equ     0x400FEA20
SYSCTL_PRUSB_R                    .equ     0x400FEA28
SYSCTL_PREPHY_R                   .equ     0x400FEA30
SYSCTL_PRCAN_R                    .equ     0x400FEA34
SYSCTL_PRADC_R                    .equ     0x400FEA38
SYSCTL_PRACMP_R                   .equ     0x400FEA3C
SYSCTL_PRPWM_R                    .equ     0x400FEA40
SYSCTL_PRQEI_R                    .equ     0x400FEA44
SYSCTL_PREEPROM_R                 .equ     0x400FEA58
SYSCTL_PRCCM_R                    .equ     0x400FEA74
SYSCTL_PREMAC_R                   .equ     0x400FEA9C

