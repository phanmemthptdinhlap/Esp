#define MICROPY_PY_MACHINE_PIN_CPU_NUM_ENTRIES (0)
#define MICROPY_PY_MACHINE_PIN_BOARD_NUM_ENTRIES (49)

#if MICROPY_HW_ENABLE_GPIO0
#define pin_GPIO0 (&machine_pin_obj_table[GPIO_NUM_0])
#define pin_LEDG pin_GPIO0
#define pin_LED_GREEN pin_GPIO0
#endif

#if MICROPY_HW_ENABLE_GPIO1
#define pin_GPIO1 (&machine_pin_obj_table[GPIO_NUM_1])
#define pin_A0 pin_GPIO1
#define pin_D17 pin_GPIO1
#define pin_DTR pin_GPIO1
#endif

#if MICROPY_HW_ENABLE_GPIO2
#define pin_GPIO2 (&machine_pin_obj_table[GPIO_NUM_2])
#define pin_A1 pin_GPIO2
#define pin_D18 pin_GPIO2
#endif

#if MICROPY_HW_ENABLE_GPIO3
#define pin_GPIO3 (&machine_pin_obj_table[GPIO_NUM_3])
#define pin_A2 pin_GPIO3
#define pin_D19 pin_GPIO3
#endif

#if MICROPY_HW_ENABLE_GPIO4
#define pin_GPIO4 (&machine_pin_obj_table[GPIO_NUM_4])
#define pin_A3 pin_GPIO4
#define pin_D20 pin_GPIO4
#endif

#if MICROPY_HW_ENABLE_GPIO5
#define pin_GPIO5 (&machine_pin_obj_table[GPIO_NUM_5])
#define pin_D2 pin_GPIO5
#endif

#if MICROPY_HW_ENABLE_GPIO6
#define pin_GPIO6 (&machine_pin_obj_table[GPIO_NUM_6])
#define pin_CTS pin_GPIO6
#define pin_D3 pin_GPIO6
#endif

#if MICROPY_HW_ENABLE_GPIO7
#define pin_GPIO7 (&machine_pin_obj_table[GPIO_NUM_7])
#define pin_D4 pin_GPIO7
#define pin_DSR pin_GPIO7
#endif

#if MICROPY_HW_ENABLE_GPIO8
#define pin_GPIO8 (&machine_pin_obj_table[GPIO_NUM_8])
#define pin_D5 pin_GPIO8
#endif

#if MICROPY_HW_ENABLE_GPIO9
#define pin_GPIO9 (&machine_pin_obj_table[GPIO_NUM_9])
#define pin_D6 pin_GPIO9
#endif

#if MICROPY_HW_ENABLE_GPIO10
#define pin_GPIO10 (&machine_pin_obj_table[GPIO_NUM_10])
#define pin_D7 pin_GPIO10
#endif

#if MICROPY_HW_ENABLE_GPIO11
#define pin_GPIO11 (&machine_pin_obj_table[GPIO_NUM_11])
#define pin_A4 pin_GPIO11
#define pin_D21 pin_GPIO11
#define pin_SDA pin_GPIO11
#endif

#if MICROPY_HW_ENABLE_GPIO12
#define pin_GPIO12 (&machine_pin_obj_table[GPIO_NUM_12])
#define pin_A5 pin_GPIO12
#define pin_D22 pin_GPIO12
#define pin_SCL pin_GPIO12
#endif

#if MICROPY_HW_ENABLE_GPIO13
#define pin_GPIO13 (&machine_pin_obj_table[GPIO_NUM_13])
#define pin_A6 pin_GPIO13
#define pin_D23 pin_GPIO13
#endif

#if MICROPY_HW_ENABLE_GPIO14
#define pin_GPIO14 (&machine_pin_obj_table[GPIO_NUM_14])
#define pin_A7 pin_GPIO14
#define pin_D24 pin_GPIO14
#endif

#if MICROPY_HW_ENABLE_GPIO15
#define pin_GPIO15 (&machine_pin_obj_table[GPIO_NUM_15])
#endif

#if MICROPY_HW_ENABLE_GPIO16
#define pin_GPIO16 (&machine_pin_obj_table[GPIO_NUM_16])
#endif

#if MICROPY_HW_ENABLE_GPIO17
#define pin_GPIO17 (&machine_pin_obj_table[GPIO_NUM_17])
#define pin_D8 pin_GPIO17
#endif

#if MICROPY_HW_ENABLE_GPIO18
#define pin_GPIO18 (&machine_pin_obj_table[GPIO_NUM_18])
#define pin_D9 pin_GPIO18
#endif

#if MICROPY_HW_ENABLE_GPIO19
#define pin_GPIO19 (&machine_pin_obj_table[GPIO_NUM_19])
#endif

#if MICROPY_HW_ENABLE_GPIO20
#define pin_GPIO20 (&machine_pin_obj_table[GPIO_NUM_20])
#endif

#if MICROPY_HW_ENABLE_GPIO21
#define pin_GPIO21 (&machine_pin_obj_table[GPIO_NUM_21])
#define pin_D10 pin_GPIO21
#define pin_SS pin_GPIO21
#endif

