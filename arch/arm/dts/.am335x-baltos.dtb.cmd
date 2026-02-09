cmd_arch/arm/dts/am335x-baltos.dtb := mkdir -p arch/arm/dts/ ; (cat arch/arm/dts/am335x-baltos.dts > arch/arm/dts/.am335x-baltos.dtb.pre.tmp);  echo '$(pound)include "am33xx-u-boot.dtsi"' >> arch/arm/dts/.am335x-baltos.dtb.pre.tmp; cc -E -Wp,-MD,arch/arm/dts/.am335x-baltos.dtb.d.pre.tmp -nostdinc -Iinclude      -I./arch/arm/include -include ./include/linux/kconfig.h -I./dts/upstream/include  -Iarch/arm/dts/ -I./arch/arm/dts/ -I./arch/arm/dts/include -I./include -I./dts/upstream/src/ -I./dts/upstream/src/arm/actions/ -I./dts/upstream/src/arm/airoha/ -I./dts/upstream/src/arm/allwinner/ -I./dts/upstream/src/arm/alphascale/ -I./dts/upstream/src/arm/amazon/ -I./dts/upstream/src/arm/amlogic/ -I./dts/upstream/src/arm/arm/ -I./dts/upstream/src/arm/aspeed/ -I./dts/upstream/src/arm/axis/ -I./dts/upstream/src/arm/broadcom/ -I./dts/upstream/src/arm/calxeda/ -I./dts/upstream/src/arm/cirrus/ -I./dts/upstream/src/arm/cnxt/ -I./dts/upstream/src/arm/gemini/ -I./dts/upstream/src/arm/hisilicon/ -I./dts/upstream/src/arm/hpe/ -I./dts/upstream/src/arm/intel/ -I./dts/upstream/src/arm/marvell/ -I./dts/upstream/src/arm/mediatek/ -I./dts/upstream/src/arm/microchip/ -I./dts/upstream/src/arm/moxa/ -I./dts/upstream/src/arm/nspire/ -I./dts/upstream/src/arm/nuvoton/ -I./dts/upstream/src/arm/nvidia/ -I./dts/upstream/src/arm/nxp/ -I./dts/upstream/src/arm/qcom/ -I./dts/upstream/src/arm/realtek/ -I./dts/upstream/src/arm/renesas/ -I./dts/upstream/src/arm/rockchip/ -I./dts/upstream/src/arm/samsung/ -I./dts/upstream/src/arm/sigmastar/ -I./dts/upstream/src/arm/socionext/ -I./dts/upstream/src/arm/st/ -I./dts/upstream/src/arm/sunplus/ -I./dts/upstream/src/arm/synaptics/ -I./dts/upstream/src/arm/ti/ -I./dts/upstream/src/arm/unisoc/ -I./dts/upstream/src/arm/vt8500/ -I./dts/upstream/src/arm/xen/ -I./dts/upstream/src/arm/xilinx/ -I./dts/upstream/src/arm64/actions/ -I./dts/upstream/src/arm64/airoha/ -I./dts/upstream/src/arm64/allwinner/ -I./dts/upstream/src/arm64/altera/ -I./dts/upstream/src/arm64/amazon/ -I./dts/upstream/src/arm64/amd/ -I./dts/upstream/src/arm64/amlogic/ -I./dts/upstream/src/arm64/apm/ -I./dts/upstream/src/arm64/apple/ -I./dts/upstream/src/arm64/arm/ -I./dts/upstream/src/arm64/bitmain/ -I./dts/upstream/src/arm64/broadcom/ -I./dts/upstream/src/arm64/cavium/ -I./dts/upstream/src/arm64/exynos/ -I./dts/upstream/src/arm64/freescale/ -I./dts/upstream/src/arm64/hisilicon/ -I./dts/upstream/src/arm64/intel/ -I./dts/upstream/src/arm64/lg/ -I./dts/upstream/src/arm64/marvell/ -I./dts/upstream/src/arm64/mediatek/ -I./dts/upstream/src/arm64/microchip/ -I./dts/upstream/src/arm64/nuvoton/ -I./dts/upstream/src/arm64/nvidia/ -I./dts/upstream/src/arm64/qcom/ -I./dts/upstream/src/arm64/realtek/ -I./dts/upstream/src/arm64/renesas/ -I./dts/upstream/src/arm64/rockchip/ -I./dts/upstream/src/arm64/socionext/ -I./dts/upstream/src/arm64/sprd/ -I./dts/upstream/src/arm64/st/ -I./dts/upstream/src/arm64/synaptics/ -I./dts/upstream/src/arm64/tesla/ -I./dts/upstream/src/arm64/ti/ -I./dts/upstream/src/arm64/toshiba/ -I./dts/upstream/src/arm64/xilinx/ -D__ASSEMBLY__ -undef -D__DTS__ -Iarch/arm/dts -x assembler-with-cpp -o arch/arm/dts/.am335x-baltos.dtb.dts.tmp arch/arm/dts/.am335x-baltos.dtb.pre.tmp ; ./scripts/dtc/dtc -O dtb -o arch/arm/dts/am335x-baltos.dtb -b 0 -i arch/arm/dts/ -i ./arch/arm/dts/ -Wno-unit_address_vs_reg -Wno-unit_address_format -Wno-avoid_unnecessary_addr_size -Wno-alias_paths -Wno-graph_child_address -Wno-graph_port -Wno-unique_unit_address -Wno-simple_bus_reg -Wno-pci_device_reg -Wno-pci_bridge -Wno-pci_device_bus_num   -@ -a 0x8 -Wno-unit_address_vs_reg -Wno-unit_address_format -Wno-avoid_unnecessary_addr_size -Wno-alias_paths -Wno-graph_child_address -Wno-graph_port -Wno-unique_unit_address -Wno-simple_bus_reg -Wno-pci_device_reg -Wno-pci_bridge -Wno-pci_device_bus_num   -@ -d arch/arm/dts/.am335x-baltos.dtb.d.dtc.tmp arch/arm/dts/.am335x-baltos.dtb.dts.tmp || (echo "Check /media/drive_a/am335/am335_u-boot/u-boot/arch/arm/dts/.am335x-baltos.dtb.pre.tmp for errors" && false) ; sed "s:arch/arm/dts/.am335x-baltos.dtb.pre.tmp:arch/arm/dts/am335x-baltos.dts:" arch/arm/dts/.am335x-baltos.dtb.d.pre.tmp arch/arm/dts/.am335x-baltos.dtb.d.dtc.tmp > arch/arm/dts/.am335x-baltos.dtb.d

