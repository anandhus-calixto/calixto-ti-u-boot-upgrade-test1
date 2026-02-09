/*
 * am335x_evm.h
 *
 * Copyright (C) 2011 Texas Instruments Incorporated - http://www.ti.com/
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as
 * published by the Free Software Foundation version 2.
 *
 * This program is distributed "as is" WITHOUT ANY WARRANTY of any
 * kind, whether express or implied; without even the implied warranty
 * of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 */

#ifndef __CONFIG_AM335X_VERSA_NXT_H
#define __CONFIG_AM335X_VERSA_NXT_H

#include <configs/ti_am335x_common.h>
#include <linux/sizes.h>

#ifndef CONFIG_SPL_BUILD
# define CONFIG_TIMESTAMP
#endif

#define CONFIG_MACH_TYPE		MACH_TYPE_AM335XEVM

/* Clock Defines */
#define V_OSCK				24000000  /* Clock output from T2 */
#define V_SCLK				(V_OSCK)



#define BOOTENV_DEV_LEGACY_MMC(devtypeu, devtypel, instance) \
	"bootcmd_" #devtypel #instance "=" \
	"setenv mmcdev " #instance"; "\
	"setenv bootpart " #instance":2 ; "\
	"run mmcboot\0"

#define BOOTENV_DEV_NAME_LEGACY_MMC(devtypeu, devtypel, instance) \
	#devtypel #instance " "

#define BOOTENV_DEV_NAND(devtypeu, devtypel, instance) \
	"bootcmd_" #devtypel "=" \
	"run nandboot\0"

#define BOOTENV_DEV_NAME_NAND(devtypeu, devtypel, instance) \
	#devtypel #instance " "

#if CONFIG_IS_ENABLED(CMD_PXE)
# define BOOT_TARGET_PXE(func) func(PXE, pxe, na)
#else
# define BOOT_TARGET_PXE(func)
#endif

#if CONFIG_IS_ENABLED(CMD_DHCP)
# define BOOT_TARGET_DHCP(func) func(DHCP, dhcp, na)
#else
# define BOOT_TARGET_DHCP(func)
#endif

#define BOOT_TARGET_DEVICES(func) \
	func(MMC, mmc, 0) \
	func(LEGACY_MMC, legacy_mmc, 0) \
	func(MMC, mmc, 1) \
	func(LEGACY_MMC, legacy_mmc, 1) \
	func(NAND, nand, 0) \
	BOOT_TARGET_PXE(func) \
	BOOT_TARGET_DHCP(func)

#include <config_distro_bootcmd.h>

#ifndef CONFIG_XPL_BUILD
#include <env/ti/dfu.h>

#define CFG_EXTRA_ENV_SETTINGS \
	DEFAULT_LINUX_BOOT_ENV \
	"fdtfile=am335x-versa-nxt512.dtb\0" \
	"find_distro_rootpart=" \
		"setexpr distro_rootpart ${distro_bootpart} + 1 ;" \
		"part uuid ${devtype} ${devnum}:${distro_rootpart} uuid ;\0" \
	"console=ttyO0,115200n8\0" \
	"partitions=" \
		"uuid_disk=${uuid_gpt_disk};" \
		"name=bootloader,start=384K,size=1792K," \
			"uuid=${uuid_gpt_bootloader};" \
		"name=rootfs,start=2688K,size=-,uuid=${uuid_gpt_rootfs}\0" \
	"optargs=\0" \
	"ramroot=/dev/ram0 rw\0" \
	"ramrootfstype=ext2\0" \
	"spiroot=/dev/mtdblock4 rw\0" \
	"spirootfstype=jffs2\0" \
	"spisrcaddr=0xe0000\0" \
	"spiimgsize=0x362000\0" \
	"spibusno=0\0" \
	"reflash_spi=echo Reflashing SPI Flash with New Boot Loader...; " \
			"mmc rescan; " \
			"sf probe 0; " \
			"echo Erasing SPI Boot Sector...; " \
			"sf erase 0x0 0xC0000; " \
			"fatload mmc 0 ${loadaddr} MLO.byteswap; " \
			"sf write ${loadaddr} 0 ${filesize}; " \
			"fatload mmc 0 ${loadaddr} u-boot.img; " \
			"sf write ${loadaddr} 0x20000 ${filesize}\0" \
	"spiargs=setenv bootargs console=${console} " \
		"${optargs} " \
		"root=${spiroot} " \
		"rootfstype=${spirootfstype}\0" \
	"ramargs=setenv bootargs console=${console} " \
		"${optargs} " \
		"root=${ramroot} " \
		"rootfstype=${ramrootfstype}\0" \
	"loadramdisk=load mmc ${mmcdev} ${rdaddr} ramdisk.gz\0" \
	"spiboot=echo Booting from spi ...; " \
		"run spiargs; " \
		"sf probe ${spibusno}:0; " \
		"sf read ${loadaddr} ${spisrcaddr} ${spiimgsize}; " \
		"bootz ${loadaddr}\0" \
	"ramboot=echo Booting from ramdisk ...; " \
		"run ramargs; " \
		"bootz ${loadaddr} ${rdaddr} ${fdtaddr}\0" \
	"findfdt="\
		"if test $board_name = A335BONE; then " \
			"setenv fdtfile am335x-bone.dtb; fi; " \
		"if test $board_name = A335BNLT; then " \
			"setenv fdtfile am335x-boneblack.dtb; fi; " \
		"if test $board_name = A335PBGL; then " \
			"setenv fdtfile am335x-pocketbeagle.dtb; fi; " \
		"if test $board_name = BBBW; then " \
			"setenv fdtfile am335x-boneblack-wireless.dtb; fi; " \
		"if test $board_name = BBG1; then " \
			"setenv fdtfile am335x-bonegreen.dtb; fi; " \
		"if test $board_name = BBGW; then " \
			"setenv fdtfile am335x-bonegreen-wireless.dtb; fi; " \
		"if test $board_name = BBBL; then " \
			"setenv fdtfile am335x-boneblue.dtb; fi; " \
		"if test $board_name = BBEN; then " \
			"setenv fdtfile am335x-sancloud-bbe.dtb; fi; " \
		"if test $board_name = A33515BB; then " \
			"setenv fdtfile am335x-evm.dtb; fi; " \
		"if test $board_name = A335X_SK; then " \
			"setenv fdtfile am335x-evmsk.dtb; fi; " \
		"if test $board_name = A335_ICE && test $ice_mii = rmii; then " \
			"setenv fdtfile am335x-icev2.dtb; fi; " \
		"if test $board_name = A335_ICE && test $ice_mii = mii; then " \
			"setenv fdtfile am335x-icev2-prueth.dtb; fi; " \
		"if test $fdtfile = undefined; then " \
			"echo WARNING: Could not determine device tree to use; fi; \0" \
	"init_console=" \
		"if test $board_name = A335_ICE; then "\
			"setenv console ttyO3,115200n8;" \
		"else " \
			"setenv console ttyO0,115200n8;" \
		"fi;\0" \
	NETARGS \
	DFUARGS \
	BOOTENV