#if MICROPY_HW_ENABLE_GPIO22
#define pin_GPIO22 (&machine_pin_obj_table[GPIO_NUM_22])
#endif

#if MICROPY_HW_ENABLE_GPIO23
#define pin_GPIO23 (&machine_pin_obj_table[GPIO_NUM_23])
#endif

#if MICROPY_HW_ENABLE_GPIO24
#define pin_GPIO24 (&machine_pin_obj_table[GPIO_NUM_24])
#endif

#if MICROPY_HW_ENABLE_GPIO25
#define pin_GPIO25 (&machine_pin_obj_table[GPIO_NUM_25])
#endif

#if MICROPY_HW_ENABLE_GPIO26
#define pin_GPIO26 (&machine_pin_obj_table[GPIO_NUM_26])
#endif

#if MICROPY_HW_ENABLE_GPIO27
#define pin_GPIO27 (&machine_pin_obj_table[GPIO_NUM_27])
#endif

#if MICROPY_HW_ENABLE_GPIO28
#define pin_GPIO28 (&machine_pin_obj_table[GPIO_NUM_28])
#endif

#if MICROPY_HW_ENABLE_GPIO29
#define pin_GPIO29 (&machine_pin_obj_table[GPIO_NUM_29])
#endif

#if MICROPY_HW_ENABLE_GPIO30
#define pin_GPIO30 (&machine_pin_obj_table[GPIO_NUM_30])
#endif

#if MICROPY_HW_ENABLE_GPIO31
#define pin_GPIO31 (&machine_pin_obj_table[GPIO_NUM_31])
#endif

#if MICROPY_HW_ENABLE_GPIO32
#define pin_GPIO32 (&machine_pin_obj_table[GPIO_NUM_32])
#endif

#if MICROPY_HW_ENABLE_GPIO33
#define pin_GPIO33 (&machine_pin_obj_table[GPIO_NUM_33])
#endif

#if MICROPY_HW_ENABLE_GPIO34
#define pin_GPIO34 (&machine_pin_obj_table[GPIO_NUM_34])
#endif

#if MICROPY_HW_ENABLE_GPIO35
#define pin_GPIO35 (&machine_pin_obj_table[GPIO_NUM_35])
#endif

#if MICROPY_HW_ENABLE_GPIO36
#define pin_GPIO36 (&machine_pin_obj_table[GPIO_NUM_36])
#endif

#if MICROPY_HW_ENABLE_GPIO37
#define pin_GPIO37 (&machine_pin_obj_table[GPIO_NUM_37])
#endif

#if MICROPY_HW_ENABLE_GPIO38
#define pin_GPIO38 (&machine_pin_obj_table[GPIO_NUM_38])
#define pin_D11 pin_GPIO38
#define pin_MOSI pin_GPIO38
#endif

#if MICROPY_HW_ENABLE_GPIO39
#define pin_GPIO39 (&machine_pin_obj_table[GPIO_NUM_39])
#endif

#if MICROPY_HW_ENABLE_GPIO40
#define pin_GPIO40 (&machine_pin_obj_table[GPIO_NUM_40])
#endif

#if MICROPY_HW_ENABLE_GPIO41
#define pin_GPIO41 (&machine_pin_obj_table[GPIO_NUM_41])
#endif

#if MICROPY_HW_ENABLE_GPIO42
#define pin_GPIO42 (&machine_pin_obj_table[GPIO_NUM_42])
#endif

#if MICROPY_HW_ENABLE_GPIO43
#define pin_GPIO43 (&machine_pin_obj_table[GPIO_NUM_43])
#define pin_D1 pin_GPIO43
#define pin_TX pin_GPIO43
#endif

#if MICROPY_HW_ENABLE_GPIO44
#define pin_GPIO44 (&machine_pin_obj_table[GPIO_NUM_44])
#define pin_D0 pin_GPIO44
#define pin_RX pin_GPIO44
#endif

#if MICROPY_HW_ENABLE_GPIO45
#define pin_GPIO45 (&machine_pin_obj_table[GPIO_NUM_45])
#define pin_LEDB pin_GPIO45
#define pin_LED_BLUE pin_GPIO45
#define pin_RTS pin_GPIO45
#endif

#if MICROPY_HW_ENABLE_GPIO46
#define pin_GPIO46 (&machine_pin_obj_table[GPIO_NUM_46])
#define pin_LEDR pin_GPIO46
#define pin_LED_RED pin_GPIO46
#endif

#if MICROPY_HW_ENABLE_GPIO47
#define pin_GPIO47 (&machine_pin_obj_table[GPIO_NUM_47])
#define pin_D12 pin_GPIO47
#define pin_MISO pin_GPIO47
#endif

#if MICROPY_HW_ENABLE_GPIO48
#define pin_GPIO48 (&machine_pin_obj_table[GPIO_NUM_48])
#define pin_D13 pin_GPIO48
#define pin_LED_BUILTIN pin_GPIO48
#define pin_SCK pin_GPIO48
#endif
