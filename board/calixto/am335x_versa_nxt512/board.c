// SPDX-License-Identifier: GPL-2.0+
/*
 * board.c
 *
 * Board functions for TI AM335X based boards
 *
 * Copyright (C) 2011, Texas Instruments, Incorporated - http://www.ti.com/
 */

#include <config.h>
#include <dm.h>
#include <env.h>
#include <errno.h>
#include <hang.h>
#include <image.h>
#include <init.h>
#include <malloc.h>
#include <net.h>
#include <spl.h>
#include <serial.h>
#include <asm/arch/cpu.h>
#include <asm/arch/hardware.h>
#include <asm/arch/omap.h>
#include <asm/arch/ddr_defs.h>
#include <asm/arch/clock.h>
#include <asm/arch/clk_synthesizer.h>
#include <asm/arch/gpio.h>
#include <asm/arch/mmc_host_def.h>
#include <asm/arch/sys_proto.h>
#include <asm/arch/mem.h>
#include <asm/global_data.h>
#include <asm/io.h>
#include <asm/emif.h>
#include <asm/gpio.h>
#include <asm/omap_common.h>
#include <asm/omap_mmc.h>
#include <i2c.h>
#include <miiphy.h>
#include <cpsw.h>
#include <linux/bitops.h>
#include <linux/compiler.h>
#include <linux/delay.h>
#include <power/tps65217.h>
#include <power/tps65910.h>
#include <env_internal.h>
#include <watchdog.h>
#include "board.h"

DECLARE_GLOBAL_DATA_PTR;
static struct ctrl_dev *cdev = (struct ctrl_dev *)CTRL_DEVICE_BASE;

/*
 * Read header information from EEPROM into global structure.
 */

#ifndef CONFIG_DM_SERIAL
struct serial_device *default_serial_console(void)
{

		return &eserial1_device;
}
#endif

#if !CONFIG_IS_ENABLED(SKIP_LOWLEVEL_INIT)


/********************** calixto *************************/
static const struct ddr_data ddr3_calixto_nxt_data = {
        .datardsratio0 = CALIXTO_DDR3_RD_DQS,
        .datawdsratio0 = CALIXTO_DDR3_WR_DQS,
        .datafwsratio0 = CALIXTO_DDR3_PHY_FIFO_WE,
        .datawrsratio0 = CALIXTO_DDR3_PHY_WR_DATA,
};

static const struct cmd_control ddr3_calixto_nxt_cmd_ctrl_data = {
        .cmd0csratio = CALIXTO_DDR3_RATIO,
        .cmd0iclkout = CALIXTO_DDR3_INVERT_CLKOUT,

        .cmd1csratio = CALIXTO_DDR3_RATIO,
        .cmd1iclkout = CALIXTO_DDR3_INVERT_CLKOUT,

        .cmd2csratio = CALIXTO_DDR3_RATIO,
        .cmd2iclkout = CALIXTO_DDR3_INVERT_CLKOUT,
};

#define CONFIG_DDR512

#ifdef CONFIG_DDR512
static struct emif_regs ddr3_calixto512_emif_reg_data = {
        .sdram_config = CALIXTO512_DDR3_EMIF_SDCFG,
        .ref_ctrl = CALIXTO512_DDR3_EMIF_SDREF,
        .sdram_tim1 = CALIXTO512_DDR3_EMIF_TIM1,
        .sdram_tim2 = CALIXTO512_DDR3_EMIF_TIM2,
        .sdram_tim3 = CALIXTO512_DDR3_EMIF_TIM3,
        .zq_config = CALIXTO512_DDR3_ZQ_CFG,
        .emif_ddr_phy_ctlr_1 = CALIXTO512_DDR3_EMIF_READ_LATENCY,
};
#endif

#ifdef CONFIG_DDR256
static struct emif_regs ddr3_calixto256_emif_reg_data = {
        .sdram_config = CALIXTO256_DDR3_EMIF_SDCFG,
        .ref_ctrl = CALIXTO256_DDR3_EMIF_SDREF,
        .sdram_tim1 = CALIXTO256_DDR3_EMIF_TIM1,
        .sdram_tim2 = CALIXTO256_DDR3_EMIF_TIM2,
        .sdram_tim3 = CALIXTO256_DDR3_EMIF_TIM3,
        .zq_config = CALIXTO256_DDR3_ZQ_CFG,
        .emif_ddr_phy_ctlr_1 = CALIXTO256_DDR3_EMIF_READ_LATENCY,
};
#endif

/************************************************************************/

