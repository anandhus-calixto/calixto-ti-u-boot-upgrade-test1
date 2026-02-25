cmd_spl/common/spl/spl.o := /media/drive_b/anandhu/ti/linux-devkit/sysroots/x86_64-arago-linux/usr/bin/arm-oe-linux-gnueabi/arm-oe-linux-gnueabi-gcc -Wp,-MD,spl/common/spl/.spl.o.d -nostdinc -isystem /media/drive_b/anandhu/ti/linux-devkit/sysroots/x86_64-arago-linux/usr/lib/arm-oe-linux-gnueabi/gcc/arm-oe-linux-gnueabi/13.4.0/include -Ispl/include -Iinclude      -I./arch/arm/include -include ./include/linux/kconfig.h -I./dts/upstream/include  -D__KERNEL__ -D__UBOOT__ -DCONFIG_XPL_BUILD -DCONFIG_SPL_BUILD -Wall -Wstrict-prototypes -Wno-format-security -fno-builtin -ffreestanding -std=gnu11 -fshort-wchar -fno-strict-aliasing -fno-PIE -Os -fno-stack-protector -fno-delete-null-pointer-checks -Wno-pointer-sign -Wno-stringop-truncation -Wno-zero-length-bounds -Wno-array-bounds -Wno-stringop-overflow -Wno-maybe-uninitialized -fmacro-prefix-map=./= -gdwarf-4 -fstack-usage -Wno-format-nonliteral -Wno-address-of-packed-member -Wno-unused-but-set-variable -Werror=date-time -Wno-packed-not-aligned -ffunction-sections -fdata-sections -fno-stack-protector -D__ARM__ -Wa,-mimplicit-it=always -mthumb -mthumb-interwork -mabi=aapcs-linux -mno-unaligned-access -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -msoft-float -mgeneral-regs-only -pipe -march=armv7-a -D__LINUX_ARM_ARCH__=7 -mtune=generic-armv7-a -I./arch/arm/mach-omap2/include    -DKBUILD_BASENAME='"spl"'  -DKBUILD_MODNAME='"spl"' -c -o spl/common/spl/spl.o common/spl/spl.c

source_spl/common/spl/spl.o := common/spl/spl.c

