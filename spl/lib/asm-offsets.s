	.arch armv7-a
	.fpu softvfp
	.eabi_attribute 20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute 21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute 23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute 24, 1	@ Tag_ABI_align8_needed
	.eabi_attribute 25, 1	@ Tag_ABI_align8_preserved
	.eabi_attribute 26, 2	@ Tag_ABI_enum_size
	.eabi_attribute 30, 4	@ Tag_ABI_optimization_goals
	.eabi_attribute 34, 0	@ Tag_CPU_unaligned_access
	.eabi_attribute 18, 2	@ Tag_ABI_PCS_wchar_t
	.file	"asm-offsets.c"
@ GNU C11 (Ubuntu 11.4.0-1ubuntu1~22.04) version 11.4.0 (arm-linux-gnueabihf)
@	compiled by GNU C version 11.4.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.24-GMP

@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mthumb -mthumb-interwork -mabi=aapcs-linux -mno-unaligned-access -mfloat-abi=soft -mgeneral-regs-only -mtune=generic-armv7-a -mtls-dialect=gnu -march=armv7-a -gdwarf-4 -Os -std=gnu11 -fno-builtin -ffreestanding -fshort-wchar -fno-strict-aliasing -fno-PIE -fno-delete-null-pointer-checks -fstack-usage -fno-stack-protector -ffunction-sections -fdata-sections -fno-common -ffixed-r9
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.startup.main,"ax",%progbits
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.type	main, %function
main:
.LFB137:
	.file 1 "lib/asm-offsets.c"
	.loc 1 21 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 23 2 view .LVU1
	.syntax unified
@ 23 "lib/asm-offsets.c" 1
	
.ascii "->GENERATED_GBL_DATA_SIZE #208 (sizeof(struct global_data) + 15) & ~15"	@
@ 0 "" 2
	.loc 1 26 2 view .LVU2
@ 26 "lib/asm-offsets.c" 1
	
.ascii "->GENERATED_BD_INFO_SIZE #96 (sizeof(struct bd_info) + 15) & ~15"	@
@ 0 "" 2
	.loc 1 29 2 view .LVU3
@ 29 "lib/asm-offsets.c" 1
	
.ascii "->GD_SIZE #208 sizeof(struct global_data)"	@
@ 0 "" 2
	.loc 1 31 2 view .LVU4
@ 31 "lib/asm-offsets.c" 1
	
.ascii "->GD_BD #0 offsetof(struct global_data, bd)"	@
@ 0 "" 2
	.loc 1 33 2 view .LVU5
@ 33 "lib/asm-offsets.c" 1
	
.ascii "->GD_FLAGS #24 offsetof(struct global_data, flags)"	@
@ 0 "" 2
	.loc 1 36 2 view .LVU6
@ 36 "lib/asm-offsets.c" 1
	
.ascii "->GD_MALLOC_BASE #196 offsetof(struct global_data, malloc_base)"	@
@ 0 "" 2
	.loc 1 39 2 view .LVU7
@ 39 "lib/asm-offsets.c" 1
	
.ascii "->GD_RELOCADDR #40 offsetof(struct global_data, relocaddr)"	@
@ 0 "" 2
	.loc 1 41 2 view .LVU8
@ 41 "lib/asm-offsets.c" 1
	
.ascii "->GD_RELOC_OFF #52 offsetof(struct global_data, reloc_off)"	@
@ 0 "" 2
	.loc 1 43 2 view .LVU9
@ 43 "lib/asm-offsets.c" 1
	
.ascii "->GD_START_ADDR_SP #48 offsetof(struct global_data, start_addr_sp)"	@
@ 0 "" 2
	.loc 1 45 2 view .LVU10
@ 45 "lib/asm-offsets.c" 1
	
.ascii "->GD_NEW_GD #4 offsetof(struct global_data, new_gd)"	@
@ 0 "" 2
	.loc 1 48 2 view .LVU11
@ 48 "lib/asm-offsets.c" 1
	
.ascii "->GD_ENV_ADDR #32 offsetof(struct global_data, env_addr)"	@
@ 0 "" 2
	.loc 1 51 2 view .LVU12
@ lib/asm-offsets.c:52: }
	.loc 1 52 1 is_stmt 0 view .LVU13
	.thumb
	.syntax unified
	movs	r0, #0	@,
	bx	lr	@
	.cfi_endproc
.LFE137:
	.size	main, .-main
	.text
.Letext0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x8c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF11
	.byte	0xc
	.4byte	.LASF12
	.4byte	.LASF13
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x1
	.byte	0x14
	.byte	0x5
	.4byte	0x41
	.4byte	.LFB137
	.4byte	.LFE137-.LFB137
	.uleb128 0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB137
	.4byte	.LFE137-.LFB137
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB137
	.4byte	.LFE137
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF6:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF11:
	.ascii	"GNU C11 11.4.0 -mthumb -mthumb-interwork -mabi=aapc"
	.ascii	"s-linux -mno-unaligned-access -mfloat-abi=soft -mge"
	.ascii	"neral-regs-only -mtune=generic-armv7-a -mtls-dialec"
	.ascii	"t=gnu -march=armv7-a -gdwarf-4 -Os -std=gnu11 -fno-"
	.ascii	"builtin -ffreestanding -fshort-wchar -fno-strict-al"
	.ascii	"iasing -fno-PIE -fno-delete-null-pointer-checks -fs"
	.ascii	"tack-usage -fno-stack-protector -ffunction-sections"
	.ascii	" -fdata-sections -fno-common -ffixed-r9\000"
.LASF14:
	.ascii	"main\000"
.LASF2:
	.ascii	"long unsigned int\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF12:
	.ascii	"lib/asm-offsets.c\000"
.LASF3:
	.ascii	"char\000"
.LASF5:
	.ascii	"long int\000"
.LASF10:
	.ascii	"_Bool\000"
.LASF4:
	.ascii	"short unsigned int\000"
.LASF7:
	.ascii	"signed char\000"
.LASF13:
	.ascii	"/media/drive_a/am335/am335_u-boot/u-boot\000"
.LASF8:
	.ascii	"short int\000"
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",%progbits