#endif

/* PMIC support */
#define CONFIG_POWER_TPS65217
#define CONFIG_POWER_TPS65910

/* NS16550 Configuration */
#define CFG_SYS_NS16550_COM1		0x44e09000	/* Base EVM has UART0 */
#define CFG_SYS_NS16550_COM2		0x48022000	/* UART1 */
#define CFG_SYS_NS16550_COM3		0x48024000	/* UART2 */
#define CFG_SYS_NS16550_COM4		0x481a6000	/* UART3 */
#define CFG_SYS_NS16550_COM5		0x481a8000	/* UART4 */
#define CFG_SYS_NS16550_COM6		0x481aa000	/* UART5 */

#ifdef CONFIG_MTD_RAW_NAND
/* NAND: driver related configs */
#define CFG_SYS_NAND_ECCPOS		{ 2, 3, 4, 5, 6, 7, 8, 9, \
					 10, 11, 12, 13, 14, 15, 16, 17, \
					 18, 19, 20, 21, 22, 23, 24, 25, \
					 26, 27, 28, 29, 30, 31, 32, 33, \
					 34, 35, 36, 37, 38, 39, 40, 41, \
					 42, 43, 44, 45, 46, 47, 48, 49, \
					 50, 51, 52, 53, 54, 55, 56, 57, }

#define CFG_SYS_NAND_ECCSIZE		512
#define CFG_SYS_NAND_ECCBYTES	14
/* NAND: SPL related configs */

#endif /* !CONFIG_NAND */

/*
 * For NOR boot, we must set this to the start of where NOR is mapped
 * in memory.
 */

/*
 * USB configuration.  We enable MUSB support, both for host and for
 * gadget.  We set USB0 as peripheral and USB1 as host, based on the
 * board schematic and physical port wired to each.  Then for host we
 * add mass storage support and for gadget we add both RNDIS ethernet
 * and DFU.
 */


/* USB Device Firmware Update support */
#ifndef CONFIG_XPL_BUILD
#define DFUARGS \
	DFU_ALT_INFO_EMMC \
	DFU_ALT_INFO_MMC \
	DFU_ALT_INFO_RAM \
	DFU_ALT_INFO_NAND
#endif

/*
 * NOR Size = 16 MiB
 * Number of Sectors/Blocks = 128
 * Sector Size = 128 KiB
 * Word length = 16 bits
 * Default layout:
 * 0x000000 - 0x07FFFF : U-Boot (512 KiB)
 * 0x080000 - 0x09FFFF : First copy of U-Boot Environment (128 KiB)
 * 0x0A0000 - 0x0BFFFF : Second copy of U-Boot Environment (128 KiB)
 * 0x0C0000 - 0x4BFFFF : Linux Kernel (4 MiB)
 * 0x4C0000 - 0xFFFFFF : Userland (11 MiB + 256 KiB)
 */
#if defined(CONFIG_NOR)
#define CFG_SYS_FLASH_BASE		(0x08000000)
#define CFG_SYS_FLASH_SIZE		0x01000000
#endif  /* NOR support */


#endif	/* ! __CONFIG_AM335X_VERSA_NXT_H */
