cmd_spl/arch/arm/mach-omap2/am33xx/board.o := arm-linux-gnueabihf-gcc -Wp,-MD,spl/arch/arm/mach-omap2/am33xx/.board.o.d -nostdinc -isystem /usr/lib/gcc-cross/arm-linux-gnueabihf/11/include -Ispl/include -Iinclude      -I./arch/arm/include -include ./include/linux/kconfig.h -I./dts/upstream/include  -D__KERNEL__ -D__UBOOT__ -DCONFIG_XPL_BUILD -DCONFIG_SPL_BUILD -Wall -Wstrict-prototypes -Wno-format-security -fno-builtin -ffreestanding -std=gnu11 -fshort-wchar -fno-strict-aliasing -fno-PIE -Os -fno-stack-protector -fno-delete-null-pointer-checks -Wno-pointer-sign -Wno-stringop-truncation -Wno-zero-length-bounds -Wno-array-bounds -Wno-stringop-overflow -Wno-maybe-uninitialized -fmacro-prefix-map=./= -gdwarf-4 -fstack-usage -Wno-format-nonliteral -Wno-address-of-packed-member -Wno-unused-but-set-variable -Werror=date-time -Wno-packed-not-aligned -ffunction-sections -fdata-sections -fno-stack-protector -D__ARM__ -Wa,-mimplicit-it=always -mthumb -mthumb-interwork -mabi=aapcs-linux -mno-unaligned-access -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -msoft-float -mgeneral-regs-only -pipe -D__LINUX_ARM_ARCH__=7 -mtune=generic-armv7-a -I./arch/arm/mach-omap2/include    -DKBUILD_BASENAME='"board"'  -DKBUILD_MODNAME='"board"' -c -o spl/arch/arm/mach-omap2/am33xx/board.o arch/arm/mach-omap2/am33xx/board.c

source_spl/arch/arm/mach-omap2/am33xx/board.o := arch/arm/mach-omap2/am33xx/board.c