source_arch/arm/dts/am335x-baltos.dtb := arch/arm/dts/am335x-baltos.dts

deps_arch/arm/dts/am335x-baltos.dtb := \
  include/linux/kconfig.h \
    $(wildcard include/config/booger.h) \
    $(wildcard include/config/foo.h) \
    $(wildcard include/config/spl/.h) \
    $(wildcard include/config/tpl/.h) \
    $(wildcard include/config/tools/.h) \
    $(wildcard include/config/tpl/build.h) \
    $(wildcard include/config/vpl/build.h) \
    $(wildcard include/config/spl/build.h) \
    $(wildcard include/config/tools/foo.h) \
    $(wildcard include/config/xpl/build.h) \
    $(wildcard include/config/spl/foo.h) \
    $(wildcard include/config/tpl/foo.h) \
    $(wildcard include/config/vpl/foo.h) \
    $(wildcard include/config/option.h) \
    $(wildcard include/config/acme.h) \
    $(wildcard include/config/spl/acme.h) \
    $(wildcard include/config/tpl/acme.h) \
    $(wildcard include/config/if/enabled/int.h) \
    $(wildcard include/config/int/option.h) \
  arch/arm/dts/am33xx.dtsi \
  include/dt-bindings/bus/ti-sysc.h \
  dts/upstream/include/dt-bindings/gpio/gpio.h \
  include/dt-bindings/pinctrl/am33xx.h \
  include/dt-bindings/pinctrl/omap.h \
  include/dt-bindings/clock/am3.h \
  arch/arm/dts/am33xx-l4.dtsi \
  arch/arm/dts/am33xx-clocks.dtsi \
  dts/upstream/include/dt-bindings/pwm/pwm.h \
  arch/arm/dts/am33xx-u-boot.dtsi \
  arch/arm/dts/tps65910.dtsi \

arch/arm/dts/am335x-baltos.dtb: $(deps_arch/arm/dts/am335x-baltos.dtb)

$(deps_arch/arm/dts/am335x-baltos.dtb):