#ifdef CONFIG_SPL_OS_BOOT
int spl_start_uboot(void)
{
#ifdef CONFIG_SPL_SERIAL
	/* break into full u-boot on 'c' */
	if (serial_tstc() && serial_getc() == 'c')
		return 1;
#endif

#ifdef CONFIG_SPL_ENV_SUPPORT
	env_init();
	env_load();
	if (env_get_yesno("boot_os") != 1)
		return 1;
#endif

	return 0;
}
#endif
		
const struct dpll_params *get_dpll_ddr_params(void)
{

		int ind = get_sys_clk_index();
		return &dpll_ddr3_400MHz[ind];
}


const struct dpll_params *get_dpll_mpu_params(void)
{
	int ind = get_sys_clk_index();
	//int freq = am335x_get_efuse_mpu_max_freq(cdev);
	
	return &dpll_mpu_opp[ind][3];
}


void scale_vcores(void)
{
	int freq;	
	freq = am335x_get_efuse_mpu_max_freq(cdev);
		
}

void set_uart_mux_conf(void)
{
#if CONFIG_CONS_INDEX == 1
	enable_uart0_pin_mux();
#endif
}

void set_mux_conf_regs(void)
{
	enable_board_pin_mux();
}


const struct ctrl_ioregs ioregs_calixto_nxt = {
	.cm0ioctl		= CALIXTO_DDR3_IOCTRL_VALUE,
	.cm1ioctl		= CALIXTO_DDR3_IOCTRL_VALUE,
	.cm2ioctl		= CALIXTO_DDR3_IOCTRL_VALUE,
	.dt0ioctl		= CALIXTO_DDR3_IOCTRL_VALUE,
	.dt1ioctl		= CALIXTO_DDR3_IOCTRL_VALUE,
};

void sdram_init(void)
{
   #ifdef CONFIG_DDR512
       config_ddr(303, &ioregs_calixto_nxt, &ddr3_calixto_nxt_data,&ddr3_calixto_nxt_cmd_ctrl_data, &ddr3_calixto512_emif_reg_data, 0);
   #endif
   
   #ifdef CONFIG_DDR256
       config_ddr(303, &ioregs_calixto_nxt, &ddr3_calixto_nxt_data,&ddr3_calixto_nxt_cmd_ctrl_data, &ddr3_calixto256_emif_reg_data, 0);
   #endif
}
#endif
/*
#if defined(CONFIG_CLOCK_SYNTHESIZER) && (!defined(CONFIG_XPL_BUILD) || \
	(defined(CONFIG_SPL_ETH) && defined(CONFIG_XPL_BUILD)))
static void request_and_set_gpio(int gpio, char *name, int val)
{
	int ret;

	ret = gpio_request(gpio, name);
	if (ret < 0) {
		printf("%s: Unable to request %s\n", __func__, name);
		return;
	}

	ret = gpio_direction_output(gpio, 0);
	if (ret < 0) {
		printf("%s: Unable to set %s  as output\n", __func__, name);
		goto err_free_gpio;
	}

	gpio_set_value(gpio, val);

	return;

err_free_gpio:
	gpio_free(gpio);
}

#define REQUEST_AND_SET_GPIO(N)	request_and_set_gpio(N, #N, 1);
#define REQUEST_AND_CLR_GPIO(N)	request_and_set_gpio(N, #N, 0);
*/
/**
 * RMII mode on ICEv2 board needs 50MHz clock. Given the clock
 * synthesizer With a capacitor of 18pF, and 25MHz input clock cycle
 * PLL1 gives an output of 100MHz. So, configuring the div2/3 as 2 to
 * give 50MHz output for Eth0 and 1.
 */

/*
static struct clk_synth cdce913_data = {
	.id = 0x81,
	.capacitor = 0x90,
	.mux = 0x6d,
	.pdiv2 = 0x2,
	.pdiv3 = 0x2,
};


#endif
*/
#if defined(CONFIG_OF_BOARD_SETUP) && defined(CONFIG_OF_CONTROL) && \
	defined(CONFIG_DM_ETH) && defined(CONFIG_DRIVER_TI_CPSW)

#define MAX_CPSW_SLAVES	2

