CONFIG_SYS_MMCSD_FS_BOOT_PARTITION=y
CONFIG_BOOTM_NETBSD=y
CONFIG_BOOTCOMMAND="run ramsize_check; mmc dev ${mmcdev};mmc dev ${mmcdev}; if mmc rescan; then if run loadbootenv; then run importbootenv; fi; if run loadbootscript; then run bootscript; else if run loadimage; then run mmcboot; else run netboot; fi; fi; else run netboot; fi"
CONFIG_MXC_USB_FLAGS=0
CONFIG_IMX_CONFIG="arch/arm/imx-common/spl_sd.cfg"
CONFIG_BOOTM_VXWORKS=y
CONFIG_SYS_LONGHELP=y
CONFIG_IS_MODULE(option)="config_enabled(CONFIG_VAL(option ##_MODULE))"
CONFIG_SYS_LOAD_ADDR=$(CONFIG_LOADADDR)
CONFIG_SYS_FSL_MAX_NUM_OF_SEC=y
CONFIG_SYS_MMC_MAX_BLK_COUNT=65535
CONFIG_STACKSIZE="SZ_128K"
CONFIG_SYS_HELP_CMD_WIDTH=8
CONFIG_NR_DRAM_BANKS=y
CONFIG_FS_FAT=y
CONFIG_BOOTM_RTEMS=y
CONFIG_SYS_CBSIZE=512
CONFIG_SYS_SPL_MALLOC_SIZE=0x100000
CONFIG_SYS_MONITOR_LEN=409600
CONFIG_EHCI_HCD_INIT_AFTER_RESET=y
CONFIG_BOOTM_LINUX=y
CONFIG_MII=y
CONFIG_SYS_THUMB_BUILD=y
CONFIG_REVISION_TAG=y
CONFIG_SYS_FSL_CLK=y
CONFIG_SYS_FSL_SEC_ADDR="(CAAM_BASE_ADDR + CONFIG_SYS_FSL_SEC_OFFSET)"
CONFIG_SYSCOUNTER_TIMER=y
CONFIG_ENV_OFFSET="(14 * SZ_64K)"
CONFIG_MXC_OCOTP=y
CONFIG_ENV_OVERWRITE=y
CONFIG_ENV_SIZE="SZ_8K"
CONFIG_INITRD_TAG=y
CONFIG_SUPPORT_RAW_INITRD=y
CONFIG_SPL_BUILD=y
CONFIG_SYS_MALLOC_LEN="(16 * SZ_1M)"
CONFIG_SYS_I2C_SPEED=100000
CONFIG_SYS_BOOTM_LEN=0x1000000
CONFIG_SYS_TEXT_BASE=0x86000000
CONFIG_USB_FUNCTION_MASS_STORAGE=y
CONFIG_USB_ETHER=y
CONFIG_MXC_GPT_HCLK=y
CONFIG_MXC_UART=y
CONFIG_SYS_BARGSIZE=$(CONFIG_SYS_CBSIZE)
CONFIG_BOOTM_PLAN9=y
CONFIG_IS_BUILTIN(option)="config_enabled(CONFIG_VAL(option))"
CONFIG_SPL_TEXT_BASE=0x00909000
CONFIG_MXC_USB_PORTSC="(PORT_PTS_UTMI | PORT_PTS_PTW)"
CONFIG_SYS_FSL_JR0_ADDR="(CAAM_BASE_ADDR + CONFIG_SYS_FSL_JR0_OFFSET)"
CONFIG_SYS_MAXARGS=32
CONFIG_SYS_PBSIZE="(CONFIG_SYS_CBSIZE + 128)"
CONFIG_FEC_XCV_TYPE="RMII"
CONFIG_MXC_GPIO=y
CONFIG_BOARDDIR="board/variscite/mx6ul_var_dart"
CONFIG_BOUNCE_BUFFER=y
CONFIG_SPL_STACK=0x0091FFB8
CONFIG_SYS_MAX_FLASH_SECT=512
CONFIG_PHYLIB=y
CONFIG_SPL_ABORT_ON_RAW_IMAGE=y
CONFIG_BOARD_POSTCLK_INIT=y
CONFIG_CMDLINE_EDITING=y
CONFIG_USB_EHCI=y
CONFIG_SYS_BOOT_RAMDISK_HIGH=y
CONFIG_ZLIB=y
CONFIG_LOADADDR=0x82000000
CONFIG_ETHPRIME="FEC0"
CONFIG_AUTO_COMPLETE=y
CONFIG_FSL_USDHC=y
CONFIG_ENV_IS_IN_MMC=y
CONFIG_FEC_ENET_DEV=0
CONFIG_SYS_FSL_SEC_OFFSET=0
CONFIG_GZIP=y
CONFIG_USB_ETHER_SMSC95XX=y
CONFIG_SYS_FSL_ESDHC_ADDR="USDHC2_BASE_ADDR"
CONFIG_SYS_INIT_RAM_SIZE="IRAM_SIZE"
CONFIG_FEC_MXC_PHYADDR=0x1
CONFIG_SYS_BAUDRATE_TABLE="{ 9600, 19200, 38400, 57600, 115200 }"
CONFIG_VAL(option)="config_val(option)"
CONFIG_USB_ETHER_MCS7830=y
CONFIG_SYS_SUPPORT_64BIT_DATA=y
CONFIG_SUPPORT_EMMC_BOOT=y
CONFIG_SYS_SDRAM_BASE="PHYS_SDRAM"
CONFIG_IMAGE_FORMAT_LEGACY=y
CONFIG_SPL_LDSCRIPT="arch/arm/mach-omap2/u-boot-spl.lds"
CONFIG_SYS_FSL_USDHC_NUM=2
CONFIG_USB_ETHER_ASIX=y
CONFIG_SYS_INIT_SP_OFFSET="(CONFIG_SYS_INIT_RAM_SIZE - GENERATED_GBL_DATA_SIZE)"
CONFIG_SYS_SPL_MALLOC_START=0x87100000
CONFIG_FAT_WRITE=y
CONFIG_SYS_I2C=y
CONFIG_SYS_INIT_RAM_ADDR="IRAM_BASE_ADDR"
CONFIG_USB_ETH_CDC=y
CONFIG_SPL_BSS_MAX_SIZE=0x100000
CONFIG_SPL_BSS_START_ADDR=0x87000000
CONFIG_SPL_PAD_TO="(0x1000 + CONFIG_SPL_MAX_SIZE)"
CONFIG_EXTRA_ENV_SETTINGS="BOOT_ENV_SETTINGS OPT_ENV_SETTINGS "bootenv=uEnv.txt0script=boot.scr0image=zImage0console=ttymxc00fdt_file=undefined0fdt_addr=0x830000000fdt_high=0xffffffff0initrd_high=0xffffffff0panel=VAR-WVGA-LCD0splashsourceauto=yes0splashfile=/boot/splash.bmp0splashimage=0x831000000splashenable=setenv splashfile /boot/splash.bmp; setenv splashimage 0x831000000splashdisable=setenv splashfile; setenv splashimage0boot_fdt=try0ip_dyn=yes0netargs=setenv bootargs console=${console},${baudrate} root=/dev/nfs ${cma_size} ip=dhcp nfsroot=${serverip}:${nfsroot},v3,tcp0netboot=echo Booting from net ...; run netargs; run optargs; if test ${ip_dyn} = yes; then setenv get_cmd dhcp; else setenv get_cmd tftp; fi; ${get_cmd} ${image}; if test ${boot_fdt} = yes || test ${boot_fdt} = try; then run findfdt; echo fdt_file=${fdt_file}; if ${get_cmd} ${fdt_addr} ${fdt_file}; then bootz ${loadaddr} - ${fdt_addr}; else if test ${boot_fdt} = try; then bootz; else echo WARN: Cannot load the DT; fi; fi; else bootz; fi;0usbnet_devaddr=f8:dc:7a:00:00:020usbnet_hostaddr=f8:dc:7a:00:00:010ramsize_check= "if test $sdram_size -lt 256; then setenv cma_size cma=32MB; setenv fdt_addr 0x84000000; setenv loadaddr 0x84600000; else if test $sdram_size -lt 512; then setenv cma_size cma=64MB; fi; fi;0findfdt=if test $fdt_file = undefined; then if test $boot_dev = sd; then if test $som_storage = emmc || test $som_storage = none; then if test $soc_type = imx6ull; then setenv fdt_file imx6ull-var-dart-sd_emmc.dtb; else setenv fdt_file imx6ul-var-dart-sd_emmc.dtb; fi; fi; if test $som_storage = nand; then if test $soc_type = imx6ull; then setenv fdt_file imx6ull-var-dart-sd_nand.dtb; else setenv fdt_file imx6ul-var-dart-sd_nand.dtb; fi; fi; fi; if test $boot_dev = emmc; then if test $wifi = yes; then if test $soc_type = imx6ull; then if test $som_rev = 5G; then setenv fdt_file imx6ull-var-dart-5g-emmc_wifi.dtb; else setenv fdt_file imx6ull-var-dart-emmc_wifi.dtb; fi; else if test $som_rev = 5G; then setenv fdt_file imx6ul-var-dart-5g-emmc_wifi.dtb; else setenv fdt_file imx6ul-var-dart-emmc_wifi.dtb; fi; fi; else if test $soc_type = imx6ull; then setenv fdt_file imx6ull-var-dart-sd_emmc.dtb; else setenv fdt_file imx6ul-var-dart-sd_emmc.dtb; fi; fi; fi; if test $boot_dev = nand; then if test $wifi = yes; then if test $soc_type = imx6ull; then if test $som_rev = 5G; then setenv fdt_file imx6ull-var-dart-5g-nand_wifi.dtb; else setenv fdt_file imx6ull-var-dart-nand_wifi.dtb; fi; else if test $som_rev = 5G; then setenv fdt_file imx6ul-var-dart-5g-nand_wifi.dtb; else setenv fdt_file imx6ul-var-dart-nand_wifi.dtb; fi; fi; else if test $soc_type = imx6ull; then setenv fdt_file imx6ull-var-dart-sd_nand.dtb; else setenv fdt_file imx6ul-var-dart-sd_nand.dtb; fi; fi; fi; if test $fdt_file = undefined; then echo WARNING: Could not determine dtb to use; fi; fi;0"
CONFIG_SYS_INIT_SP_ADDR="(CONFIG_SYS_INIT_RAM_ADDR + CONFIG_SYS_INIT_SP_OFFSET)"
CONFIG_FSL_ESDHC=y
CONFIG_IMX_THERMAL=y
CONFIG_BAUDRATE=115200
CONFIG_CMD_BMODE=y
CONFIG_CMDLINE_TAG=y
CONFIG_MXC_UART_BASE="UART1_BASE"
CONFIG_SYS_MMC_ENV_DEV=0
CONFIG_USB_HOST_ETHER=y
CONFIG_SYS_MMC_ENV_PART=0
CONFIG_FEC_MXC=y
CONFIG_USBD_HS=y
CONFIG_USB_MAX_CONTROLLER_COUNT=2
CONFIG_SYS_DEF_EEPROM_ADDR=0
CONFIG_FS_EXT4=y
CONFIG_SPL_MAX_SIZE=0xF000
CONFIG_SPL_FRAMEWORK=y
CONFIG_SYS_MEMTEST_END="(CONFIG_SYS_MEMTEST_START + 0x8000000)"
CONFIG_USB_EHCI_MX6=y
CONFIG_SETUP_MEMORY_TAGS=y
CONFIG_EXT4_WRITE=y
CONFIG_SYS_MEMTEST_START=0x80000000
CONFIG_CONS_INDEX=y
CONFIG_LMB=y
CONFIG_NETCONSOLE=y
CONFIG_SYS_I2C_MXC=y
CONFIG_PHY_MICREL=y
CONFIG_IS_ENABLED(option)="(config_enabled(CONFIG_VAL(option)) || config_enabled(CONFIG_VAL(option ##_MODULE)))"
CONFIG_SC_TIMER_CLK=8000000
CONFIG_ENV_VARS_UBOOT_RUNTIME_CONFIG=y
CONFIG_SYS_I2C_MXC_I2C1=y
CONFIG_SYS_I2C_MXC_I2C2=y
CONFIG_SYS_FSL_JR0_OFFSET=0x1000
CONFIG_CMD_MII=y
CONFIG_CMD_FUSE=y
CONFIG_SPL_FS_LOAD_PAYLOAD_NAME="u-boot.img"