deps_spl/common/spl/spl.o := \
    $(wildcard include/config/spl/banner/print.h) \
    $(wildcard include/config/spl/binman/uboot/symbols.h) \
    $(wildcard include/config/tpl.h) \
    $(wildcard include/config/vpl.h) \
    $(wildcard include/config/spl/show/boot/progress.h) \
    $(wildcard include/config/spl/os/boot.h) \
    $(wildcard include/config/spl/handoff.h) \
    $(wildcard include/config/spl/atf.h) \
    $(wildcard include/config/spl/of/libfdt.h) \
    $(wildcard include/config/spl/video.h) \
    $(wildcard include/config/vpl/text/base.h) \
    $(wildcard include/config/spl/text/base.h) \
    $(wildcard include/config/text/base.h) \
    $(wildcard include/config/spl/optee/image.h) \
    $(wildcard include/config/sys/monitor/len.h) \
    $(wildcard include/config/sys/uboot/start.h) \
    $(wildcard include/config/spl/load/fit/full.h) \
    $(wildcard include/config/spl/panic/on/raw/image.h) \
    $(wildcard include/config/cmd/booti.h) \
    $(wildcard include/config/cmd/bootz.h) \
    $(wildcard include/config/sys/load/addr.h) \
    $(wildcard include/config/spl/raw/image/support.h) \
    $(wildcard include/config/tpl/build.h) \
    $(wildcard include/config/vpl/build.h) \
    $(wildcard include/config/spl/sys/malloc/f.h) \
    $(wildcard include/config/spl/sys/malloc/f/len.h) \
    $(wildcard include/config/spl/log.h) \
    $(wildcard include/config/spl/of/real.h) \
    $(wildcard include/config/spl/dm.h) \
    $(wildcard include/config/spl/of/platdata.h) \
    $(wildcard include/config/spl/stack/r.h) \
    $(wildcard include/config/spl/sys/malloc/simple.h) \
    $(wildcard include/config/spl/legacy/image/crc/check.h) \
    $(wildcard include/config/show/errors.h) \
    $(wildcard include/config/spl/show/errors.h) \
    $(wildcard include/config/spl/silent/console.h) \
    $(wildcard include/config/spl/framework/board/init/f.h) \
    $(wildcard include/config/spl/of/control.h) \
    $(wildcard include/config/spl/sys/malloc.h) \
    $(wildcard include/config/spl/bloblist.h) \
    $(wildcard include/config/spl/soc/init.h) \
    $(wildcard include/config/spl/watchdog.h) \
    $(wildcard include/config/spl/wdt.h) \
    $(wildcard include/config/spl/net.h) \
    $(wildcard include/config/spl/lmb.h) \
    $(wildcard include/config/spl/pci.h) \
    $(wildcard include/config/spl/board/init.h) \
    $(wildcard include/config/spl/dm/stats.h) \
    $(wildcard include/config/spl/opensbi.h) \
    $(wildcard include/config/spl/sys/malloc/size.h) \
    $(wildcard include/config/spl/video/remove.h) \
    $(wildcard include/config/spl/upl/out.h) \
    $(wildcard include/config/spl/serial.h) \
    $(wildcard include/config/baudrate.h) \
    $(wildcard include/config/spl/display/print.h) \
    $(wildcard include/config/spl/sys/report/stack/f/usage.h) \
    $(wildcard include/config/spl/size/limit/provide/stack.h) \
    $(wildcard include/config/spl/sys/stack/f/check/byte.h) \
    $(wildcard include/config/spl/stack/r/addr.h) \
    $(wildcard include/config/spl/stack/r/malloc/simple/len.h) \
    $(wildcard include/config/arm.h) \
    $(wildcard include/config/riscv.h) \
    $(wildcard include/config/bootcount/limit.h) \
    $(wildcard include/config/spl/bootcount/limit.h) \
    $(wildcard include/config/tpl/bootcount/limit.h) \
  include/linux/kconfig.h \
    $(wildcard include/config/booger.h) \
    $(wildcard include/config/foo.h) \
    $(wildcard include/config/spl/.h) \
    $(wildcard include/config/tpl/.h) \
    $(wildcard include/config/tools/.h) \
    $(wildcard include/config/spl/build.h) \
    $(wildcard include/config/spl/foo.h) \
    $(wildcard include/config/tools/foo.h) \
    $(wildcard include/config/xpl/build.h) \
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
    $(wildcard include/config/bootcommand.h) \
    $(wildcard include/config/mtd/raw/nand.h) \
    $(wildcard include/config/nor.h) \
  include/configs/ti_am335x_common.h \
  arch/arm/include/asm/arch/omap.h \
    $(wildcard include/config/am33xx.h) \
    $(wildcard include/config/am43xx.h) \
  include/linux/sizes.h \
  include/linux/const.h \
  include/configs/ti_armv7_omap.h \
  include/configs/ti_armv7_common.h \
    $(wildcard include/config/nr/dram/banks.h) \
    $(wildcard include/config/nor/boot.h) \
    $(wildcard include/config/qspi/boot.h) \
    $(wildcard include/config/cmd/net.h) \
    $(wildcard include/config/arm64.h) \
    $(wildcard include/config/distro/defaults.h) \
    $(wildcard include/config/cmd/pxe.h) \
    $(wildcard include/config/cmd/dhcp.h) \
    $(wildcard include/config/cmd/mmc.h) \
    $(wildcard include/config/cmd/usb.h) \
  arch/arm/include/asm/config.h \
    $(wildcard include/config/arch/ls1021a.h) \
    $(wildcard include/config/fsl/layerscape.h) \
  include/linux/kconfig.h \
  include/config_fallbacks.h \
    $(wildcard include/config/spl/pad/to.h) \
    $(wildcard include/config/spl/max/size.h) \
  include/bloblist.h \
    $(wildcard include/config/bloblist/fixed.h) \
    $(wildcard include/config/bloblist/addr.h) \
    $(wildcard include/config/bloblist/size.h) \
    $(wildcard include/config/bloblist/alloc.h) \
    $(wildcard include/config/bloblist/passage.h) \
  include/mapmem.h \
    $(wildcard include/config/arch/map/sysmem.h) \
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
    $(wildcard include/config/phys/64bit.h) \
    $(wildcard include/config/dma/addr/t/64bit.h) \
  include/asm-generic/int-ll64.h \
  /media/drive_b/anandhu/ti/linux-devkit/sysroots/x86_64-arago-linux/usr/lib/arm-oe-linux-gnueabi/gcc/arm-oe-linux-gnueabi/13.4.0/include/stdbool.h \
  include/binman_sym.h \
    $(wildcard include/config/spl/binman/symbols.h) \
  include/bootstage.h \
    $(wildcard include/config/spl/bootstage.h) \
    $(wildcard include/config/show/boot/progress.h) \
    $(wildcard include/config/bootstage/stash.h) \
  include/dm.h \
  include/dm/device.h \
    $(wildcard include/config/devres.h) \
    $(wildcard include/config/spl/of/platdata/rt.h) \
    $(wildcard include/config/spl/devres.h) \
    $(wildcard include/config/spl/dm/dma.h) \
    $(wildcard include/config/spl/iommu.h) \
    $(wildcard include/config/linker/list/align.h) \
    $(wildcard include/config/spl/acpigen.h) \
  include/dm/ofnode.h \
    $(wildcard include/config/spl/ofnode/multi/tree.h) \
    $(wildcard include/config/spl/dm/inline/ofnode.h) \
    $(wildcard include/config/dm.h) \
  include/fdtdec.h \
    $(wildcard include/config/fdt/64bit.h) \
    $(wildcard include/config/of/embed.h) \
    $(wildcard include/config/of/board.h) \
  include/linux/libfdt.h \
  include/linux/libfdt_env.h \
  include/linux/string.h \
    $(wildcard include/config/sandbox.h) \
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
    $(wildcard include/config/spl/log/max/level.h) \
    $(wildcard include/config/logf/func.h) \
    $(wildcard include/config/panic/hang.h) \
    $(wildcard include/config/log/error/return.h) \
    $(wildcard include/config/logf/file.h) \
    $(wildcard include/config/logf/line.h) \
  include/stdio.h \
    $(wildcard include/config/console/flush/support.h) \
  /media/drive_b/anandhu/ti/linux-devkit/sysroots/x86_64-arago-linux/usr/lib/arm-oe-linux-gnueabi/gcc/arm-oe-linux-gnueabi/13.4.0/include/stdarg.h \
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
    $(wildcard include/config/console/record.h) \
    $(wildcard include/config/bootstage.h) \
    $(wildcard include/config/translation/offset.h) \
    $(wildcard include/config/acpi.h) \
    $(wildcard include/config/spl/generate/smbios/table.h) \
    $(wildcard include/config/spl/event.h) \
    $(wildcard include/config/spl/cyclic.h) \
    $(wildcard include/config/spl/upl.h) \
    $(wildcard include/config/spl/event/dynamic.h) \
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
  include/dm/uclass.h \
  include/dm/platdata.h \
  include/handoff.h \
  include/hang.h \
  include/init.h \
    $(wildcard include/config/efi.h) \
    $(wildcard include/config/save/prev/bl/initramfs/start/addr.h) \
    $(wildcard include/config/save/prev/bl/fdt/addr.h) \
    $(wildcard include/config/spl/cpu.h) \
    $(wildcard include/config/dtb/reselect.h) \
  include/irq_func.h \
  include/serial.h \
    $(wildcard include/config/arch/tegra.h) \
    $(wildcard include/config/sys/coreboot.h) \
    $(wildcard include/config/microblaze.h) \
    $(wildcard include/config/usb/tty.h) \
    $(wildcard include/config/spl/serial/rx/buffer.h) \
    $(wildcard include/config/serial/rx/buffer/size.h) \
    $(wildcard include/config/sys/pbsize.h) \
    $(wildcard include/config/spl/dm/serial.h) \
  include/post.h \
    $(wildcard include/config/arch/mpc8360.h) \
    $(wildcard include/config/sys/immr.h) \
  arch/arm/include/asm/io.h \
  arch/arm/include/asm/memory.h \
    $(wildcard include/config/discontigmem.h) \
  arch/arm/include/asm/barriers.h \
  include/asm-generic/io.h \
  include/iotrace.h \
    $(wildcard include/config/io/trace.h) \
  include/spl.h \
    $(wildcard include/config/spl.h) \
    $(wildcard include/config/spl/load/fit.h) \
    $(wildcard include/config/spl/load/block.h) \
    $(wildcard include/config/sys/mmcsd/raw/mode/u/boot/use/partition.h) \
    $(wildcard include/config/spl/libcommon/support.h) \
    $(wildcard include/config/spl/gzip.h) \
    $(wildcard include/config/spl/lzma.h) \
  arch/arm/include/asm/spl.h \
    $(wildcard include/config/arch/exynos4.h) \
    $(wildcard include/config/arch/exynos5.h) \
    $(wildcard include/config/arch/k3.h) \
  arch/arm/include/asm/arch/spl.h \
    $(wildcard include/config/spl/usb/storage.h) \
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
  include/spl_load.h \
    $(wildcard include/config/spl/load/imx/container.h) \
    $(wildcard include/config/spl/nor/support.h) \
    $(wildcard include/config/lto.h) \
    $(wildcard include/config/spl/blk/fs.h) \
    $(wildcard include/config/spl/sys/mmcsd/raw/mode.h) \
    $(wildcard include/config/spl/nand/support.h) \
    $(wildcard include/config/spl/ubi.h) \
    $(wildcard include/config/spl/semihosting.h) \
    $(wildcard include/config/spl/spi/load.h) \
  include/image.h \
    $(wildcard include/config/timestamp.h) \
    $(wildcard include/config/cmd/date.h) \
    $(wildcard include/config/spl/fit/signature.h) \
    $(wildcard include/config/fit/cipher.h) \
    $(wildcard include/config/spl/fit/cipher.h) \
  include/compiler.h \
  /media/drive_b/anandhu/ti/linux-devkit/sysroots/x86_64-arago-linux/usr/lib/arm-oe-linux-gnueabi/gcc/arm-oe-linux-gnueabi/13.4.0/include/stddef.h \
  include/lmb.h \
  include/alist.h \
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
  include/hash.h \
    $(wildcard include/config/spl/sha384.h) \
    $(wildcard include/config/spl/sha512.h) \
  include/fdt_support.h \
    $(wildcard include/config/arch/fixup/fdt/memory.h) \
    $(wildcard include/config/usb/ehci/fsl.h) \
    $(wildcard include/config/usb/xhci/fsl.h) \
    $(wildcard include/config/sys/fsl/sec/compat.h) \
    $(wildcard include/config/pci.h) \
    $(wildcard include/config/sys/fdt/pad.h) \
    $(wildcard include/config/of/board/setup.h) \
    $(wildcard include/config/board/rng/seed.h) \
    $(wildcard include/config/of/system/setup.h) \
    $(wildcard include/config/fdt/fixup/partitions.h) \
    $(wildcard include/config/fman/enet.h) \
    $(wildcard include/config/fsl/mc/enet.h) \
    $(wildcard include/config/cmd/pstore.h) \
  include/abuf.h \
  include/u-boot/hash-checksum.h \
  include/errno.h \
    $(wildcard include/config/errno/str.h) \
    $(wildcard include/config/spl/errno/str.h) \
  include/u-boot/sha1.h \
    $(wildcard include/config/spl/mbedtls/lib/crypto.h) \
  include/u-boot/sha256.h \
  include/u-boot/sha512.h \
  include/imx_container.h \
  include/system-constants.h \
    $(wildcard include/config/has/custom/sys/init/sp/addr.h) \
    $(wildcard include/config/custom/sys/init/sp/addr.h) \
    $(wildcard include/config/mips.h) \
    $(wildcard include/config/spl/has/custom/malloc/start.h) \
    $(wildcard include/config/spl/custom/sys/malloc/addr.h) \
    $(wildcard include/config/spl/bss/start/addr.h) \
    $(wildcard include/config/spl/bss/max/size.h) \
    $(wildcard include/config/spl/payload/args/addr.h) \
    $(wildcard include/config/sys/nand/block/size.h) \
    $(wildcard include/config/sys/nand/page/size.h) \
  include/asm-generic/gpio.h \
  include/nand.h \
    $(wildcard include/config/spl/sys/nand/self/init.h) \
    $(wildcard include/config/sys/nand/select/device.h) \
    $(wildcard include/config/env/offset/oob.h) \
  include/linux/compat.h \
    $(wildcard include/config/xen.h) \
    $(wildcard include/config/lbdaf.h) \
  include/console.h \
    $(wildcard include/config/video/ansi.h) \
    $(wildcard include/config/console/mux.h) \
  include/stdio_dev.h \
  include/malloc.h \
    $(wildcard include/config/valgrind.h) \
  include/time.h \
  include/linux/typecheck.h \
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
  include/linux/mtd/mtd.h \
    $(wildcard include/config/sys/nand/max/oobfree.h) \
    $(wildcard include/config/sys/nand/max/eccpos.h) \
    $(wildcard include/config/spl/mtd/block.h) \
    $(wildcard include/config/spl/mtd.h) \
    $(wildcard include/config/mtd/partitions.h) \
  include/mtd/mtd-abi.h \
  include/div64.h \
  include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  include/fat.h \
    $(wildcard include/config/fs/fat/max/clustsize.h) \
  include/fs.h \
  include/rtc.h \
    $(wildcard include/config/spl/dm/rtc.h) \
    $(wildcard include/config/rtc/enable/32khz/output.h) \
    $(wildcard include/config/dm/rtc.h) \
  include/bcd.h \
  include/rtc_def.h \
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
  include/u-boot/crc.h \
  include/timestamp.h \
  include/generated/timestamp_autogenerated.h \
  include/version.h \
  include/generated/version_autogenerated.h \
  include/dm/root.h \
    $(wildcard include/config/of/platdata/inst.h) \
    $(wildcard include/config/spl/dm/device/remove.h) \
  include/dm/util.h \
    $(wildcard include/config/spl/dm/warn.h) \
    $(wildcard include/config/debug/devres.h) \
    $(wildcard include/config/spl/of/platdata/inst.h) \
    $(wildcard include/config/spl/read/only.h) \
  include/dm/device-internal.h \
    $(wildcard include/config/spl/dm/event.h) \
  include/dm/uclass-internal.h \
  include/bootcount.h \
    $(wildcard include/config/dm/bootcount.h) \
    $(wildcard include/config/sys/bootcount/le.h) \
  include/wdt.h \
  include/video.h \
    $(wildcard include/config/video/copy.h) \

spl/common/spl/spl.o: $(deps_spl/common/spl/spl.o)

$(deps_spl/common/spl/spl.o):