/* At the moment, we do not want to stop booting for any failures here */
int ft_board_setup(void *fdt, struct bd_info *bd)
{
	const char *slave_path, *enet_name;
	int enetnode, slavenode, phynode;
	struct udevice *ethdev;
	char alias[16];
	u32 phy_id[2];
	int phy_addr;
	int i, ret;

	/* phy address fixup needed only on beagle bone family */

	for (i = 0; i < MAX_CPSW_SLAVES; i++) {
		sprintf(alias, "ethernet%d", i);

		slave_path = fdt_get_alias(fdt, alias);
		if (!slave_path)
			continue;

		slavenode = fdt_path_offset(fdt, slave_path);
		if (slavenode < 0)
			continue;

		enetnode = fdt_parent_offset(fdt, slavenode);
		enet_name = fdt_get_name(fdt, enetnode, NULL);

		ethdev = eth_get_dev_by_name(enet_name);
		if (!ethdev)
			continue;

		phy_addr = cpsw_get_slave_phy_addr(ethdev, i);

		/* check for phy_id as well as phy-handle properties */
		ret = fdtdec_get_int_array_count(fdt, slavenode, "phy_id",
						 phy_id, 2);
		if (ret == 2) {
			if (phy_id[1] != phy_addr) {
				printf("fixing up phy_id for %s, old: %d, new: %d\n",
				       alias, phy_id[1], phy_addr);

				phy_id[0] = cpu_to_fdt32(phy_id[0]);
				phy_id[1] = cpu_to_fdt32(phy_addr);
				do_fixup_by_path(fdt, slave_path, "phy_id",
						 phy_id, sizeof(phy_id), 0);
			}
		} else {
			phynode = fdtdec_lookup_phandle(fdt, slavenode,
							"phy-handle");
			if (phynode < 0)
				continue;

			ret = fdtdec_get_int(fdt, phynode, "reg", -ENOENT);
			if (ret < 0)
				continue;

			if (ret != phy_addr) {
				printf("fixing up phy-handle for %s, old: %d, new: %d\n",
				       alias, ret, phy_addr);

				fdt_setprop_u32(fdt, phynode, "reg",
						cpu_to_fdt32(phy_addr));
			}
		}
	}

//done:
	return 0;
}

#endif

#if defined(CONFIG_CLOCK_SYNTHESIZER) && (!defined(CONFIG_XPL_BUILD) || \
	(defined(CONFIG_SPL_ETH) && defined(CONFIG_XPL_BUILD)))
static bool prueth_is_mii = true;
#endif

/*
 * Basic board specific setup.  Pinmux has been handled already.
 */
int board_init(void)
{
#if defined(CONFIG_HW_WATCHDOG)
	hw_watchdog_init();
#endif

	gd->bd->bi_boot_params = CFG_SYS_SDRAM_BASE + 0x100;
#if defined(CONFIG_NOR) || defined(CONFIG_NAND)
	gpmc_init();
#endif
return 0;
}

#ifdef CONFIG_BOARD_LATE_INIT
int board_late_init(void)
{
	struct udevice *dev;
#if !defined(CONFIG_XPL_BUILD)
	uint8_t mac_addr[6];
	uint32_t mac_hi, mac_lo;
#endif

#ifdef CONFIG_ENV_VARS_UBOOT_RUNTIME_CONFIG
//	char *name = NULL;



	/*
	 * Default FIT boot on HS devices. Non FIT images are not allowed
	 * on HS devices.
	 */
	if (get_device_type() == HS_DEVICE)
		env_set("boot_fit", "1");
#endif

#if !defined(CONFIG_XPL_BUILD)
	/* try reading mac address from efuse */
	mac_lo = readl(&cdev->macid0l);
	mac_hi = readl(&cdev->macid0h);
	mac_addr[0] = mac_hi & 0xFF;
	mac_addr[1] = (mac_hi & 0xFF00) >> 8;
	mac_addr[2] = (mac_hi & 0xFF0000) >> 16;
	mac_addr[3] = (mac_hi & 0xFF000000) >> 24;
	mac_addr[4] = mac_lo & 0xFF;
	mac_addr[5] = (mac_lo & 0xFF00) >> 8;

	if (!env_get("ethaddr")) {
		printf("<ethaddr> not set. Validating first E-fuse MAC\n");

		if (is_valid_ethaddr(mac_addr))
			eth_env_set_enetaddr("ethaddr", mac_addr);
	}

	mac_lo = readl(&cdev->macid1l);
	mac_hi = readl(&cdev->macid1h);
	mac_addr[0] = mac_hi & 0xFF;
	mac_addr[1] = (mac_hi & 0xFF00) >> 8;
	mac_addr[2] = (mac_hi & 0xFF0000) >> 16;
	mac_addr[3] = (mac_hi & 0xFF000000) >> 24;
	mac_addr[4] = mac_lo & 0xFF;
	mac_addr[5] = (mac_lo & 0xFF00) >> 8;

	if (!env_get("eth1addr")) {
		if (is_valid_ethaddr(mac_addr))
			eth_env_set_enetaddr("eth1addr", mac_addr);
	}

	env_set("ice_mii", prueth_is_mii ? "mii" : "rmii");
#endif

	if (!env_get("serial#")) {
		char *board_serial = env_get("board_serial");
		char *ethaddr = env_get("ethaddr");

		if (!board_serial || !strncmp(board_serial, "unknown", 7))
			env_set("serial#", ethaddr);
		else
			env_set("serial#", board_serial);
	}

	/* Just probe the potentially supported cdce913 device */
	uclass_get_device(UCLASS_CLK, 0, &dev);

	return 0;
}
#endif