deps_spl/arch/arm/mach-omap2/am33xx/board.o := \
    $(wildcard include/config/target/am335x/guardian.h) \
    $(wildcard include/config/spl/dm/spi.h) \
    $(wildcard include/config/spl/of/control.h) \
    $(wildcard include/config/spl/skip/lowlevel/init.h) \
    $(wildcard include/config/spl/dm/i2c.h) \
    $(wildcard include/config/spl/dm/gpio.h) \
    $(wildcard include/config/am43xx.h) \
    $(wildcard include/config/mmc/omap/hs.h) \
    $(wildcard include/config/am335x/usb0.h) \
    $(wildcard include/config/am335x/usb1.h) \
    $(wildcard include/config/xpl/build.h) \
    $(wildcard include/config/am335x/usb0/peripheral.h) \
    $(wildcard include/config/am335x/usb0/host.h) \
    $(wildcard include/config/am335x/usb1/peripheral.h) \
    $(wildcard include/config/am335x/usb1/host.h) \
    $(wildcard include/config/usb/musb/.h) \
    $(wildcard include/config/am335x/usb.h) \
    $(wildcard include/config/dm/usb.h) \
    $(wildcard include/config/dm/eth.h) \
    $(wildcard include/config/usb/ether.h) \
    $(wildcard include/config/spl/am33xx/enable/rtc32k/osc.h) \
    $(wildcard include/config/spl/rtc/ddr/support.h) \
    $(wildcard include/config/nor/boot.h) \
    $(wildcard include/config/ti/i2c/board/detect.h) \
    $(wildcard include/config/debug/uart/board/init.h) \
  include/linux/kconfig.h \
    $(wildcard include/config/booger.h) \
    $(wildcard include/config/foo.h) \
    $(wildcard include/config/spl/.h) \
    $(wildcard include/config/tpl/.h) \
    $(wildcard include/config/tools/.h) \
    $(wildcard include/config/tpl/build.h) \
    $(wildcard include/config/vpl/build.h) \
    $(wildcard include/config/spl/build.h) \
    $(wildcard include/config/spl/foo.h) \
    $(wildcard include/config/tools/foo.h) \
    $(wildcard include/config/tpl/foo.h) \
    $(wildcard include/config/vpl/foo.h) \
    $(wildcard include/config/spl/option.h) \
    $(wildcard include/config/spl/acme.h) \
    $(wildcard include/config/acme.h) \
    $(wildcard include/config/tpl/acme.h) \
    $(wildcard include/config/if/enabled/int.h) \
    $(wildcard include/config/spl/int/option.h) \
  include/config.h \
  include/configs/am335x_versa_nxt512.h \
    $(wildcard include/config/timestamp.h) \
    $(wildcard include/config/mach/type.h) \
    $(wildcard include/config/env/size.h) \
    $(wildcard include/config/spl/cmd/pxe.h) \
    $(wildcard include/config/spl/cmd/dhcp.h) \
    $(wildcard include/config/power/tps65217.h) \
    $(wildcard include/config/power/tps65910.h) \
    $(wildcard include/config/mtd/raw/nand.h) \
    $(wildcard include/config/spl/os/boot.h) \
    $(wildcard include/config/sys/nand/spl/kernel/offs.h) \
    $(wildcard include/config/nand.h) \
    $(wildcard include/config/nor.h) \
  include/configs/ti_am335x_common.h \
  arch/arm/include/asm/arch/omap.h \
    $(wildcard include/config/am33xx.h) \
  include/linux/sizes.h \
  include/linux/const.h \
  include/configs/ti_armv7_omap.h \
  include/configs/ti_armv7_common.h \
    $(wildcard include/config/nr/dram/banks.h) \
    $(wildcard include/config/qspi/boot.h) \
    $(wildcard include/config/spl/text/base.h) \
    $(wildcard include/config/text/base.h) \
    $(wildcard include/config/cmd/net.h) \
    $(wildcard include/config/arm64.h) \
    $(wildcard include/config/distro/defaults.h) \
    $(wildcard include/config/cmd/pxe.h) \
    $(wildcard include/config/cmd/dhcp.h) \
    $(wildcard include/config/cmd/mmc.h) \
    $(wildcard include/config/cmd/usb.h) \
  include/config_distro_bootcmd.h \
    $(wildcard include/config/sandbox.h) \
    $(wildcard include/config/cmd/ubifs.h) \
    $(wildcard include/config/efi/loader.h) \
    $(wildcard include/config/arm.h) \
    $(wildcard include/config/x86/run/32bit.h) \
    $(wildcard include/config/x86/run/64bit.h) \
    $(wildcard include/config/arch/rv32i.h) \
    $(wildcard include/config/arch/rv64i.h) \
    $(wildcard include/config/cmd/bootefi/bootmgr.h) \
    $(wildcard include/config/sata.h) \
    $(wildcard include/config/nvme.h) \
    $(wildcard include/config/scsi.h) \
    $(wildcard include/config/ide.h) \
    $(wildcard include/config/pci.h) \
    $(wildcard include/config/cmd/virtio.h) \
    $(wildcard include/config/x86.h) \
    $(wildcard include/config/cmd/extension.h) \
  arch/arm/include/asm/config.h \
    $(wildcard include/config/arch/ls1021a.h) \
    $(wildcard include/config/fsl/layerscape.h) \
  include/linux/kconfig.h \
  include/config_fallbacks.h \
    $(wildcard include/config/spl/pad/to.h) \
    $(wildcard include/config/spl/max/size.h) \
  include/dm.h \
  include/dm/device.h \
    $(wildcard include/config/devres.h) \
    $(wildcard include/config/spl/of/platdata/rt.h) \
    $(wildcard include/config/spl/of/real.h) \
    $(wildcard include/config/spl/devres.h) \
    $(wildcard include/config/spl/dm/dma.h) \
    $(wildcard include/config/spl/iommu.h) \
    $(wildcard include/config/linker/list/align.h) \
    $(wildcard include/config/spl/acpigen.h) \
    $(wildcard include/config/spl/pci.h) \
  include/dm/ofnode.h \
    $(wildcard include/config/spl/ofnode/multi/tree.h) \
    $(wildcard include/config/spl/dm/inline/ofnode.h) \
    $(wildcard include/config/spl/dm.h) \
    $(wildcard include/config/dm.h) \
  include/fdtdec.h \
    $(wildcard include/config/fdt/64bit.h) \
    $(wildcard include/config/of/embed.h) \
    $(wildcard include/config/phys/64bit.h) \
    $(wildcard include/config/of/board.h) \
  include/linux/libfdt.h \
  include/linux/libfdt_env.h \
  include/linux/string.h \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
  include/linux/posix_types.h \
  include/linux/stddef.h \
  include/linux/compiler_types.h \
    $(wildcard include/config/have/arch/compiler/h.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/spl/optimize/inlining.h) \
    $(wildcard include/config/cc/has/asm/inline.h) \
  include/linux/compiler_attributes.h \
  include/linux/compiler-gcc.h \
    $(wildcard include/config/retpoline.h) \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  arch/arm/include/asm/posix_types.h \
  arch/arm/include/asm/types.h \
    $(wildcard include/config/dma/addr/t/64bit.h) \
  include/asm-generic/int-ll64.h \
  /usr/lib/gcc-cross/arm-linux-gnueabihf/11/include/stdbool.h \
  arch/arm/include/asm/string.h \
    $(wildcard include/config/spl/use/arch/memcpy.h) \
    $(wildcard include/config/spl/use/arch/memmove.h) \
    $(wildcard include/config/spl/use/arch/memset.h) \
  include/linux/linux_string.h \
  include/linux/kernel.h \
  include/linux/printk.h \
    $(wildcard include/config/loglevel.h) \
    $(wildcard include/config/log.h) \
  include/log.h \
    $(wildcard include/config/log/max/level.h) \
    $(wildcard include/config/spl/log.h) \
    $(wildcard include/config/spl/log/max/level.h) \
    $(wildcard include/config/logf/func.h) \
    $(wildcard include/config/panic/hang.h) \
    $(wildcard include/config/log/error/return.h) \
    $(wildcard include/config/logf/file.h) \
    $(wildcard include/config/logf/line.h) \
  include/stdio.h \
    $(wildcard include/config/spl/serial.h) \
    $(wildcard include/config/console/flush/support.h) \
  /usr/lib/gcc-cross/arm-linux-gnueabihf/11/include/stdarg.h \
  include/linux/compiler.h \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/stack/validation.h) \
    $(wildcard include/config/kasan.h) \
  include/linker_lists.h \
  include/dm/uclass-id.h \
  include/linux/bitops.h \
    $(wildcard include/config/sandbox/bits/per/long.h) \
  include/asm-generic/bitsperlong.h \
  arch/arm/include/asm/bitops.h \
    $(wildcard include/config/has/thumb2.h) \
    $(wildcard include/config/spl/sys/thumb/build.h) \
  include/asm-generic/bitops/builtin-__fls.h \
  include/asm-generic/bitops/builtin-__ffs.h \
  include/asm-generic/bitops/builtin-fls.h \
  include/asm-generic/bitops/builtin-ffs.h \
  include/asm-generic/bitops/fls64.h \
  arch/arm/include/asm/proc-armv/system.h \
  include/linux/list.h \
  include/linux/poison.h \
  include/limits.h \
    $(wildcard include/config/64bit.h) \
  arch/arm/include/asm/byteorder.h \
  include/linux/byteorder/little_endian.h \
  include/linux/byteorder/swab.h \
  include/linux/byteorder/generic.h \
  include/vsprintf.h \
  include/linux/../../scripts/dtc/libfdt/libfdt.h \
  include/linux/../../scripts/dtc/libfdt/libfdt_env.h \
  include/linux/../../scripts/dtc/libfdt/fdt.h \
  include/pci.h \
    $(wildcard include/config/sys/pci/64bit.h) \
    $(wildcard include/config/dm/pci/compat.h) \
    $(wildcard include/config/mpc85xx.h) \
    $(wildcard include/config/pci/sriov.h) \
  include/pci_ids.h \
  include/dm/pci.h \
  include/dm/of.h \
  arch/arm/include/asm/global_data.h \
    $(wildcard include/config/fsl/esdhc.h) \
    $(wildcard include/config/fsl/esdhc/imx.h) \
    $(wildcard include/config/spl/acpi.h) \
    $(wildcard include/config/u/qe.h) \
    $(wildcard include/config/at91family.h) \
    $(wildcard include/config/spl/sys/icache/off.h) \
    $(wildcard include/config/spl/sys/dcache/off.h) \
    $(wildcard include/config/resv/ram.h) \
    $(wildcard include/config/arch/omap2plus.h) \
    $(wildcard include/config/fsl/lsch3.h) \
    $(wildcard include/config/sys/fsl/has/dp/ddr.h) \
    $(wildcard include/config/arch/imx8.h) \
    $(wildcard include/config/imx/ele.h) \
    $(wildcard include/config/arch/imx8ulp.h) \
    $(wildcard include/config/smbios.h) \
  arch/arm/include/asm/u-boot.h \
  include/asm-generic/u-boot.h \
    $(wildcard include/config/mpc8xx.h) \
    $(wildcard include/config/e500.h) \
    $(wildcard include/config/mpc86xx.h) \
    $(wildcard include/config/m68k.h) \
    $(wildcard include/config/mpc83xx.h) \
    $(wildcard include/config/extra/clock.h) \
  arch/arm/include/asm/u-boot-arm.h \
  include/asm-generic/global_data.h \
    $(wildcard include/config/spl/env/support.h) \
    $(wildcard include/config/post.h) \
    $(wildcard include/config/board/types.h) \
    $(wildcard include/config/spl/pre/console/buffer.h) \
    $(wildcard include/config/spl/of/platdata/driver/rt.h) \
    $(wildcard include/config/timer.h) \
    $(wildcard include/config/spl/of/live.h) \
    $(wildcard include/config/spl/multi/dtb/fit.h) \
    $(wildcard include/config/trace.h) \
    $(wildcard include/config/spl/sys/i2c/legacy.h) \
    $(wildcard include/config/spl/cmd/bdinfo/extra.h) \
    $(wildcard include/config/spl/sys/malloc/f.h) \
    $(wildcard include/config/console/record.h) \
    $(wildcard include/config/spl/video.h) \
    $(wildcard include/config/bootstage.h) \
    $(wildcard include/config/spl/bloblist.h) \
    $(wildcard include/config/spl/handoff.h) \
    $(wildcard include/config/translation/offset.h) \
    $(wildcard include/config/acpi.h) \
    $(wildcard include/config/spl/generate/smbios/table.h) \
    $(wildcard include/config/spl/event.h) \
    $(wildcard include/config/spl/cyclic.h) \
    $(wildcard include/config/spl/upl.h) \
    $(wildcard include/config/spl/event/dynamic.h) \
    $(wildcard include/config/spl/sys/malloc/f/len.h) \
    $(wildcard include/config/spl/bootstage.h) \
    $(wildcard include/config/spl/trace.h) \
    $(wildcard include/config/trace/buffer/size.h) \
  include/board_f.h \
  include/event_internal.h \
  include/event.h \
    $(wildcard include/config/spl/event/debug.h) \
  include/dm/ofnode_decl.h \
  include/membuff.h \
  include/linux/build_bug.h \
  include/asm-offsets.h \
  spl/include/generated/generic-asm-offsets.h \
  include/dm/of_access.h \
  include/phy_interface.h \
    $(wildcard include/config/arch/lx2160a.h) \
    $(wildcard include/config/arch/lx2162a.h) \
    $(wildcard include/config/phy/ncsi.h) \
  include/string.h \
  include/linux/errno.h \
  include/dm/tag.h \
  include/dm/fdtaddr.h \
  include/dm/read.h \
    $(wildcard include/config/dm/dev/read/inline.h) \
    $(wildcard include/config/spl/of/platdata.h) \
    $(wildcard include/config/spl/of/libfdt.h) \
  include/dm/uclass.h \
  include/dm/platdata.h \
  include/debug_uart.h \
    $(wildcard include/config/debug/uart.h) \
    $(wildcard include/config/debug/uart/ns16550.h) \
    $(wildcard include/config/debug/uart/base.h) \
    $(wildcard include/config/baudrate.h) \
    $(wildcard include/config/debug/uart/clock.h) \
    $(wildcard include/config/debug/uart/announce.h) \
    $(wildcard include/config/debug/uart/shift.h) \
  include/errno.h \
    $(wildcard include/config/errno/str.h) \
    $(wildcard include/config/spl/errno/str.h) \
  include/init.h \
    $(wildcard include/config/efi.h) \
    $(wildcard include/config/save/prev/bl/initramfs/start/addr.h) \
    $(wildcard include/config/save/prev/bl/fdt/addr.h) \
    $(wildcard include/config/spl/cpu.h) \
    $(wildcard include/config/dtb/reselect.h) \
  include/net.h \
    $(wildcard include/config/net/lwip.h) \
  include/net-common.h \
    $(wildcard include/config/sys/rx/eth/buffer.h) \
    $(wildcard include/config/dm/dsa.h) \
    $(wildcard include/config/api.h) \
    $(wildcard include/config/reset/phy/r.h) \
    $(wildcard include/config/spl/net.h) \
    $(wildcard include/config/spl/net/lwip.h) \
  arch/arm/include/asm/cache.h \
    $(wildcard include/config/sys/cacheline/size.h) \
  arch/arm/include/asm/system.h \
    $(wildcard include/config/armv8/psci.h) \
    $(wildcard include/config/armv7/lpae.h) \
    $(wildcard include/config/cpu/v7a.h) \
    $(wildcard include/config/armv7/psci.h) \
    $(wildcard include/config/sys/arm/cache/writethrough.h) \
    $(wildcard include/config/sys/arm/cache/writealloc.h) \
    $(wildcard include/config/sys/arm/cache/writeback.h) \
  arch/arm/include/asm/barriers.h \
  include/command.h \
    $(wildcard include/config/sys/longhelp.h) \
    $(wildcard include/config/auto/complete.h) \
    $(wildcard include/config/cmd/run.h) \
    $(wildcard include/config/cmd/memory.h) \
    $(wildcard include/config/cmd/i2c.h) \
    $(wildcard include/config/cmd/itest.h) \
    $(wildcard include/config/cmd/pci.h) \
    $(wildcard include/config/cmd/setexpr.h) \
    $(wildcard include/config/cmd/bootd.h) \
    $(wildcard include/config/cmd/bootm.h) \
    $(wildcard include/config/cmd/nvedit/efi.h) \
    $(wildcard include/config/cmdline.h) \
    $(wildcard include/config/sys/cbsize.h) \
    $(wildcard include/config/sys/maxargs.h) \
    $(wildcard include/config/spl/cmdline.h) \
  include/env.h \
    $(wildcard include/config/env/import/fdt.h) \
  include/compiler.h \
  /usr/lib/gcc-cross/arm-linux-gnueabihf/11/include/stddef.h \
  include/hexdump.h \
  include/linux/ctype.h \
  include/linux/if_ether.h \
  include/rand.h \
  include/time.h \
  include/linux/typecheck.h \
  include/net-legacy.h \
    $(wildcard include/config/bootp/dns2.h) \
    $(wildcard include/config/net.h) \
    $(wildcard include/config/bootp/max/root/path/len.h) \
    $(wildcard include/config/cmd/dns.h) \
    $(wildcard include/config/cmd/ping.h) \
    $(wildcard include/config/cmd/cdp.h) \
    $(wildcard include/config/cmd/sntp.h) \
    $(wildcard include/config/netconsole.h) \
  include/ns16550.h \
    $(wildcard include/config/sys/isa/base.h) \
    $(wildcard include/config/spl/dm/serial.h) \
    $(wildcard include/config/ns16550/dynamic.h) \
    $(wildcard include/config/sys/ns16550/reg/size.h) \
    $(wildcard include/config/spl.h) \
    $(wildcard include/config/soc/da8xx.h) \
  include/serial.h \
    $(wildcard include/config/arch/tegra.h) \
    $(wildcard include/config/sys/coreboot.h) \
    $(wildcard include/config/microblaze.h) \
    $(wildcard include/config/usb/tty.h) \
    $(wildcard include/config/spl/serial/rx/buffer.h) \
    $(wildcard include/config/serial/rx/buffer/size.h) \
    $(wildcard include/config/sys/pbsize.h) \
  include/post.h \
    $(wildcard include/config/arch/mpc8360.h) \
    $(wildcard include/config/sys/immr.h) \
  arch/arm/include/asm/io.h \
  arch/arm/include/asm/memory.h \
    $(wildcard include/config/discontigmem.h) \
  include/asm-generic/io.h \
  include/iotrace.h \
    $(wildcard include/config/io/trace.h) \
  include/omap3_spi.h \
  include/spl.h \
    $(wildcard include/config/tpl.h) \
    $(wildcard include/config/vpl.h) \
    $(wildcard include/config/spl/load/fit.h) \
    $(wildcard include/config/spl/load/fit/full.h) \
    $(wildcard include/config/spl/legacy/image/crc/check.h) \
    $(wildcard include/config/spl/load/block.h) \
    $(wildcard include/config/sys/mmcsd/raw/mode/u/boot/use/partition.h) \
    $(wildcard include/config/sys/monitor/len.h) \
    $(wildcard include/config/sys/uboot/start.h) \
    $(wildcard include/config/spl/panic/on/raw/image.h) \
    $(wildcard include/config/spl/raw/image/support.h) \
    $(wildcard include/config/spl/display/print.h) \
    $(wildcard include/config/spl/libcommon/support.h) \
    $(wildcard include/config/spl/stack/r/malloc/simple/len.h) \
    $(wildcard include/config/spl/gzip.h) \
    $(wildcard include/config/spl/lzma.h) \
  include/binman_sym.h \
    $(wildcard include/config/spl/binman/symbols.h) \
  arch/arm/include/asm/spl.h \
    $(wildcard include/config/arch/exynos4.h) \
    $(wildcard include/config/arch/exynos5.h) \
    $(wildcard include/config/arch/k3.h) \
  arch/arm/include/asm/arch/spl.h \
    $(wildcard include/config/spl/usb/storage.h) \
  include/handoff.h \
  include/mmc.h \
    $(wildcard include/config/spl/dm/mmc.h) \
    $(wildcard include/config/spl/mmc/supports/tuning.h) \
    $(wildcard include/config/spl/mmc/hs400/es/support.h) \
    $(wildcard include/config/spl/mmc/pwrseq.h) \
    $(wildcard include/config/spl/mmc/uhs/support.h) \
    $(wildcard include/config/spl/mmc/hs400/support.h) \
    $(wildcard include/config/dm/mmc.h) \
    $(wildcard include/config/spl/blk.h) \
    $(wildcard include/config/spl/mmc/write.h) \
    $(wildcard include/config/spl/mmc/hw/partitioning.h) \
    $(wildcard include/config/spl/dm/regulator.h) \
    $(wildcard include/config/blk.h) \
    $(wildcard include/config/mmc/spi.h) \
    $(wildcard include/config/sys/mmc/env/part.h) \
  include/linux/dma-direction.h \
  include/cyclic.h \
    $(wildcard include/config/cyclic.h) \
  include/u-boot/schedule.h \
  include/part.h \
    $(wildcard include/config/spl/partition/uuids.h) \
    $(wildcard include/config/partition/type/guid.h) \
    $(wildcard include/config/dos/partition.h) \
    $(wildcard include/config/spl/partitions.h) \
    $(wildcard include/config/spl/fs/ext4.h) \
    $(wildcard include/config/spl/fs/fat.h) \
    $(wildcard include/config/sys/mmcsd/raw/mode/u/boot/partition.h) \
    $(wildcard include/config/spl/efi/partition.h) \
    $(wildcard include/config/spl/dos/partition.h) \
    $(wildcard include/config/partitions.h) \
  include/blk.h \
    $(wildcard include/config/sys/64bit/lba.h) \
    $(wildcard include/config/spl/legacy/block.h) \
    $(wildcard include/config/spl/block/cache.h) \
    $(wildcard include/config/bounce/buffer.h) \
  include/bouncebuf.h \
  include/efi.h \
    $(wildcard include/config/efi/stub/64bit.h) \
    $(wildcard include/config/x86/64.h) \
    $(wildcard include/config/efi/ram/size.h) \
  include/linux/linkage.h \
  arch/arm/include/asm/linkage.h \
  include/ide.h \
    $(wildcard include/config/sys/ide/maxdevice.h) \
    $(wildcard include/config/sys/ide/maxbus.h) \
  include/u-boot/uuid.h \
  include/part_efi.h \
    $(wildcard include/config/efi/partition/entries/numbers.h) \
  arch/arm/include/asm/arch/cpu.h \
  arch/arm/include/asm/arch/hardware.h \
    $(wildcard include/config/cons/index.h) \
  arch/arm/include/asm/arch/hardware_am33xx.h \
  arch/arm/include/asm/ti-common/omap_wdt.h \
  arch/arm/include/asm/arch/ddr_defs.h \
  arch/arm/include/asm/emif.h \
    $(wildcard include/config/dra7xx.h) \
    $(wildcard include/config/arch/keystone.h) \
    $(wildcard include/config/omap54xx.h) \
    $(wildcard include/config/sys/emif/precalculated/timing/regs.h) \
  arch/arm/include/asm/arch/clock.h \
  arch/arm/include/asm/arch/clocks_am33xx.h \
  arch/arm/include/asm/arch/gpio.h \
  arch/arm/include/asm/omap_gpio.h \
  arch/arm/include/asm/arch/i2c.h \
  arch/arm/include/asm/omap_i2c.h \
  arch/arm/include/asm/arch/mem.h \
  arch/arm/include/asm/arch/mmc_host_def.h \
  arch/arm/include/asm/omap_mmc.h \
    $(wildcard include/config/omap34xx.h) \
  arch/arm/include/asm/arch/sys_proto.h \
  include/linux/mtd/omap_gpmc.h \
  arch/arm/include/asm/gpio.h \
    $(wildcard include/config/gpio/extra/header.h) \
  include/asm-generic/gpio.h \
  arch/arm/include/asm/omap_common.h \
    $(wildcard include/config/fastboot/flash.h) \
  include/i2c.h \
    $(wildcard include/config/sys/i2c/legacy.h) \
    $(wildcard include/config/sys/i2c/early/init.h) \
    $(wildcard include/config/at91rm9200.h) \
    $(wildcard include/config/at91sam9260.h) \
    $(wildcard include/config/at91sam9261.h) \
    $(wildcard include/config/at91sam9263.h) \
    $(wildcard include/config/dm/i2c.h) \
  include/miiphy.h \
    $(wildcard include/config/sys/fault/echo/link/down.h) \
    $(wildcard include/config/bitbangmii.h) \
    $(wildcard include/config/bitbangmii/multi.h) \
  include/linux/mii.h \
  include/phy.h \
    $(wildcard include/config/phy/fixed.h) \
  include/linux/ethtool.h \
  include/linux/mdio.h \
  include/cpsw.h \
  include/linux/delay.h \
  include/linux/usb/ch9.h \
  arch/arm/include/asm/unaligned.h \
  include/asm-generic/unaligned.h \
  include/linux/usb/gadget.h \
    $(wildcard include/config/usb/gadget/dualspeed.h) \
    $(wildcard include/config/usb/otg.h) \
  include/usb.h \
    $(wildcard include/config/spl/dm/usb.h) \
    $(wildcard include/config/usb/musb/host.h) \
    $(wildcard include/config/usb/ehci/hcd.h) \
    $(wildcard include/config/usb/storage.h) \
    $(wildcard include/config/usb/host/ether.h) \
    $(wildcard include/config/spl/usb/keyboard.h) \
  include/usb_defs.h \
  include/linux/compat.h \
    $(wildcard include/config/xen.h) \
    $(wildcard include/config/lbdaf.h) \
  include/console.h \
    $(wildcard include/config/video/ansi.h) \
    $(wildcard include/config/console/mux.h) \
  include/stdio_dev.h \
  include/malloc.h \
    $(wildcard include/config/spl/sys/malloc/simple.h) \
    $(wildcard include/config/valgrind.h) \
  arch/arm/include/asm/processor.h \
  arch/arm/include/asm/atomic.h \
    $(wildcard include/config/smp.h) \
  include/asm-generic/atomic.h \
  arch/arm/include/asm/ptrace.h \
  arch/arm/include/asm/proc-armv/ptrace.h \
  arch/arm/include/asm/proc-armv/processor.h \
  arch/arm/include/asm/proc-armv/domain.h \
  include/linux/err.h \
    $(wildcard include/config/err/ptr/offset.h) \
  include/linux/usb/musb.h \
  arch/arm/include/asm/omap_musb.h \
  arch/arm/include/asm/davinci_rtc.h \

spl/arch/arm/mach-omap2/am33xx/board.o: $(deps_spl/arch/arm/mach-omap2/am33xx/board.o)

$(deps_spl/arch/arm/mach-omap2/am33xx/board.o):
