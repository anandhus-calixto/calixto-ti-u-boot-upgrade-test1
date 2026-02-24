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

#ifndef CONFIG_XPL_BUILD
# define CONFIG_TIMESTAMP
#endif


#define CONFIG_MACH_TYPE		MACH_TYPE_AM335XEVM

/* Clock Defines */
#define V_OSCK				24000000  /* Clock output from T2 */
#define V_SCLK				(V_OSCK)

#include <config_distro_bootcmd.h>

#ifndef CONFIG_XPL_BUILD
#include <env/ti/dfu.h>
#define CONFIG_EXTRA_ENV_SETTINGS \
	"loadaddr=0x80200000\0" \
	"fdtaddr=0x80F80000\0" \
	"fdt_high=0xa0000000\0" \
	"boot_fdt=try\0" \
	"rdaddr=0x81000000\0" \
	"bootpart=0:2\0" \
	"bootdir=/boot\0" \
	"bootfile=zImage\0" \
	"fdtfile=am335x-iec61850-module.dtb\0" \
	"console=ttyO0,115200n8\0" \
	"optargs=\0" \
	"mmcdev=0\0" \
	"mmcroot=/dev/mmcblk0p2 ro\0" \
	"mmcrootfstype=ext4 rootwait\0" \
	"mmcargs=setenv bootargs console=${console} " \
		"${optargs} " \
		"root=${mmcroot} " \
		"rootfstype=${mmcrootfstype}\0" \
	"spierase_env=echo removing enviroment settings from SPI flash..; " \
                        "sf probe 0; " \
                        "sf erase 0xA0000 0xC0000\0" \
	"enable_emmc_rstn=mmc dev 1;mmc rstn 1;\0" \
	"loadimage=load mmc ${bootpart} ${loadaddr} ${bootdir}/${bootfile}\0" \
	"loadfdt=load mmc ${bootpart} ${fdtaddr} ${bootdir}/${fdtfile}\0" \
	"mmcloados=run mmcargs; " \
		"if test ${boot_fdt} = yes || test ${boot_fdt} = try; then " \
			"if run loadfdt; then " \
				"bootz ${loadaddr} - ${fdtaddr}; " \
			"else " \
				"echo WARN: Cannot load the DT; " \
				"echo Running SD Boot using uEnv.txt; " \
				"run sdbootenv; " \
			"fi; " \
		"fi;\0" \
	"sdbootenv=mmc dev ${mmcdev}; " \
                "if mmc rescan; then " \
                        "echo SD/MMC found on device ${mmcdev};" \
                        "if run loadbootenv; then " \
                                "echo Loaded environment from ${bootenv};" \
                                "run importbootenv;" \
                        "fi;" \
                        "if test -n $uenvcmd; then " \
                                "echo Running uenvcmd ...;" \
                                "run uenvcmd;" \
                        "fi;" \
                "fi;\0" \
        "emmcbootos=" \
                "if run loadimage; then " \
                        "run mmcloados; " \
                "else " \
                        "echo Running SD Boot using uEnv.txt; " \
                        "run sdbootenv; " \
                "fi;\0" \
	"bootcmd_emmc=echo Booting from eMMC ...; "\
		"setenv mmcdev 0;" \
		"setenv bootpart 0:2;" \
	        "setenv mmcroot /dev/mmcblk0p2;" \
        	"run emmcbootos;\0" \
	"boot_targets=" \
		"emmc " \
		"\0"

#endif

#define CONFIG_BOOTCOMMAND \
	"for target in ${boot_targets}; do run bootcmd_${target}; done"

/* NS16550 Configuration */
#define CFG_SYS_NS16550_COM1		0x44e09000	/* Base EVM has UART0 */
#define CFG_SYS_NS16550_COM2		0x48022000	/* UART1 */
#define CFG_SYS_NS16550_COM3		0x48024000	/* UART2 */
#define CFG_SYS_NS16550_COM4		0x481a6000	/* UART3 */
#define CFG_SYS_NS16550_COM5		0x481a8000	/* UART4 */
#define CFG_SYS_NS16550_COM6		0x481aa000	/* UART5 */


#ifdef CONFIG_MTD_RAW_NAND
/* NAND: device related configs */
/* NAND: driver related configs */
#define CFG_SYS_NAND_BAD_BLOCK_POS	NAND_LARGE_BADBLOCK_POS
#define CFG_SYS_NAND_ECCPOS		{ 2, 3, 4, 5, 6, 7, 8, 9, \
					 10, 11, 12, 13, 14, 15, 16, 17, \
					 18, 19, 20, 21, 22, 23, 24, 25, \
					 26, 27, 28, 29, 30, 31, 32, 33, \
					 34, 35, 36, 37, 38, 39, 40, 41, \
					 42, 43, 44, 45, 46, 47, 48, 49, \
					 50, 51, 52, 53, 54, 55, 56, 57, }

#define CFG_SYS_NAND_ECCSIZE		512
#define CFG_SYS_NAND_ECCBYTES	14
#endif /* !CONFIG_MTD_RAW_NAND */
//#define CONFIG_SYS_SPI_U_BOOT_OFFS      0x00020000
/* NAND: SPL related configs */


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


/*
 * Disable MMC DM for SPL build and can be re-enabled after adding
 * DM support in SPL
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
 * Default to using SPI for environment, etc.
 * 0x000000 - 0x020000 : SPL (128KiB)
 * 0x020000 - 0x0A0000 : U-Boot (512KiB)
 * 0x0A0000 - 0x0BFFFF : First copy of U-Boot Environment (128KiB)
 * 0x0C0000 - 0x0DFFFF : Second copy of U-Boot Environment (128KiB)
 * 0x0E0000 - 0x442000 : Linux Kernel
 * 0x442000 - 0x800000 : Userland
 */
/* SPI flash. */


/* SPI flash. */
#define CONFIG_SF_DEFAULT_SPEED		24000000

#endif	/* ! __CONFIG_AM335X_VERSA_NXT_H */