/* CPSW platdata */
#if (CONFIG_IS_ENABLED(NET) || CONFIG_IS_ENABLED(NET_LWIP)) && \
    !CONFIG_IS_ENABLED(OF_CONTROL)
struct cpsw_slave_data slave_data[] = {
	{
		.slave_reg_ofs  = CPSW_SLAVE0_OFFSET,
		.sliver_reg_ofs = CPSW_SLIVER0_OFFSET,
		.phy_addr       = 0,
	},
	{
		.slave_reg_ofs  = CPSW_SLAVE1_OFFSET,
		.sliver_reg_ofs = CPSW_SLIVER1_OFFSET,
		.phy_addr       = 1,
	},
};

struct cpsw_platform_data am335_eth_data = {
	.cpsw_base		= CPSW_BASE,
	.version		= CPSW_CTRL_VERSION_2,
	.bd_ram_ofs		= CPSW_BD_OFFSET,
	.ale_reg_ofs		= CPSW_ALE_OFFSET,
	.cpdma_reg_ofs		= CPSW_CPDMA_OFFSET,
	.mdio_div		= CPSW_MDIO_DIV,
	.host_port_reg_ofs	= CPSW_HOST_PORT_OFFSET,
	.channels		= 8,
	.slaves			= 2,
	.slave_data		= slave_data,
	.ale_entries		= 1024,
	.bd_ram_ofs		= 0x2000,
	.mac_control		= 0x20,
	.active_slave		= 0,
	.mdio_base		= 0x4a101000,
	.gmii_sel		= 0x44e10650,
	.phy_sel_compat		= "ti,am3352-cpsw-phy-sel",
	.syscon_addr		= 0x44e10630,
	.macid_sel_compat	= "cpsw,am33xx",
};

struct eth_pdata cpsw_pdata = {
	.iobase = 0x4a100000,
	.phy_interface = 0,
	.priv_pdata = &am335_eth_data,
};
/*
U_BOOT_DEVICE(am335x_eth) = {
	.name = "eth_cpsw",
	.platdata = &cpsw_pdata,
};*/
#endif

#ifdef CONFIG_SPL_LOAD_FIT
int board_fit_config_name_match(const char *name)
{
	return 0;
}
#endif

#ifdef CONFIG_TI_SECURE_DEVICE
void board_fit_image_post_process(void **p_image, size_t *p_size)
{
	secure_boot_verify_image(p_image, p_size);
}
#endif

//#if !CONFIG_IS_ENABLED(OF_CONTROL)
static const struct omap_hsmmc_plat am335x_mmc0_plat = {
	.base_addr = (struct hsmmc *)OMAP_HSMMC1_BASE,
	.cfg.host_caps = MMC_MODE_HS_52MHz | MMC_MODE_HS | MMC_MODE_4BIT,
	.cfg.f_min = 400000,
	.cfg.f_max = 52000000,
	.cfg.voltages = MMC_VDD_32_33 | MMC_VDD_33_34 | MMC_VDD_165_195,
	.cfg.b_max = CONFIG_SYS_MMC_MAX_BLK_COUNT,
};

U_BOOT_DRVINFO(am335x_mmc0) = {
	.name = "omap_hsmmc",
	.plat = &am335x_mmc0_plat,
};

static const struct omap_hsmmc_plat am335x_mmc1_plat = {
	.base_addr = (struct hsmmc *)OMAP_HSMMC2_BASE,
	.cfg.host_caps = MMC_MODE_HS_52MHz | MMC_MODE_HS | MMC_MODE_4BIT,
	.cfg.f_min = 400000,
	.cfg.f_max = 52000000,
	.cfg.voltages = MMC_VDD_32_33 | MMC_VDD_33_34 | MMC_VDD_165_195,
	.cfg.b_max = CONFIG_SYS_MMC_MAX_BLK_COUNT,
};

U_BOOT_DRVINFO(am335x_mmc1) = {
	.name = "omap_hsmmc",
	.plat = &am335x_mmc1_plat,
};
//#endif
