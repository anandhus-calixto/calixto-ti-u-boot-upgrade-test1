cmd_spl/arch/arm/lib/lib1funcs.o := arm-linux-gnueabihf-gcc -Wp,-MD,spl/arch/arm/lib/.lib1funcs.o.d -nostdinc -isystem /usr/lib/gcc-cross/arm-linux-gnueabihf/11/include -Ispl/include -Iinclude      -I./arch/arm/include -include ./include/linux/kconfig.h -I./dts/upstream/include  -D__KERNEL__ -D__UBOOT__ -DCONFIG_XPL_BUILD -DCONFIG_SPL_BUILD -D__ASSEMBLY__ -fno-PIE -gdwarf-4 -DCONFIG_THUMB2_KERNEL -D__ARM__ -Wa,-mimplicit-it=always -mthumb -mthumb-interwork -mabi=aapcs-linux -mno-unaligned-access -ffunction-sections -fdata-sections -fno-common -ffixed-r9 -msoft-float -mgeneral-regs-only -pipe -D__LINUX_ARM_ARCH__=7 -mtune=generic-armv7-a -I./arch/arm/mach-omap2/include   -c -o spl/arch/arm/lib/lib1funcs.o arch/arm/lib/lib1funcs.S

source_spl/arch/arm/lib/lib1funcs.o := arch/arm/lib/lib1funcs.S

deps_spl/arch/arm/lib/lib1funcs.o := \
    $(wildcard include/config/spl/sys/thumb/build.h) \
    $(wildcard include/config/has/thumb2.h) \
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
    $(wildcard include/config/xpl/build.h) \
    $(wildcard include/config/tpl/foo.h) \
    $(wildcard include/config/vpl/foo.h) \
    $(wildcard include/config/spl/option.h) \
    $(wildcard include/config/spl/acme.h) \
    $(wildcard include/config/acme.h) \
    $(wildcard include/config/tpl/acme.h) \
    $(wildcard include/config/if/enabled/int.h) \
    $(wildcard include/config/spl/int/option.h) \
  include/linux/linkage.h \
  arch/arm/include/asm/linkage.h \
  arch/arm/include/asm/assembler.h \
  arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
    $(wildcard include/config/cpu/v7m.h) \
    $(wildcard include/config/thumb2/kernel.h) \

spl/arch/arm/lib/lib1funcs.o: $(deps_spl/arch/arm/lib/lib1funcs.o)

$(deps_spl/arch/arm/lib/lib1funcs.o):
