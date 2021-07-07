	.text
	.intel_syntax noprefix
	.file	"shapes.cpp"
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function __cxx_global_var_init
	.type	__cxx_global_var_init,@function
__cxx_global_var_init:                  # @__cxx_global_var_init
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	lea	rdi, [rip + _ZStL8__ioinit]
	call	_ZNSt8ios_base4InitC1Ev@PLT
	mov	rdi, qword ptr [rip + _ZNSt8ios_base4InitD1Ev@GOTPCREL]
	lea	rsi, [rip + _ZStL8__ioinit]
	lea	rdx, [rip + __dso_handle]
	call	__cxa_atexit@PLT
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end0:
	.size	__cxx_global_var_init, .Lfunc_end0-__cxx_global_var_init
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_Z11createshapec                # -- Begin function _Z11createshapec
	.p2align	4, 0x90
	.type	_Z11createshapec,@function
_Z11createshapec:                       # @_Z11createshapec
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 160
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	movsx	eax, byte ptr [rbp - 1]
	add	eax, -67
	mov	ecx, eax
	mov	qword ptr [rbp - 40], rcx       # 8-byte Spill
	sub	eax, 17
	ja	.LBB1_22
# %bb.27:
	mov	rax, qword ptr [rbp - 40]       # 8-byte Reload
	lea	rcx, [rip + .LJTI1_0]
	movsxd	rax, dword ptr [rcx + 4*rax]
	add	rax, rcx
	jmp	rax
.LBB1_1:
	mov	edi, 24
	call	_Znwm@PLT
	mov	rdi, rax
	mov	rcx, rdi
	mov	qword ptr [rbp - 56], rcx       # 8-byte Spill
	mov	rcx, rdi
	mov	qword ptr [rbp - 48], rcx       # 8-byte Spill
.Ltmp18:
	mov	esi, 4
	call	_ZN6CircleC2Ei
.Ltmp19:
	jmp	.LBB1_2
.LBB1_2:
	mov	rax, qword ptr [rbp - 48]       # 8-byte Reload
	mov	qword ptr [rbp - 16], rax
	mov	rdi, qword ptr [rbp - 16]
	lea	rsi, [rip + .L.str]
	call	_ZN6Object8set_nameEPKc
	jmp	.LBB1_25
.LBB1_3:
.Ltmp20:
	mov	rdi, qword ptr [rbp - 56]       # 8-byte Reload
	mov	rcx, rax
	mov	eax, edx
	mov	qword ptr [rbp - 24], rcx
	mov	dword ptr [rbp - 28], eax
	call	_ZdlPv@PLT
	jmp	.LBB1_26
.LBB1_4:
	mov	edi, 24
	call	_Znwm@PLT
	mov	rdi, rax
	mov	rcx, rdi
	mov	qword ptr [rbp - 72], rcx       # 8-byte Spill
	mov	rcx, rdi
	mov	qword ptr [rbp - 64], rcx       # 8-byte Spill
.Ltmp15:
	mov	esi, 6
	mov	edx, 10
	call	_ZN9RectangleC2Eii
.Ltmp16:
	jmp	.LBB1_5
.LBB1_5:
	mov	rax, qword ptr [rbp - 64]       # 8-byte Reload
	mov	qword ptr [rbp - 16], rax
	mov	rdi, qword ptr [rbp - 16]
	lea	rsi, [rip + .L.str.1]
	call	_ZN6Object8set_nameEPKc
	jmp	.LBB1_25
.LBB1_6:
.Ltmp17:
	mov	rdi, qword ptr [rbp - 72]       # 8-byte Reload
	mov	rcx, rax
	mov	eax, edx
	mov	qword ptr [rbp - 24], rcx
	mov	dword ptr [rbp - 28], eax
	call	_ZdlPv@PLT
	jmp	.LBB1_26
.LBB1_7:
	mov	edi, 24
	call	_Znwm@PLT
	mov	rdi, rax
	mov	rcx, rdi
	mov	qword ptr [rbp - 88], rcx       # 8-byte Spill
	mov	rcx, rdi
	mov	qword ptr [rbp - 80], rcx       # 8-byte Spill
.Ltmp12:
	mov	esi, 5
	mov	edx, 9
	call	_ZN13ParallelogramC2Eii
.Ltmp13:
	jmp	.LBB1_8
.LBB1_8:
	mov	rax, qword ptr [rbp - 80]       # 8-byte Reload
	mov	qword ptr [rbp - 16], rax
	mov	rdi, qword ptr [rbp - 16]
	lea	rsi, [rip + .L.str.2]
	call	_ZN6Object8set_nameEPKc
	jmp	.LBB1_25
.LBB1_9:
.Ltmp14:
	mov	rdi, qword ptr [rbp - 88]       # 8-byte Reload
	mov	rcx, rax
	mov	eax, edx
	mov	qword ptr [rbp - 24], rcx
	mov	dword ptr [rbp - 28], eax
	call	_ZdlPv@PLT
	jmp	.LBB1_26
.LBB1_10:
	mov	edi, 40
	call	_Znwm@PLT
	mov	rdi, rax
	mov	rcx, rdi
	mov	qword ptr [rbp - 104], rcx      # 8-byte Spill
	mov	rcx, rdi
	mov	qword ptr [rbp - 96], rcx       # 8-byte Spill
.Ltmp9:
	mov	esi, 10
	call	_ZN6SquareC2Ei
.Ltmp10:
	jmp	.LBB1_11
.LBB1_11:
	mov	rax, qword ptr [rbp - 96]       # 8-byte Reload
	mov	qword ptr [rbp - 16], rax
	mov	rdi, qword ptr [rbp - 16]
	lea	rsi, [rip + .L.str.3]
	call	_ZN6Object8set_nameEPKc
	jmp	.LBB1_25
.LBB1_12:
.Ltmp11:
	mov	rdi, qword ptr [rbp - 104]      # 8-byte Reload
	mov	rcx, rax
	mov	eax, edx
	mov	qword ptr [rbp - 24], rcx
	mov	dword ptr [rbp - 28], eax
	call	_ZdlPv@PLT
	jmp	.LBB1_26
.LBB1_13:
	mov	edi, 40
	call	_Znwm@PLT
	mov	rdi, rax
	mov	rcx, rdi
	mov	qword ptr [rbp - 120], rcx      # 8-byte Spill
	mov	rcx, rdi
	mov	qword ptr [rbp - 112], rcx      # 8-byte Spill
.Ltmp6:
	mov	esi, 5
	mov	edx, 9
	call	_ZN8TriangleC2Eii
.Ltmp7:
	jmp	.LBB1_14
.LBB1_14:
	mov	rax, qword ptr [rbp - 112]      # 8-byte Reload
	mov	qword ptr [rbp - 16], rax
	mov	rdi, qword ptr [rbp - 16]
	lea	rsi, [rip + .L.str.4]
	call	_ZN6Object8set_nameEPKc
	jmp	.LBB1_25
.LBB1_15:
.Ltmp8:
	mov	rdi, qword ptr [rbp - 120]      # 8-byte Reload
	mov	rcx, rax
	mov	eax, edx
	mov	qword ptr [rbp - 24], rcx
	mov	dword ptr [rbp - 28], eax
	call	_ZdlPv@PLT
	jmp	.LBB1_26
.LBB1_16:
	mov	edi, 32
	call	_Znwm@PLT
	mov	rdi, rax
	mov	rcx, rdi
	mov	qword ptr [rbp - 136], rcx      # 8-byte Spill
	mov	rcx, rdi
	mov	qword ptr [rbp - 128], rcx      # 8-byte Spill
.Ltmp3:
	mov	esi, 200
	call	_ZN7HexagonC2Ei
.Ltmp4:
	jmp	.LBB1_17
.LBB1_17:
	mov	rax, qword ptr [rbp - 128]      # 8-byte Reload
	mov	qword ptr [rbp - 16], rax
	mov	rdi, qword ptr [rbp - 16]
	lea	rsi, [rip + .L.str.5]
	call	_ZN6Object8set_nameEPKc
	jmp	.LBB1_25
.LBB1_18:
.Ltmp5:
	mov	rdi, qword ptr [rbp - 136]      # 8-byte Reload
	mov	rcx, rax
	mov	eax, edx
	mov	qword ptr [rbp - 24], rcx
	mov	dword ptr [rbp - 28], eax
	call	_ZdlPv@PLT
	jmp	.LBB1_26
.LBB1_19:
	mov	edi, 32
	call	_Znwm@PLT
	mov	rdi, rax
	mov	rcx, rdi
	mov	qword ptr [rbp - 152], rcx      # 8-byte Spill
	mov	rcx, rdi
	mov	qword ptr [rbp - 144], rcx      # 8-byte Spill
.Ltmp0:
	mov	esi, 2
	call	_ZN8PentagonC2Ei
.Ltmp1:
	jmp	.LBB1_20
.LBB1_20:
	mov	rax, qword ptr [rbp - 144]      # 8-byte Reload
	mov	qword ptr [rbp - 16], rax
	mov	rdi, qword ptr [rbp - 16]
	lea	rsi, [rip + .L.str.6]
	call	_ZN6Object8set_nameEPKc
	jmp	.LBB1_25
.LBB1_21:
.Ltmp2:
	mov	rdi, qword ptr [rbp - 152]      # 8-byte Reload
	mov	rcx, rax
	mov	eax, edx
	mov	qword ptr [rbp - 24], rcx
	mov	dword ptr [rbp - 28], eax
	call	_ZdlPv@PLT
	jmp	.LBB1_26
.LBB1_22:
	mov	edi, 1048
	call	__cxa_allocate_exception@PLT
	mov	rdi, rax
	mov	rcx, rdi
	mov	qword ptr [rbp - 160], rcx      # 8-byte Spill
.Ltmp21:
	lea	rdx, [rip + .L.str.7]
	mov	esi, 102
	call	_ZN17ShapeProgramErrorC2EiPKc
.Ltmp22:
	jmp	.LBB1_23
.LBB1_23:
	mov	rdi, qword ptr [rbp - 160]      # 8-byte Reload
	lea	rsi, [rip + _ZTI17ShapeProgramError]
	lea	rdx, [rip + _ZN17ShapeProgramErrorD2Ev]
	call	__cxa_throw@PLT
.LBB1_24:
.Ltmp23:
	mov	rdi, qword ptr [rbp - 160]      # 8-byte Reload
	mov	rcx, rax
	mov	eax, edx
	mov	qword ptr [rbp - 24], rcx
	mov	dword ptr [rbp - 28], eax
	call	__cxa_free_exception@PLT
	jmp	.LBB1_26
.LBB1_25:
	mov	rax, qword ptr [rbp - 16]
	add	rsp, 160
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.LBB1_26:
	.cfi_def_cfa rbp, 16
	mov	rdi, qword ptr [rbp - 24]
	call	_Unwind_Resume@PLT
.Lfunc_end1:
	.size	_Z11createshapec, .Lfunc_end1-_Z11createshapec
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI1_0:
	.long	.LBB1_1-.LJTI1_0
	.long	.LBB1_22-.LJTI1_0
	.long	.LBB1_22-.LJTI1_0
	.long	.LBB1_22-.LJTI1_0
	.long	.LBB1_19-.LJTI1_0
	.long	.LBB1_16-.LJTI1_0
	.long	.LBB1_22-.LJTI1_0
	.long	.LBB1_22-.LJTI1_0
	.long	.LBB1_22-.LJTI1_0
	.long	.LBB1_22-.LJTI1_0
	.long	.LBB1_22-.LJTI1_0
	.long	.LBB1_22-.LJTI1_0
	.long	.LBB1_22-.LJTI1_0
	.long	.LBB1_7-.LJTI1_0
	.long	.LBB1_22-.LJTI1_0
	.long	.LBB1_4-.LJTI1_0
	.long	.LBB1_10-.LJTI1_0
	.long	.LBB1_13-.LJTI1_0
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table1:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp18-.Lfunc_begin0          #   Call between .Lfunc_begin0 and .Ltmp18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 2 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin0          #     jumps to .Ltmp20
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin0          # >> Call Site 3 <<
	.uleb128 .Ltmp15-.Ltmp19                #   Call between .Ltmp19 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp12-.Ltmp16                #   Call between .Ltmp16 and .Ltmp12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp9-.Ltmp13                 #   Call between .Ltmp13 and .Ltmp9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 8 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp6-.Ltmp10                 #   Call between .Ltmp10 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 10 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 11 <<
	.uleb128 .Ltmp3-.Ltmp7                  #   Call between .Ltmp7 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 12 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 13 <<
	.uleb128 .Ltmp0-.Ltmp4                  #   Call between .Ltmp4 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 14 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 15 <<
	.uleb128 .Ltmp21-.Ltmp1                 #   Call between .Ltmp1 and .Ltmp21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin0          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp22-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Lfunc_end1-.Ltmp22            #   Call between .Ltmp22 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2
                                        # -- End function
	.section	.text._ZN6CircleC2Ei,"axG",@progbits,_ZN6CircleC2Ei,comdat
	.weak	_ZN6CircleC2Ei                  # -- Begin function _ZN6CircleC2Ei
	.p2align	4, 0x90
	.type	_ZN6CircleC2Ei,@function
_ZN6CircleC2Ei:                         # @_ZN6CircleC2Ei
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 24], rdi       # 8-byte Spill
	call	_ZN5ShapeC2Ev
	mov	rax, qword ptr [rbp - 24]       # 8-byte Reload
	lea	rcx, [rip + _ZTV6Circle]
	add	rcx, 16
	mov	qword ptr [rax], rcx
	mov	ecx, dword ptr [rbp - 12]
	mov	dword ptr [rax + 16], ecx
	add	rsp, 32
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end2:
	.size	_ZN6CircleC2Ei, .Lfunc_end2-_ZN6CircleC2Ei
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6Object8set_nameEPKc,"axG",@progbits,_ZN6Object8set_nameEPKc,comdat
	.weak	_ZN6Object8set_nameEPKc         # -- Begin function _ZN6Object8set_nameEPKc
	.p2align	4, 0x90
	.type	_ZN6Object8set_nameEPKc,@function
_ZN6Object8set_nameEPKc:                # @_ZN6Object8set_nameEPKc
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 64
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rsi
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 48], rax       # 8-byte Spill
	mov	rdi, qword ptr [rbp - 16]
	call	strlen@PLT
	mov	qword ptr [rbp - 24], rax
	cmp	qword ptr [rbp - 24], 255
	jbe	.LBB3_4
# %bb.1:
	mov	edi, 1048
	call	__cxa_allocate_exception@PLT
	mov	rdi, rax
	mov	rcx, rdi
	mov	qword ptr [rbp - 56], rcx       # 8-byte Spill
.Ltmp24:
	lea	rdx, [rip + .L.str.19]
	mov	esi, 101
	call	_ZN17ShapeProgramErrorC2EiPKc
.Ltmp25:
	jmp	.LBB3_2
.LBB3_2:
	mov	rdi, qword ptr [rbp - 56]       # 8-byte Reload
	lea	rsi, [rip + _ZTI17ShapeProgramError]
	lea	rdx, [rip + _ZN17ShapeProgramErrorD2Ev]
	call	__cxa_throw@PLT
.LBB3_3:
.Ltmp26:
	mov	rdi, qword ptr [rbp - 56]       # 8-byte Reload
	mov	rcx, rax
	mov	eax, edx
	mov	qword ptr [rbp - 32], rcx
	mov	dword ptr [rbp - 36], eax
	call	__cxa_free_exception@PLT
	jmp	.LBB3_5
.LBB3_4:
	mov	rdi, qword ptr [rbp - 24]
	add	rdi, 1
	mov	esi, 1
	call	calloc@PLT
	mov	rcx, rax
	mov	rax, qword ptr [rbp - 48]       # 8-byte Reload
	mov	qword ptr [rax + 8], rcx
	mov	rdi, qword ptr [rax + 8]
	mov	rsi, qword ptr [rbp - 16]
	call	strcpy@PLT
	add	rsp, 64
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.LBB3_5:
	.cfi_def_cfa rbp, 16
	mov	rdi, qword ptr [rbp - 32]
	call	_Unwind_Resume@PLT
.Lfunc_end3:
	.size	_ZN6Object8set_nameEPKc, .Lfunc_end3-_ZN6Object8set_nameEPKc
	.cfi_endproc
	.section	.gcc_except_table._ZN6Object8set_nameEPKc,"aG",@progbits,_ZN6Object8set_nameEPKc,comdat
	.p2align	2
GCC_except_table3:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp24-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp24
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin1          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Lfunc_end3-.Ltmp25            #   Call between .Ltmp25 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2
                                        # -- End function
	.section	.text._ZN9RectangleC2Eii,"axG",@progbits,_ZN9RectangleC2Eii,comdat
	.weak	_ZN9RectangleC2Eii              # -- Begin function _ZN9RectangleC2Eii
	.p2align	4, 0x90
	.type	_ZN9RectangleC2Eii,@function
_ZN9RectangleC2Eii:                     # @_ZN9RectangleC2Eii
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	dword ptr [rbp - 16], edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 24], rdi       # 8-byte Spill
	mov	esi, dword ptr [rbp - 12]
	mov	edx, dword ptr [rbp - 16]
	call	_ZN13ParallelogramC2Eii
	mov	rax, qword ptr [rbp - 24]       # 8-byte Reload
	lea	rcx, [rip + _ZTV9Rectangle]
	add	rcx, 16
	mov	qword ptr [rax], rcx
	add	rsp, 32
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end4:
	.size	_ZN9RectangleC2Eii, .Lfunc_end4-_ZN9RectangleC2Eii
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13ParallelogramC2Eii,"axG",@progbits,_ZN13ParallelogramC2Eii,comdat
	.weak	_ZN13ParallelogramC2Eii         # -- Begin function _ZN13ParallelogramC2Eii
	.p2align	4, 0x90
	.type	_ZN13ParallelogramC2Eii,@function
_ZN13ParallelogramC2Eii:                # @_ZN13ParallelogramC2Eii
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	dword ptr [rbp - 16], edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 24], rdi       # 8-byte Spill
	call	_ZN5ShapeC2Ev
	mov	rax, qword ptr [rbp - 24]       # 8-byte Reload
	lea	rcx, [rip + _ZTV13Parallelogram]
	add	rcx, 16
	mov	qword ptr [rax], rcx
	mov	ecx, dword ptr [rbp - 12]
	mov	dword ptr [rax + 16], ecx
	mov	ecx, dword ptr [rbp - 16]
	mov	dword ptr [rax + 20], ecx
	add	rsp, 32
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end5:
	.size	_ZN13ParallelogramC2Eii, .Lfunc_end5-_ZN13ParallelogramC2Eii
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6SquareC2Ei,"axG",@progbits,_ZN6SquareC2Ei,comdat
	.weak	_ZN6SquareC2Ei                  # -- Begin function _ZN6SquareC2Ei
	.p2align	4, 0x90
	.type	_ZN6SquareC2Ei,@function
_ZN6SquareC2Ei:                         # @_ZN6SquareC2Ei
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 40], rdi       # 8-byte Spill
	mov	edx, dword ptr [rbp - 12]
	mov	esi, edx
	call	_ZN9RectangleC2Eii
	mov	rdi, qword ptr [rbp - 40]       # 8-byte Reload
	add	rdi, 24
.Ltmp27:
	mov	esi, 4
	call	_ZN11RegularNGonC2Ei
.Ltmp28:
	jmp	.LBB6_1
.LBB6_1:
	mov	rax, qword ptr [rbp - 40]       # 8-byte Reload
	lea	rcx, [rip + _ZTV6Square]
	add	rcx, 16
	mov	qword ptr [rax], rcx
	lea	rcx, [rip + _ZTV6Square]
	add	rcx, 64
	mov	qword ptr [rax + 24], rcx
	add	rsp, 48
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.LBB6_2:
	.cfi_def_cfa rbp, 16
.Ltmp29:
	mov	rdi, qword ptr [rbp - 40]       # 8-byte Reload
	mov	rcx, rax
	mov	eax, edx
	mov	qword ptr [rbp - 24], rcx
	mov	dword ptr [rbp - 28], eax
	call	_ZN9RectangleD2Ev
# %bb.3:
	mov	rdi, qword ptr [rbp - 24]
	call	_Unwind_Resume@PLT
.Lfunc_end6:
	.size	_ZN6SquareC2Ei, .Lfunc_end6-_ZN6SquareC2Ei
	.cfi_endproc
	.section	.gcc_except_table._ZN6SquareC2Ei,"aG",@progbits,_ZN6SquareC2Ei,comdat
	.p2align	2
GCC_except_table6:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp27-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp27
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin2          #     jumps to .Ltmp29
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Lfunc_end6-.Ltmp28            #   Call between .Ltmp28 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2
                                        # -- End function
	.section	.text._ZN8TriangleC2Eii,"axG",@progbits,_ZN8TriangleC2Eii,comdat
	.weak	_ZN8TriangleC2Eii               # -- Begin function _ZN8TriangleC2Eii
	.p2align	4, 0x90
	.type	_ZN8TriangleC2Eii,@function
_ZN8TriangleC2Eii:                      # @_ZN8TriangleC2Eii
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	dword ptr [rbp - 16], edx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 24], rdi       # 8-byte Spill
	call	_ZN5ShapeC2Ev
	mov	rdi, qword ptr [rbp - 24]       # 8-byte Reload
	add	rdi, 16
	mov	esi, 3
	call	_ZN11RegularNGonC2Ei
	mov	rax, qword ptr [rbp - 24]       # 8-byte Reload
	lea	rcx, [rip + _ZTV8Triangle]
	add	rcx, 16
	mov	qword ptr [rax], rcx
	lea	rcx, [rip + _ZTV8Triangle]
	add	rcx, 64
	mov	qword ptr [rax + 16], rcx
	mov	ecx, dword ptr [rbp - 12]
	mov	dword ptr [rax + 28], ecx
	mov	ecx, dword ptr [rbp - 16]
	mov	dword ptr [rax + 32], ecx
	add	rsp, 32
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end7:
	.size	_ZN8TriangleC2Eii, .Lfunc_end7-_ZN8TriangleC2Eii
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN7HexagonC2Ei,"axG",@progbits,_ZN7HexagonC2Ei,comdat
	.weak	_ZN7HexagonC2Ei                 # -- Begin function _ZN7HexagonC2Ei
	.p2align	4, 0x90
	.type	_ZN7HexagonC2Ei,@function
_ZN7HexagonC2Ei:                        # @_ZN7HexagonC2Ei
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 24], rdi       # 8-byte Spill
	call	_ZN5ShapeC2Ev
	mov	rdi, qword ptr [rbp - 24]       # 8-byte Reload
	add	rdi, 16
	mov	esi, 6
	call	_ZN11RegularNGonC2Ei
	mov	rax, qword ptr [rbp - 24]       # 8-byte Reload
	lea	rcx, [rip + _ZTV7Hexagon]
	add	rcx, 16
	mov	qword ptr [rax], rcx
	lea	rcx, [rip + _ZTV7Hexagon]
	add	rcx, 64
	mov	qword ptr [rax + 16], rcx
	mov	ecx, dword ptr [rbp - 12]
	mov	dword ptr [rax + 28], ecx
	add	rsp, 32
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end8:
	.size	_ZN7HexagonC2Ei, .Lfunc_end8-_ZN7HexagonC2Ei
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8PentagonC2Ei,"axG",@progbits,_ZN8PentagonC2Ei,comdat
	.weak	_ZN8PentagonC2Ei                # -- Begin function _ZN8PentagonC2Ei
	.p2align	4, 0x90
	.type	_ZN8PentagonC2Ei,@function
_ZN8PentagonC2Ei:                       # @_ZN8PentagonC2Ei
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 24], rdi       # 8-byte Spill
	call	_ZN5ShapeC2Ev
	mov	rdi, qword ptr [rbp - 24]       # 8-byte Reload
	add	rdi, 16
	mov	esi, 1
	call	_ZN11RegularNGonC2Ei
	mov	rax, qword ptr [rbp - 24]       # 8-byte Reload
	lea	rcx, [rip + _ZTV8Pentagon]
	add	rcx, 16
	mov	qword ptr [rax], rcx
	lea	rcx, [rip + _ZTV8Pentagon]
	add	rcx, 64
	mov	qword ptr [rax + 16], rcx
	mov	ecx, dword ptr [rbp - 12]
	mov	dword ptr [rax + 28], ecx
	add	rsp, 32
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end9:
	.size	_ZN8PentagonC2Ei, .Lfunc_end9-_ZN8PentagonC2Ei
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN17ShapeProgramErrorC2EiPKc,"axG",@progbits,_ZN17ShapeProgramErrorC2EiPKc,comdat
	.weak	_ZN17ShapeProgramErrorC2EiPKc   # -- Begin function _ZN17ShapeProgramErrorC2EiPKc
	.p2align	4, 0x90
	.type	_ZN17ShapeProgramErrorC2EiPKc,@function
_ZN17ShapeProgramErrorC2EiPKc:          # @_ZN17ShapeProgramErrorC2EiPKc
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	rcx, rdx
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	qword ptr [rbp - 24], rcx
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 48], rdi       # 8-byte Spill
	mov	rsi, qword ptr [rbp - 24]
	call	_ZNSt13runtime_errorC2EPKc@PLT
	mov	rdi, qword ptr [rbp - 48]       # 8-byte Reload
	add	rdi, 16
	mov	esi, dword ptr [rbp - 12]
.Ltmp30:
	call	_ZN13ExceptionCodeC2Ei
.Ltmp31:
	jmp	.LBB10_1
.LBB10_1:
	mov	rax, qword ptr [rbp - 48]       # 8-byte Reload
	lea	rcx, [rip + _ZTV17ShapeProgramError]
	add	rcx, 16
	mov	qword ptr [rax], rcx
	add	rsp, 48
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.LBB10_2:
	.cfi_def_cfa rbp, 16
.Ltmp32:
	mov	rdi, qword ptr [rbp - 48]       # 8-byte Reload
	mov	rcx, rax
	mov	eax, edx
	mov	qword ptr [rbp - 32], rcx
	mov	dword ptr [rbp - 36], eax
	call	_ZNSt13runtime_errorD2Ev@PLT
# %bb.3:
	mov	rdi, qword ptr [rbp - 32]
	call	_Unwind_Resume@PLT
.Lfunc_end10:
	.size	_ZN17ShapeProgramErrorC2EiPKc, .Lfunc_end10-_ZN17ShapeProgramErrorC2EiPKc
	.cfi_endproc
	.section	.gcc_except_table._ZN17ShapeProgramErrorC2EiPKc,"aG",@progbits,_ZN17ShapeProgramErrorC2EiPKc,comdat
	.p2align	2
GCC_except_table10:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp30-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp30
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp32-.Lfunc_begin3          #     jumps to .Ltmp32
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Lfunc_end10-.Ltmp31           #   Call between .Ltmp31 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2
                                        # -- End function
	.section	.text._ZN17ShapeProgramErrorD2Ev,"axG",@progbits,_ZN17ShapeProgramErrorD2Ev,comdat
	.weak	_ZN17ShapeProgramErrorD2Ev      # -- Begin function _ZN17ShapeProgramErrorD2Ev
	.p2align	4, 0x90
	.type	_ZN17ShapeProgramErrorD2Ev,@function
_ZN17ShapeProgramErrorD2Ev:             # @_ZN17ShapeProgramErrorD2Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	_ZNSt13runtime_errorD2Ev@PLT
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end11:
	.size	_ZN17ShapeProgramErrorD2Ev, .Lfunc_end11-_ZN17ShapeProgramErrorD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function __cxx_global_var_init.8
	.type	__cxx_global_var_init.8,@function
__cxx_global_var_init.8:                # @__cxx_global_var_init.8
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	lea	rdi, [rip + unitCircle]
	mov	esi, 1
	call	_ZN6CircleC2Ei
	lea	rdi, [rip + _ZN6CircleD2Ev]
	lea	rsi, [rip + unitCircle]
	lea	rdx, [rip + __dso_handle]
	call	__cxa_atexit@PLT
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end12:
	.size	__cxx_global_var_init.8, .Lfunc_end12-__cxx_global_var_init.8
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6CircleD2Ev,"axG",@progbits,_ZN6CircleD2Ev,comdat
	.weak	_ZN6CircleD2Ev                  # -- Begin function _ZN6CircleD2Ev
	.p2align	4, 0x90
	.type	_ZN6CircleD2Ev,@function
_ZN6CircleD2Ev:                         # @_ZN6CircleD2Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	_ZN5ShapeD2Ev
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end13:
	.size	_ZN6CircleD2Ev, .Lfunc_end13-_ZN6CircleD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function __cxx_global_var_init.9
	.type	__cxx_global_var_init.9,@function
__cxx_global_var_init.9:                # @__cxx_global_var_init.9
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	lea	rdi, [rip + unitSquare]
	mov	esi, 1
	call	_ZN6SquareC2Ei
	lea	rdi, [rip + _ZN6SquareD2Ev]
	lea	rsi, [rip + unitSquare]
	lea	rdx, [rip + __dso_handle]
	call	__cxa_atexit@PLT
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end14:
	.size	__cxx_global_var_init.9, .Lfunc_end14-__cxx_global_var_init.9
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6SquareD2Ev,"axG",@progbits,_ZN6SquareD2Ev,comdat
	.weak	_ZN6SquareD2Ev                  # -- Begin function _ZN6SquareD2Ev
	.p2align	4, 0x90
	.type	_ZN6SquareD2Ev,@function
_ZN6SquareD2Ev:                         # @_ZN6SquareD2Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rdi       # 8-byte Spill
	add	rdi, 24
	call	_ZN11RegularNGonD2Ev
	mov	rdi, qword ptr [rbp - 16]       # 8-byte Reload
	call	_ZN9RectangleD2Ev
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end15:
	.size	_ZN6SquareD2Ev, .Lfunc_end15-_ZN6SquareD2Ev
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_Z14printshapedataP5Shape       # -- Begin function _Z14printshapedataP5Shape
	.p2align	4, 0x90
	.type	_Z14printshapedataP5Shape,@function
_Z14printshapedataP5Shape:              # @_Z14printshapedataP5Shape
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 112
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
.Ltmp33:
	call	_ZN6Object4nameEv
	mov	rcx, rax
.Ltmp34:
	mov	qword ptr [rbp - 80], rcx       # 8-byte Spill
	jmp	.LBB16_1
.LBB16_1:
	mov	rcx, qword ptr [rbp - 80]       # 8-byte Reload
	mov	qword ptr [rbp - 16], rcx
	mov	rdi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rdi]
	mov	rcx, qword ptr [rcx + 16]
.Ltmp35:
	call	rcx
.Ltmp36:
	movsd	qword ptr [rbp - 88], xmm0      # 8-byte Spill
	jmp	.LBB16_2
.LBB16_2:
	movsd	xmm0, qword ptr [rbp - 88]      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 40], xmm0
	mov	rdi, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rdi]
	mov	rcx, qword ptr [rcx + 24]
.Ltmp37:
	call	rcx
.Ltmp38:
	movsd	qword ptr [rbp - 96], xmm0      # 8-byte Spill
	jmp	.LBB16_3
.LBB16_3:
	movsd	xmm0, qword ptr [rbp - 96]      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	qword ptr [rbp - 48], xmm0
	mov	rsi, qword ptr [rbp - 16]
	movsd	xmm0, qword ptr [rbp - 40]      # xmm0 = mem[0],zero
	movsd	xmm1, qword ptr [rbp - 48]      # xmm1 = mem[0],zero
.Ltmp39:
	lea	rdi, [rip + .L.str.10]
	mov	al, 2
	call	printf@PLT
                                        # kill: def $ecx killed $eax
.Ltmp40:
	jmp	.LBB16_4
.LBB16_4:
	jmp	.LBB16_9
.LBB16_5:
.Ltmp41:
	mov	rcx, rax
	mov	eax, edx
	mov	qword ptr [rbp - 24], rcx
	mov	dword ptr [rbp - 28], eax
# %bb.6:
	mov	eax, dword ptr [rbp - 28]
	mov	dword ptr [rbp - 100], eax      # 4-byte Spill
	mov	ecx, 3
	cmp	eax, ecx
	jne	.LBB16_10
# %bb.7:
	mov	rdi, qword ptr [rbp - 24]
	call	__cxa_begin_catch@PLT
	mov	qword ptr [rbp - 72], rax
	mov	rdi, qword ptr [rbp - 72]
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax + 16]
	call	rax
	mov	rsi, rax
.Ltmp54:
	lea	rdi, [rip + .L.str.11]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	call	printf@PLT
                                        # kill: def $ecx killed $eax
.Ltmp55:
	jmp	.LBB16_8
.LBB16_8:
	call	__cxa_end_catch@PLT
.LBB16_9:
	add	rsp, 112
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.LBB16_10:
	.cfi_def_cfa rbp, 16
	mov	eax, dword ptr [rbp - 100]      # 4-byte Reload
	mov	ecx, 2
	cmp	eax, ecx
	jne	.LBB16_14
# %bb.11:
	mov	rdi, qword ptr [rbp - 24]
	call	__cxa_begin_catch@PLT
	mov	qword ptr [rbp - 64], rax
.Ltmp47:
	lea	rdi, [rip + .L.str.12]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	call	printf@PLT
                                        # kill: def $ecx killed $eax
.Ltmp48:
	jmp	.LBB16_12
.LBB16_12:
	mov	rdi, qword ptr [rbp - 64]
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax + 16]
	call	rax
	mov	rsi, rax
.Ltmp49:
	lea	rdi, [rip + .L.str.11]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	call	printf@PLT
                                        # kill: def $ecx killed $eax
.Ltmp50:
	jmp	.LBB16_13
.LBB16_13:
	call	__cxa_end_catch@PLT
	jmp	.LBB16_9
.LBB16_14:
	mov	eax, dword ptr [rbp - 100]      # 4-byte Reload
	mov	ecx, 1
	cmp	eax, ecx
	jne	.LBB16_23
# %bb.15:
	mov	rdi, qword ptr [rbp - 24]
	call	__cxa_begin_catch@PLT
	mov	qword ptr [rbp - 56], rax
	mov	rdi, qword ptr [rbp - 56]
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax + 16]
	call	rax
	mov	rsi, rax
.Ltmp42:
	lea	rdi, [rip + .L.str.11]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	call	printf@PLT
                                        # kill: def $ecx killed $eax
.Ltmp43:
	jmp	.LBB16_16
.LBB16_16:
	call	__cxa_end_catch@PLT
	jmp	.LBB16_9
.LBB16_17:
.Ltmp44:
	mov	rcx, rdx
	mov	rsi, rax
                                        # kill: def $ecx killed $ecx killed $rcx
	mov	qword ptr [rbp - 24], rsi
	mov	dword ptr [rbp - 28], ecx
.Ltmp45:
	call	__cxa_end_catch@PLT
.Ltmp46:
	jmp	.LBB16_18
.LBB16_18:
	jmp	.LBB16_23
.LBB16_19:
.Ltmp51:
	mov	rcx, rdx
	mov	rsi, rax
                                        # kill: def $ecx killed $ecx killed $rcx
	mov	qword ptr [rbp - 24], rsi
	mov	dword ptr [rbp - 28], ecx
.Ltmp52:
	call	__cxa_end_catch@PLT
.Ltmp53:
	jmp	.LBB16_20
.LBB16_20:
	jmp	.LBB16_23
.LBB16_21:
.Ltmp56:
	mov	rcx, rdx
	mov	rsi, rax
                                        # kill: def $ecx killed $ecx killed $rcx
	mov	qword ptr [rbp - 24], rsi
	mov	dword ptr [rbp - 28], ecx
.Ltmp57:
	call	__cxa_end_catch@PLT
.Ltmp58:
	jmp	.LBB16_22
.LBB16_22:
	jmp	.LBB16_23
.LBB16_23:
	mov	rdi, qword ptr [rbp - 24]
	call	_Unwind_Resume@PLT
.LBB16_24:
.Ltmp59:
	mov	rdi, rax
                                        # kill: def $eax killed $edx killed $rdx
	call	__clang_call_terminate
.Lfunc_end16:
	.size	_Z14printshapedataP5Shape, .Lfunc_end16-_Z14printshapedataP5Shape
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table16:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	156                             # @TType Encoding = indirect pcrel sdata8
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp33-.Lfunc_begin4          # >> Call Site 1 <<
	.uleb128 .Ltmp40-.Ltmp33                #   Call between .Ltmp33 and .Ltmp40
	.uleb128 .Ltmp41-.Lfunc_begin4          #     jumps to .Ltmp41
	.byte	5                               #   On action: 3
	.uleb128 .Ltmp40-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Ltmp54-.Ltmp40                #   Call between .Ltmp40 and .Ltmp54
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp54-.Lfunc_begin4          # >> Call Site 3 <<
	.uleb128 .Ltmp55-.Ltmp54                #   Call between .Ltmp54 and .Ltmp55
	.uleb128 .Ltmp56-.Lfunc_begin4          #     jumps to .Ltmp56
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin4          # >> Call Site 4 <<
	.uleb128 .Ltmp47-.Ltmp55                #   Call between .Ltmp55 and .Ltmp47
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin4          # >> Call Site 5 <<
	.uleb128 .Ltmp48-.Ltmp47                #   Call between .Ltmp47 and .Ltmp48
	.uleb128 .Ltmp51-.Lfunc_begin4          #     jumps to .Ltmp51
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin4          # >> Call Site 6 <<
	.uleb128 .Ltmp49-.Ltmp48                #   Call between .Ltmp48 and .Ltmp49
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin4          # >> Call Site 7 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.uleb128 .Ltmp51-.Lfunc_begin4          #     jumps to .Ltmp51
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin4          # >> Call Site 8 <<
	.uleb128 .Ltmp42-.Ltmp50                #   Call between .Ltmp50 and .Ltmp42
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin4          # >> Call Site 9 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.uleb128 .Ltmp44-.Lfunc_begin4          #     jumps to .Ltmp44
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin4          # >> Call Site 10 <<
	.uleb128 .Ltmp45-.Ltmp43                #   Call between .Ltmp43 and .Ltmp45
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin4          # >> Call Site 11 <<
	.uleb128 .Ltmp58-.Ltmp45                #   Call between .Ltmp45 and .Ltmp58
	.uleb128 .Ltmp59-.Lfunc_begin4          #     jumps to .Ltmp59
	.byte	7                               #   On action: 4
	.uleb128 .Ltmp58-.Lfunc_begin4          # >> Call Site 12 <<
	.uleb128 .Lfunc_end16-.Ltmp58           #   Call between .Ltmp58 and .Lfunc_end16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.byte	2                               # >> Action Record 2 <<
                                        #   Catch TypeInfo 2
	.byte	125                             #   Continue to action 1
	.byte	3                               # >> Action Record 3 <<
                                        #   Catch TypeInfo 3
	.byte	125                             #   Continue to action 2
	.byte	4                               # >> Action Record 4 <<
                                        #   Catch TypeInfo 4
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 4
.Ltmp60:                                # TypeInfo 3
	.quad	.L_ZTI17ShapeProgramError.DW.stub-.Ltmp60
.Ltmp61:                                # TypeInfo 2
	.quad	.L_ZTISt11logic_error.DW.stub-.Ltmp61
.Ltmp62:                                # TypeInfo 1
	.quad	.L_ZTISt9exception.DW.stub-.Ltmp62
.Lttbase0:
	.p2align	2
                                        # -- End function
	.section	.text._ZN6Object4nameEv,"axG",@progbits,_ZN6Object4nameEv,comdat
	.weak	_ZN6Object4nameEv               # -- Begin function _ZN6Object4nameEv
	.p2align	4, 0x90
	.type	_ZN6Object4nameEv,@function
_ZN6Object4nameEv:                      # @_ZN6Object4nameEv
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end17:
	.size	_ZN6Object4nameEv, .Lfunc_end17-_ZN6Object4nameEv
	.cfi_endproc
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate          # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	4, 0x90
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# %bb.0:
	push	rax
	call	__cxa_begin_catch@PLT
	call	_ZSt9terminatev@PLT
.Lfunc_end18:
	.size	__clang_call_terminate, .Lfunc_end18-__clang_call_terminate
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function __cxx_global_var_init.13
	.type	__cxx_global_var_init.13,@function
__cxx_global_var_init.13:               # @__cxx_global_var_init.13
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	lea	rdi, [rip + trigger]
	call	_ZN10early_initC2Ev
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end19:
	.size	__cxx_global_var_init.13, .Lfunc_end19-__cxx_global_var_init.13
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN10early_initC2Ev,"axG",@progbits,_ZN10early_initC2Ev,comdat
	.weak	_ZN10early_initC2Ev             # -- Begin function _ZN10early_initC2Ev
	.p2align	4, 0x90
	.type	_ZN10early_initC2Ev,@function
_ZN10early_initC2Ev:                    # @_ZN10early_initC2Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rip + unitSquare]
	lea	rsi, [rip + .L.str.23]
	call	_ZN6Object8set_nameEPKc
	lea	rdi, [rip + unitCircle]
	lea	rsi, [rip + .L.str.24]
	call	_ZN6Object8set_nameEPKc
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end20:
	.size	_ZN10early_initC2Ev, .Lfunc_end20-_ZN10early_initC2Ev
	.cfi_endproc
                                        # -- End function
	.text
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 96
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], 0
	cmp	dword ptr [rbp - 8], 2
	je	.LBB21_2
# %bb.1:
	lea	rdi, [rip + .L.str.14]
	mov	al, 0
	call	printf@PLT
	mov	dword ptr [rbp - 4], -1
	jmp	.LBB21_29
.LBB21_2:
	mov	rax, qword ptr [rbp - 16]
	mov	rdi, qword ptr [rax + 8]
	call	strlen@PLT
	cmp	rax, 1
	je	.LBB21_4
# %bb.3:
	lea	rdi, [rip + .L.str.15]
	mov	al, 0
	call	printf@PLT
	mov	dword ptr [rbp - 4], -1
	jmp	.LBB21_29
.LBB21_4:
	mov	rax, qword ptr [rbp - 16]
	mov	rax, qword ptr [rax + 8]
	movsx	edi, byte ptr [rax]
.Ltmp63:
	call	_Z11createshapec
	mov	rcx, rax
.Ltmp64:
	mov	qword ptr [rbp - 64], rcx       # 8-byte Spill
	jmp	.LBB21_5
.LBB21_5:
	mov	rcx, qword ptr [rbp - 64]       # 8-byte Reload
	mov	qword ptr [rbp - 24], rcx
	mov	rdi, qword ptr [rbp - 24]
.Ltmp65:
	call	_Z14printshapedataP5Shape
.Ltmp66:
	jmp	.LBB21_6
.LBB21_6:
.Ltmp67:
	lea	rdi, [rip + .L.str.16]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	call	printf@PLT
                                        # kill: def $ecx killed $eax
.Ltmp68:
	jmp	.LBB21_7
.LBB21_7:
.Ltmp69:
	lea	rdi, [rip + unitCircle]
	call	_Z14printshapedataP5Shape
.Ltmp70:
	jmp	.LBB21_8
.LBB21_8:
.Ltmp71:
	lea	rdi, [rip + .L.str.17]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	call	printf@PLT
                                        # kill: def $ecx killed $eax
.Ltmp72:
	jmp	.LBB21_9
.LBB21_9:
.Ltmp73:
	lea	rdi, [rip + unitSquare]
	call	_Z14printshapedataP5Shape
.Ltmp74:
	jmp	.LBB21_10
.LBB21_10:
	jmp	.LBB21_23
.LBB21_11:
.Ltmp75:
	mov	rcx, rax
	mov	eax, edx
	mov	qword ptr [rbp - 32], rcx
	mov	dword ptr [rbp - 36], eax
# %bb.12:
	mov	eax, dword ptr [rbp - 36]
	mov	ecx, 1
	cmp	eax, ecx
	jne	.LBB21_30
# %bb.13:
	mov	rdi, qword ptr [rbp - 32]
	call	__cxa_begin_catch@PLT
	mov	qword ptr [rbp - 48], rax
	mov	rax, qword ptr [rbp - 48]
	mov	qword ptr [rbp - 72], rax       # 8-byte Spill
	cmp	rax, 0
	je	.LBB21_15
# %bb.14:
	mov	rdi, qword ptr [rbp - 72]       # 8-byte Reload
	mov	rsi, qword ptr [rip + _ZTISt13runtime_error@GOTPCREL]
	lea	rdx, [rip + _ZTI17ShapeProgramError]
	xor	eax, eax
	mov	ecx, eax
	call	__dynamic_cast@PLT
	mov	qword ptr [rbp - 80], rax       # 8-byte Spill
	jmp	.LBB21_16
.LBB21_15:
	xor	eax, eax
                                        # kill: def $rax killed $eax
	mov	qword ptr [rbp - 80], rax       # 8-byte Spill
	jmp	.LBB21_16
.LBB21_16:
	mov	rax, qword ptr [rbp - 80]       # 8-byte Reload
	mov	qword ptr [rbp - 56], rax
	cmp	qword ptr [rbp - 56], 0
	je	.LBB21_20
# %bb.17:
	mov	rdi, qword ptr [rbp - 56]
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax + 16]
	call	rax
	mov	rsi, rax
.Ltmp78:
	lea	rdi, [rip + .L.str.18]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	call	printf@PLT
                                        # kill: def $ecx killed $eax
.Ltmp79:
	jmp	.LBB21_18
.LBB21_18:
	jmp	.LBB21_22
.LBB21_19:
.Ltmp80:
	mov	rcx, rdx
	mov	rsi, rax
                                        # kill: def $ecx killed $ecx killed $rcx
	mov	qword ptr [rbp - 32], rsi
	mov	dword ptr [rbp - 36], ecx
.Ltmp81:
	call	__cxa_end_catch@PLT
.Ltmp82:
	jmp	.LBB21_27
.LBB21_20:
	mov	rdi, qword ptr [rbp - 48]
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax + 16]
	call	rax
	mov	rsi, rax
.Ltmp76:
	lea	rdi, [rip + .L.str.18]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	call	printf@PLT
                                        # kill: def $ecx killed $eax
.Ltmp77:
	jmp	.LBB21_21
.LBB21_21:
	jmp	.LBB21_22
.LBB21_22:
	call	__cxa_end_catch@PLT
.LBB21_23:
	cmp	qword ptr [rbp - 24], 0
	je	.LBB21_28
# %bb.24:
	mov	rax, qword ptr [rbp - 24]
	mov	qword ptr [rbp - 88], rax       # 8-byte Spill
	cmp	rax, 0
	je	.LBB21_26
# %bb.25:
	mov	rdi, qword ptr [rbp - 88]       # 8-byte Reload
	mov	rax, qword ptr [rdi]
	call	qword ptr [rax + 8]
.LBB21_26:
	mov	qword ptr [rbp - 24], 0
	jmp	.LBB21_28
.LBB21_27:
	jmp	.LBB21_30
.LBB21_28:
	mov	dword ptr [rbp - 4], 0
.LBB21_29:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 96
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.LBB21_30:
	.cfi_def_cfa rbp, 16
	mov	rdi, qword ptr [rbp - 32]
	call	_Unwind_Resume@PLT
.LBB21_31:
.Ltmp83:
	mov	rdi, rax
                                        # kill: def $eax killed $edx killed $rdx
	call	__clang_call_terminate
.Lfunc_end21:
	.size	main, .Lfunc_end21-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table21:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	156                             # @TType Encoding = indirect pcrel sdata8
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp63-.Lfunc_begin5          #   Call between .Lfunc_begin5 and .Ltmp63
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin5          # >> Call Site 2 <<
	.uleb128 .Ltmp74-.Ltmp63                #   Call between .Ltmp63 and .Ltmp74
	.uleb128 .Ltmp75-.Lfunc_begin5          #     jumps to .Ltmp75
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp74-.Lfunc_begin5          # >> Call Site 3 <<
	.uleb128 .Ltmp78-.Ltmp74                #   Call between .Ltmp74 and .Ltmp78
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin5          # >> Call Site 4 <<
	.uleb128 .Ltmp79-.Ltmp78                #   Call between .Ltmp78 and .Ltmp79
	.uleb128 .Ltmp80-.Lfunc_begin5          #     jumps to .Ltmp80
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp81-.Lfunc_begin5          # >> Call Site 5 <<
	.uleb128 .Ltmp82-.Ltmp81                #   Call between .Ltmp81 and .Ltmp82
	.uleb128 .Ltmp83-.Lfunc_begin5          #     jumps to .Ltmp83
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp82-.Lfunc_begin5          # >> Call Site 6 <<
	.uleb128 .Ltmp76-.Ltmp82                #   Call between .Ltmp82 and .Ltmp76
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp76-.Lfunc_begin5          # >> Call Site 7 <<
	.uleb128 .Ltmp77-.Ltmp76                #   Call between .Ltmp76 and .Ltmp77
	.uleb128 .Ltmp80-.Lfunc_begin5          #     jumps to .Ltmp80
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin5          # >> Call Site 8 <<
	.uleb128 .Lfunc_end21-.Ltmp77           #   Call between .Ltmp77 and .Lfunc_end21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.byte	2                               # >> Action Record 2 <<
                                        #   Catch TypeInfo 2
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.quad	0                               # TypeInfo 2
.Ltmp84:                                # TypeInfo 1
	.quad	.L_ZTISt13runtime_error.DW.stub-.Ltmp84
.Lttbase1:
	.p2align	2
                                        # -- End function
	.section	.text._ZN5ShapeC2Ev,"axG",@progbits,_ZN5ShapeC2Ev,comdat
	.weak	_ZN5ShapeC2Ev                   # -- Begin function _ZN5ShapeC2Ev
	.p2align	4, 0x90
	.type	_ZN5ShapeC2Ev,@function
_ZN5ShapeC2Ev:                          # @_ZN5ShapeC2Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rdi       # 8-byte Spill
	call	_ZN6ObjectC2Ev
	mov	rax, qword ptr [rbp - 16]       # 8-byte Reload
	lea	rcx, [rip + _ZTV5Shape]
	add	rcx, 16
	mov	qword ptr [rax], rcx
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end22:
	.size	_ZN5ShapeC2Ev, .Lfunc_end22-_ZN5ShapeC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6CircleD0Ev,"axG",@progbits,_ZN6CircleD0Ev,comdat
	.weak	_ZN6CircleD0Ev                  # -- Begin function _ZN6CircleD0Ev
	.p2align	4, 0x90
	.type	_ZN6CircleD0Ev,@function
_ZN6CircleD0Ev:                         # @_ZN6CircleD0Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rdi       # 8-byte Spill
	call	_ZN6CircleD2Ev
	mov	rdi, qword ptr [rbp - 16]       # 8-byte Reload
	call	_ZdlPv@PLT
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end23:
	.size	_ZN6CircleD0Ev, .Lfunc_end23-_ZN6CircleD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function _ZN6Circle4areaEv
.LCPI24_0:
	.quad	0x3ff921fb54442d18              # double 1.5707963267948966
	.section	.text._ZN6Circle4areaEv,"axG",@progbits,_ZN6Circle4areaEv,comdat
	.weak	_ZN6Circle4areaEv
	.p2align	4, 0x90
	.type	_ZN6Circle4areaEv,@function
_ZN6Circle4areaEv:                      # @_ZN6Circle4areaEv
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	mov	edi, dword ptr [rax + 16]
	mov	esi, 2
	call	_ZSt3powIiiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_
	movaps	xmm1, xmm0
	movsd	xmm0, qword ptr [rip + .LCPI24_0] # xmm0 = mem[0],zero
	mulsd	xmm0, xmm1
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end24:
	.size	_ZN6Circle4areaEv, .Lfunc_end24-_ZN6Circle4areaEv
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function _ZN6Circle13circumferenceEv
.LCPI25_0:
	.quad	0x400921fb54442d18              # double 3.1415926535897931
	.section	.text._ZN6Circle13circumferenceEv,"axG",@progbits,_ZN6Circle13circumferenceEv,comdat
	.weak	_ZN6Circle13circumferenceEv
	.p2align	4, 0x90
	.type	_ZN6Circle13circumferenceEv,@function
_ZN6Circle13circumferenceEv:            # @_ZN6Circle13circumferenceEv
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	mov	eax, dword ptr [rax + 16]
	shl	eax, 1
	cvtsi2sd	xmm0, eax
	movsd	xmm1, qword ptr [rip + .LCPI25_0] # xmm1 = mem[0],zero
	mulsd	xmm0, xmm1
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end25:
	.size	_ZN6Circle13circumferenceEv, .Lfunc_end25-_ZN6Circle13circumferenceEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6ObjectC2Ev,"axG",@progbits,_ZN6ObjectC2Ev,comdat
	.weak	_ZN6ObjectC2Ev                  # -- Begin function _ZN6ObjectC2Ev
	.p2align	4, 0x90
	.type	_ZN6ObjectC2Ev,@function
_ZN6ObjectC2Ev:                         # @_ZN6ObjectC2Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	lea	rcx, [rip + _ZTV6Object]
	add	rcx, 16
	mov	qword ptr [rax], rcx
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end26:
	.size	_ZN6ObjectC2Ev, .Lfunc_end26-_ZN6ObjectC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5ShapeD2Ev,"axG",@progbits,_ZN5ShapeD2Ev,comdat
	.weak	_ZN5ShapeD2Ev                   # -- Begin function _ZN5ShapeD2Ev
	.p2align	4, 0x90
	.type	_ZN5ShapeD2Ev,@function
_ZN5ShapeD2Ev:                          # @_ZN5ShapeD2Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	_ZN6ObjectD2Ev
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end27:
	.size	_ZN5ShapeD2Ev, .Lfunc_end27-_ZN5ShapeD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN5ShapeD0Ev,"axG",@progbits,_ZN5ShapeD0Ev,comdat
	.weak	_ZN5ShapeD0Ev                   # -- Begin function _ZN5ShapeD0Ev
	.p2align	4, 0x90
	.type	_ZN5ShapeD0Ev,@function
_ZN5ShapeD0Ev:                          # @_ZN5ShapeD0Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	ud2
.Lfunc_end28:
	.size	_ZN5ShapeD0Ev, .Lfunc_end28-_ZN5ShapeD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6ObjectD2Ev,"axG",@progbits,_ZN6ObjectD2Ev,comdat
	.weak	_ZN6ObjectD2Ev                  # -- Begin function _ZN6ObjectD2Ev
	.p2align	4, 0x90
	.type	_ZN6ObjectD2Ev,@function
_ZN6ObjectD2Ev:                         # @_ZN6ObjectD2Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rax       # 8-byte Spill
	lea	rcx, [rip + _ZTV6Object]
	add	rcx, 16
	mov	qword ptr [rax], rcx
	cmp	qword ptr [rax + 8], 0
	je	.LBB29_2
# %bb.1:
	mov	rax, qword ptr [rbp - 16]       # 8-byte Reload
	mov	rdi, qword ptr [rax + 8]
	call	free@PLT
	mov	rax, qword ptr [rbp - 16]       # 8-byte Reload
	mov	qword ptr [rax + 8], 0
.LBB29_2:
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end29:
	.size	_ZN6ObjectD2Ev, .Lfunc_end29-_ZN6ObjectD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6ObjectD0Ev,"axG",@progbits,_ZN6ObjectD0Ev,comdat
	.weak	_ZN6ObjectD0Ev                  # -- Begin function _ZN6ObjectD0Ev
	.p2align	4, 0x90
	.type	_ZN6ObjectD0Ev,@function
_ZN6ObjectD0Ev:                         # @_ZN6ObjectD0Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rdi       # 8-byte Spill
	call	_ZN6ObjectD2Ev
	mov	rdi, qword ptr [rbp - 16]       # 8-byte Reload
	call	_ZdlPv@PLT
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end30:
	.size	_ZN6ObjectD0Ev, .Lfunc_end30-_ZN6ObjectD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt3powIiiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_,"axG",@progbits,_ZSt3powIiiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_,comdat
	.weak	_ZSt3powIiiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_ # -- Begin function _ZSt3powIiiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_
	.p2align	4, 0x90
	.type	_ZSt3powIiiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_,@function
_ZSt3powIiiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_: # @_ZSt3powIiiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	cvtsi2sd	xmm0, dword ptr [rbp - 4]
	cvtsi2sd	xmm1, dword ptr [rbp - 8]
	call	pow@PLT
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end31:
	.size	_ZSt3powIiiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_, .Lfunc_end31-_ZSt3powIiiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9RectangleD2Ev,"axG",@progbits,_ZN9RectangleD2Ev,comdat
	.weak	_ZN9RectangleD2Ev               # -- Begin function _ZN9RectangleD2Ev
	.p2align	4, 0x90
	.type	_ZN9RectangleD2Ev,@function
_ZN9RectangleD2Ev:                      # @_ZN9RectangleD2Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	_ZN13ParallelogramD2Ev
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end32:
	.size	_ZN9RectangleD2Ev, .Lfunc_end32-_ZN9RectangleD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9RectangleD0Ev,"axG",@progbits,_ZN9RectangleD0Ev,comdat
	.weak	_ZN9RectangleD0Ev               # -- Begin function _ZN9RectangleD0Ev
	.p2align	4, 0x90
	.type	_ZN9RectangleD0Ev,@function
_ZN9RectangleD0Ev:                      # @_ZN9RectangleD0Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rdi       # 8-byte Spill
	call	_ZN9RectangleD2Ev
	mov	rdi, qword ptr [rbp - 16]       # 8-byte Reload
	call	_ZdlPv@PLT
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end33:
	.size	_ZN9RectangleD0Ev, .Lfunc_end33-_ZN9RectangleD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13Parallelogram4areaEv,"axG",@progbits,_ZN13Parallelogram4areaEv,comdat
	.weak	_ZN13Parallelogram4areaEv       # -- Begin function _ZN13Parallelogram4areaEv
	.p2align	4, 0x90
	.type	_ZN13Parallelogram4areaEv,@function
_ZN13Parallelogram4areaEv:              # @_ZN13Parallelogram4areaEv
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rcx, qword ptr [rbp - 8]
	mov	eax, dword ptr [rcx + 16]
	imul	eax, dword ptr [rcx + 20]
	cvtsi2sd	xmm0, eax
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end34:
	.size	_ZN13Parallelogram4areaEv, .Lfunc_end34-_ZN13Parallelogram4areaEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13Parallelogram13circumferenceEv,"axG",@progbits,_ZN13Parallelogram13circumferenceEv,comdat
	.weak	_ZN13Parallelogram13circumferenceEv # -- Begin function _ZN13Parallelogram13circumferenceEv
	.p2align	4, 0x90
	.type	_ZN13Parallelogram13circumferenceEv,@function
_ZN13Parallelogram13circumferenceEv:    # @_ZN13Parallelogram13circumferenceEv
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rcx, qword ptr [rbp - 8]
	mov	eax, dword ptr [rcx + 16]
	add	eax, dword ptr [rcx + 20]
	shl	eax, 1
	cvtsi2sd	xmm0, eax
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end35:
	.size	_ZN13Parallelogram13circumferenceEv, .Lfunc_end35-_ZN13Parallelogram13circumferenceEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13ParallelogramD2Ev,"axG",@progbits,_ZN13ParallelogramD2Ev,comdat
	.weak	_ZN13ParallelogramD2Ev          # -- Begin function _ZN13ParallelogramD2Ev
	.p2align	4, 0x90
	.type	_ZN13ParallelogramD2Ev,@function
_ZN13ParallelogramD2Ev:                 # @_ZN13ParallelogramD2Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	_ZN5ShapeD2Ev
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end36:
	.size	_ZN13ParallelogramD2Ev, .Lfunc_end36-_ZN13ParallelogramD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13ParallelogramD0Ev,"axG",@progbits,_ZN13ParallelogramD0Ev,comdat
	.weak	_ZN13ParallelogramD0Ev          # -- Begin function _ZN13ParallelogramD0Ev
	.p2align	4, 0x90
	.type	_ZN13ParallelogramD0Ev,@function
_ZN13ParallelogramD0Ev:                 # @_ZN13ParallelogramD0Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rdi       # 8-byte Spill
	call	_ZN13ParallelogramD2Ev
	mov	rdi, qword ptr [rbp - 16]       # 8-byte Reload
	call	_ZdlPv@PLT
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end37:
	.size	_ZN13ParallelogramD0Ev, .Lfunc_end37-_ZN13ParallelogramD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN11RegularNGonC2Ei,"axG",@progbits,_ZN11RegularNGonC2Ei,comdat
	.weak	_ZN11RegularNGonC2Ei            # -- Begin function _ZN11RegularNGonC2Ei
	.p2align	4, 0x90
	.type	_ZN11RegularNGonC2Ei,@function
_ZN11RegularNGonC2Ei:                   # @_ZN11RegularNGonC2Ei
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	rax, qword ptr [rbp - 8]
	lea	rcx, [rip + _ZTV11RegularNGon]
	add	rcx, 16
	mov	qword ptr [rax], rcx
	mov	ecx, dword ptr [rbp - 12]
	mov	dword ptr [rax + 8], ecx
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end38:
	.size	_ZN11RegularNGonC2Ei, .Lfunc_end38-_ZN11RegularNGonC2Ei
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6SquareD0Ev,"axG",@progbits,_ZN6SquareD0Ev,comdat
	.weak	_ZN6SquareD0Ev                  # -- Begin function _ZN6SquareD0Ev
	.p2align	4, 0x90
	.type	_ZN6SquareD0Ev,@function
_ZN6SquareD0Ev:                         # @_ZN6SquareD0Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rdi       # 8-byte Spill
	call	_ZN6SquareD2Ev
	mov	rdi, qword ptr [rbp - 16]       # 8-byte Reload
	call	_ZdlPv@PLT
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end39:
	.size	_ZN6SquareD0Ev, .Lfunc_end39-_ZN6SquareD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN6Square13circumferenceEv,"axG",@progbits,_ZN6Square13circumferenceEv,comdat
	.weak	_ZN6Square13circumferenceEv     # -- Begin function _ZN6Square13circumferenceEv
	.p2align	4, 0x90
	.type	_ZN6Square13circumferenceEv,@function
_ZN6Square13circumferenceEv:            # @_ZN6Square13circumferenceEv
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rcx, qword ptr [rbp - 8]
	mov	eax, dword ptr [rcx + 32]
	imul	eax, dword ptr [rcx + 16]
	cvtsi2sd	xmm0, eax
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end40:
	.size	_ZN6Square13circumferenceEv, .Lfunc_end40-_ZN6Square13circumferenceEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn24_N6SquareD1Ev,"axG",@progbits,_ZThn24_N6SquareD1Ev,comdat
	.weak	_ZThn24_N6SquareD1Ev            # -- Begin function _ZThn24_N6SquareD1Ev
	.p2align	4, 0x90
	.type	_ZThn24_N6SquareD1Ev,@function
_ZThn24_N6SquareD1Ev:                   # @_ZThn24_N6SquareD1Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	add	rdi, -24
	pop	rbp
	.cfi_def_cfa rsp, 8
	jmp	_ZN6SquareD2Ev                  # TAILCALL
.Lfunc_end41:
	.size	_ZThn24_N6SquareD1Ev, .Lfunc_end41-_ZThn24_N6SquareD1Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn24_N6SquareD0Ev,"axG",@progbits,_ZThn24_N6SquareD0Ev,comdat
	.weak	_ZThn24_N6SquareD0Ev            # -- Begin function _ZThn24_N6SquareD0Ev
	.p2align	4, 0x90
	.type	_ZThn24_N6SquareD0Ev,@function
_ZThn24_N6SquareD0Ev:                   # @_ZThn24_N6SquareD0Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	add	rdi, -24
	pop	rbp
	.cfi_def_cfa rsp, 8
	jmp	_ZN6SquareD0Ev                  # TAILCALL
.Lfunc_end42:
	.size	_ZThn24_N6SquareD0Ev, .Lfunc_end42-_ZThn24_N6SquareD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN11RegularNGonD2Ev,"axG",@progbits,_ZN11RegularNGonD2Ev,comdat
	.weak	_ZN11RegularNGonD2Ev            # -- Begin function _ZN11RegularNGonD2Ev
	.p2align	4, 0x90
	.type	_ZN11RegularNGonD2Ev,@function
_ZN11RegularNGonD2Ev:                   # @_ZN11RegularNGonD2Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end43:
	.size	_ZN11RegularNGonD2Ev, .Lfunc_end43-_ZN11RegularNGonD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN11RegularNGonD0Ev,"axG",@progbits,_ZN11RegularNGonD0Ev,comdat
	.weak	_ZN11RegularNGonD0Ev            # -- Begin function _ZN11RegularNGonD0Ev
	.p2align	4, 0x90
	.type	_ZN11RegularNGonD0Ev,@function
_ZN11RegularNGonD0Ev:                   # @_ZN11RegularNGonD0Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rdi       # 8-byte Spill
	call	_ZN11RegularNGonD2Ev
	mov	rdi, qword ptr [rbp - 16]       # 8-byte Reload
	call	_ZdlPv@PLT
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end44:
	.size	_ZN11RegularNGonD0Ev, .Lfunc_end44-_ZN11RegularNGonD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8TriangleD2Ev,"axG",@progbits,_ZN8TriangleD2Ev,comdat
	.weak	_ZN8TriangleD2Ev                # -- Begin function _ZN8TriangleD2Ev
	.p2align	4, 0x90
	.type	_ZN8TriangleD2Ev,@function
_ZN8TriangleD2Ev:                       # @_ZN8TriangleD2Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rdi       # 8-byte Spill
	add	rdi, 16
	call	_ZN11RegularNGonD2Ev
	mov	rdi, qword ptr [rbp - 16]       # 8-byte Reload
	call	_ZN5ShapeD2Ev
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end45:
	.size	_ZN8TriangleD2Ev, .Lfunc_end45-_ZN8TriangleD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8TriangleD0Ev,"axG",@progbits,_ZN8TriangleD0Ev,comdat
	.weak	_ZN8TriangleD0Ev                # -- Begin function _ZN8TriangleD0Ev
	.p2align	4, 0x90
	.type	_ZN8TriangleD0Ev,@function
_ZN8TriangleD0Ev:                       # @_ZN8TriangleD0Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rdi       # 8-byte Spill
	call	_ZN8TriangleD2Ev
	mov	rdi, qword ptr [rbp - 16]       # 8-byte Reload
	call	_ZdlPv@PLT
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end46:
	.size	_ZN8TriangleD0Ev, .Lfunc_end46-_ZN8TriangleD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function _ZN8Triangle4areaEv
.LCPI47_0:
	.quad	0x3fe0000000000000              # double 0.5
	.section	.text._ZN8Triangle4areaEv,"axG",@progbits,_ZN8Triangle4areaEv,comdat
	.weak	_ZN8Triangle4areaEv
	.p2align	4, 0x90
	.type	_ZN8Triangle4areaEv,@function
_ZN8Triangle4areaEv:                    # @_ZN8Triangle4areaEv
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	cvtsi2sd	xmm1, dword ptr [rax + 28]
	movsd	xmm0, qword ptr [rip + .LCPI47_0] # xmm0 = mem[0],zero
	mulsd	xmm0, xmm1
	cvtsi2sd	xmm1, dword ptr [rax + 32]
	mulsd	xmm0, xmm1
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end47:
	.size	_ZN8Triangle4areaEv, .Lfunc_end47-_ZN8Triangle4areaEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8Triangle13circumferenceEv,"axG",@progbits,_ZN8Triangle13circumferenceEv,comdat
	.weak	_ZN8Triangle13circumferenceEv   # -- Begin function _ZN8Triangle13circumferenceEv
	.p2align	4, 0x90
	.type	_ZN8Triangle13circumferenceEv,@function
_ZN8Triangle13circumferenceEv:          # @_ZN8Triangle13circumferenceEv
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	edi, 1048
	call	__cxa_allocate_exception@PLT
	mov	rdi, rax
	mov	rcx, rdi
	mov	qword ptr [rbp - 32], rcx       # 8-byte Spill
.Ltmp85:
	lea	rdx, [rip + .L.str.20]
	mov	esi, 100
	call	_ZN17ShapeProgramErrorC2EiPKc
.Ltmp86:
	jmp	.LBB48_1
.LBB48_1:
	mov	rdi, qword ptr [rbp - 32]       # 8-byte Reload
	lea	rsi, [rip + _ZTI17ShapeProgramError]
	lea	rdx, [rip + _ZN17ShapeProgramErrorD2Ev]
	call	__cxa_throw@PLT
.LBB48_2:
.Ltmp87:
	mov	rdi, qword ptr [rbp - 32]       # 8-byte Reload
	mov	rcx, rax
	mov	eax, edx
	mov	qword ptr [rbp - 16], rcx
	mov	dword ptr [rbp - 20], eax
	call	__cxa_free_exception@PLT
# %bb.3:
	mov	rdi, qword ptr [rbp - 16]
	call	_Unwind_Resume@PLT
.Lfunc_end48:
	.size	_ZN8Triangle13circumferenceEv, .Lfunc_end48-_ZN8Triangle13circumferenceEv
	.cfi_endproc
	.section	.gcc_except_table._ZN8Triangle13circumferenceEv,"aG",@progbits,_ZN8Triangle13circumferenceEv,comdat
	.p2align	2
GCC_except_table48:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp85-.Lfunc_begin6          #   Call between .Lfunc_begin6 and .Ltmp85
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp85-.Lfunc_begin6          # >> Call Site 2 <<
	.uleb128 .Ltmp86-.Ltmp85                #   Call between .Ltmp85 and .Ltmp86
	.uleb128 .Ltmp87-.Lfunc_begin6          #     jumps to .Ltmp87
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp86-.Lfunc_begin6          # >> Call Site 3 <<
	.uleb128 .Lfunc_end48-.Ltmp86           #   Call between .Ltmp86 and .Lfunc_end48
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2
                                        # -- End function
	.section	.text._ZThn16_N8TriangleD1Ev,"axG",@progbits,_ZThn16_N8TriangleD1Ev,comdat
	.weak	_ZThn16_N8TriangleD1Ev          # -- Begin function _ZThn16_N8TriangleD1Ev
	.p2align	4, 0x90
	.type	_ZThn16_N8TriangleD1Ev,@function
_ZThn16_N8TriangleD1Ev:                 # @_ZThn16_N8TriangleD1Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	add	rdi, -16
	pop	rbp
	.cfi_def_cfa rsp, 8
	jmp	_ZN8TriangleD2Ev                # TAILCALL
.Lfunc_end49:
	.size	_ZThn16_N8TriangleD1Ev, .Lfunc_end49-_ZThn16_N8TriangleD1Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn16_N8TriangleD0Ev,"axG",@progbits,_ZThn16_N8TriangleD0Ev,comdat
	.weak	_ZThn16_N8TriangleD0Ev          # -- Begin function _ZThn16_N8TriangleD0Ev
	.p2align	4, 0x90
	.type	_ZThn16_N8TriangleD0Ev,@function
_ZThn16_N8TriangleD0Ev:                 # @_ZThn16_N8TriangleD0Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	add	rdi, -16
	pop	rbp
	.cfi_def_cfa rsp, 8
	jmp	_ZN8TriangleD0Ev                # TAILCALL
.Lfunc_end50:
	.size	_ZThn16_N8TriangleD0Ev, .Lfunc_end50-_ZThn16_N8TriangleD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN7HexagonD2Ev,"axG",@progbits,_ZN7HexagonD2Ev,comdat
	.weak	_ZN7HexagonD2Ev                 # -- Begin function _ZN7HexagonD2Ev
	.p2align	4, 0x90
	.type	_ZN7HexagonD2Ev,@function
_ZN7HexagonD2Ev:                        # @_ZN7HexagonD2Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rdi       # 8-byte Spill
	add	rdi, 16
	call	_ZN11RegularNGonD2Ev
	mov	rdi, qword ptr [rbp - 16]       # 8-byte Reload
	call	_ZN5ShapeD2Ev
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end51:
	.size	_ZN7HexagonD2Ev, .Lfunc_end51-_ZN7HexagonD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN7HexagonD0Ev,"axG",@progbits,_ZN7HexagonD0Ev,comdat
	.weak	_ZN7HexagonD0Ev                 # -- Begin function _ZN7HexagonD0Ev
	.p2align	4, 0x90
	.type	_ZN7HexagonD0Ev,@function
_ZN7HexagonD0Ev:                        # @_ZN7HexagonD0Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rdi       # 8-byte Spill
	call	_ZN7HexagonD2Ev
	mov	rdi, qword ptr [rbp - 16]       # 8-byte Reload
	call	_ZdlPv@PLT
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end52:
	.size	_ZN7HexagonD0Ev, .Lfunc_end52-_ZN7HexagonD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function _ZN7Hexagon4areaEv
.LCPI53_0:
	.quad	0x4000000000000000              # double 2
.LCPI53_1:
	.quad	0x4008000000000000              # double 3
	.section	.text._ZN7Hexagon4areaEv,"axG",@progbits,_ZN7Hexagon4areaEv,comdat
	.weak	_ZN7Hexagon4areaEv
	.p2align	4, 0x90
	.type	_ZN7Hexagon4areaEv,@function
_ZN7Hexagon4areaEv:                     # @_ZN7Hexagon4areaEv
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 32], rax       # 8-byte Spill
	movsd	xmm0, qword ptr [rip + .LCPI53_1] # xmm0 = mem[0],zero
	call	sqrt@PLT
	mov	rax, qword ptr [rbp - 32]       # 8-byte Reload
	movsd	xmm1, qword ptr [rip + .LCPI53_1] # xmm1 = mem[0],zero
	mulsd	xmm0, xmm1
	movsd	xmm1, qword ptr [rip + .LCPI53_0] # xmm1 = mem[0],zero
	divsd	xmm0, xmm1
	movsd	qword ptr [rbp - 24], xmm0      # 8-byte Spill
	mov	edi, dword ptr [rax + 28]
	mov	esi, 2
	call	_ZSt3powIiiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_
	movaps	xmm1, xmm0
	movsd	xmm0, qword ptr [rbp - 24]      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	xmm0, xmm1
	movsd	qword ptr [rbp - 16], xmm0
	movsd	xmm0, qword ptr [rbp - 16]      # xmm0 = mem[0],zero
	add	rsp, 32
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end53:
	.size	_ZN7Hexagon4areaEv, .Lfunc_end53-_ZN7Hexagon4areaEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN7Hexagon13circumferenceEv,"axG",@progbits,_ZN7Hexagon13circumferenceEv,comdat
	.weak	_ZN7Hexagon13circumferenceEv    # -- Begin function _ZN7Hexagon13circumferenceEv
	.p2align	4, 0x90
	.type	_ZN7Hexagon13circumferenceEv,@function
_ZN7Hexagon13circumferenceEv:           # @_ZN7Hexagon13circumferenceEv
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rcx, qword ptr [rbp - 8]
	mov	eax, dword ptr [rcx + 24]
	imul	eax, dword ptr [rcx + 28]
	cvtsi2sd	xmm0, eax
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end54:
	.size	_ZN7Hexagon13circumferenceEv, .Lfunc_end54-_ZN7Hexagon13circumferenceEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn16_N7HexagonD1Ev,"axG",@progbits,_ZThn16_N7HexagonD1Ev,comdat
	.weak	_ZThn16_N7HexagonD1Ev           # -- Begin function _ZThn16_N7HexagonD1Ev
	.p2align	4, 0x90
	.type	_ZThn16_N7HexagonD1Ev,@function
_ZThn16_N7HexagonD1Ev:                  # @_ZThn16_N7HexagonD1Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	add	rdi, -16
	pop	rbp
	.cfi_def_cfa rsp, 8
	jmp	_ZN7HexagonD2Ev                 # TAILCALL
.Lfunc_end55:
	.size	_ZThn16_N7HexagonD1Ev, .Lfunc_end55-_ZThn16_N7HexagonD1Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn16_N7HexagonD0Ev,"axG",@progbits,_ZThn16_N7HexagonD0Ev,comdat
	.weak	_ZThn16_N7HexagonD0Ev           # -- Begin function _ZThn16_N7HexagonD0Ev
	.p2align	4, 0x90
	.type	_ZThn16_N7HexagonD0Ev,@function
_ZThn16_N7HexagonD0Ev:                  # @_ZThn16_N7HexagonD0Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	add	rdi, -16
	pop	rbp
	.cfi_def_cfa rsp, 8
	jmp	_ZN7HexagonD0Ev                 # TAILCALL
.Lfunc_end56:
	.size	_ZThn16_N7HexagonD0Ev, .Lfunc_end56-_ZThn16_N7HexagonD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8PentagonD2Ev,"axG",@progbits,_ZN8PentagonD2Ev,comdat
	.weak	_ZN8PentagonD2Ev                # -- Begin function _ZN8PentagonD2Ev
	.p2align	4, 0x90
	.type	_ZN8PentagonD2Ev,@function
_ZN8PentagonD2Ev:                       # @_ZN8PentagonD2Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rdi       # 8-byte Spill
	add	rdi, 16
	call	_ZN11RegularNGonD2Ev
	mov	rdi, qword ptr [rbp - 16]       # 8-byte Reload
	call	_ZN5ShapeD2Ev
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end57:
	.size	_ZN8PentagonD2Ev, .Lfunc_end57-_ZN8PentagonD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8PentagonD0Ev,"axG",@progbits,_ZN8PentagonD0Ev,comdat
	.weak	_ZN8PentagonD0Ev                # -- Begin function _ZN8PentagonD0Ev
	.p2align	4, 0x90
	.type	_ZN8PentagonD0Ev,@function
_ZN8PentagonD0Ev:                       # @_ZN8PentagonD0Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rdi       # 8-byte Spill
	call	_ZN8PentagonD2Ev
	mov	rdi, qword ptr [rbp - 16]       # 8-byte Reload
	call	_ZdlPv@PLT
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end58:
	.size	_ZN8PentagonD0Ev, .Lfunc_end58-_ZN8PentagonD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3                               # -- Begin function _ZN8Pentagon4areaEv
.LCPI59_0:
	.quad	0x4000000000000000              # double 2
	.section	.text._ZN8Pentagon4areaEv,"axG",@progbits,_ZN8Pentagon4areaEv,comdat
	.weak	_ZN8Pentagon4areaEv
	.p2align	4, 0x90
	.type	_ZN8Pentagon4areaEv,@function
_ZN8Pentagon4areaEv:                    # @_ZN8Pentagon4areaEv
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 80
	mov	qword ptr [rbp - 8], rdi
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 32], rax       # 8-byte Spill
	mov	eax, dword ptr [rax + 24]
	sub	eax, 1
	cmp	eax, 0
	jne	.LBB59_4
# %bb.1:
	mov	edi, 16
	call	__cxa_allocate_exception@PLT
	mov	rdi, rax
	mov	rcx, rdi
	mov	qword ptr [rbp - 40], rcx       # 8-byte Spill
.Ltmp88:
	lea	rsi, [rip + .L.str.21]
	call	_ZNSt16invalid_argumentC1EPKc@PLT
.Ltmp89:
	jmp	.LBB59_2
.LBB59_2:
	mov	rdi, qword ptr [rbp - 40]       # 8-byte Reload
	mov	rsi, qword ptr [rip + _ZTISt16invalid_argument@GOTPCREL]
	mov	rdx, qword ptr [rip + _ZNSt16invalid_argumentD1Ev@GOTPCREL]
	call	__cxa_throw@PLT
.LBB59_3:
.Ltmp90:
	mov	rdi, qword ptr [rbp - 40]       # 8-byte Reload
	mov	rcx, rax
	mov	eax, edx
	mov	qword ptr [rbp - 16], rcx
	mov	dword ptr [rbp - 20], eax
	call	__cxa_free_exception@PLT
	jmp	.LBB59_5
.LBB59_4:
	mov	rax, qword ptr [rbp - 32]       # 8-byte Reload
	mov	ecx, dword ptr [rax + 24]
	sub	ecx, 1
	mov	eax, 1
	cdq
	idiv	ecx
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 32]       # 8-byte Reload
	cvtsi2sd	xmm0, ecx
	movsd	qword ptr [rbp - 56], xmm0      # 8-byte Spill
	cvtsi2sd	xmm0, dword ptr [rax + 24]
	movsd	qword ptr [rbp - 64], xmm0      # 8-byte Spill
	cvtsi2sd	xmm0, dword ptr [rax + 24]
	movsd	qword ptr [rbp - 72], xmm0      # 8-byte Spill
	mov	edi, 5
	call	_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsr12__is_integerIT_EE7__valueEdE6__typeES2_
	movsd	xmm1, qword ptr [rbp - 72]      # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movaps	xmm3, xmm0
	movsd	xmm0, qword ptr [rbp - 64]      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	xmm2, qword ptr [rip + .LCPI59_0] # xmm2 = mem[0],zero
	mulsd	xmm2, xmm3
	addsd	xmm1, xmm2
	mulsd	xmm0, xmm1
	call	sqrt@PLT
	mov	rax, qword ptr [rbp - 32]       # 8-byte Reload
	movaps	xmm1, xmm0
	movsd	xmm0, qword ptr [rbp - 56]      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	xmm0, xmm1
	movsd	qword ptr [rbp - 48], xmm0      # 8-byte Spill
	mov	edi, dword ptr [rax + 28]
	mov	esi, 2
	call	_ZSt3powIiiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_
	movaps	xmm1, xmm0
	movsd	xmm0, qword ptr [rbp - 48]      # 8-byte Reload
                                        # xmm0 = mem[0],zero
	mulsd	xmm0, xmm1
	add	rsp, 80
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.LBB59_5:
	.cfi_def_cfa rbp, 16
	mov	rdi, qword ptr [rbp - 16]
	call	_Unwind_Resume@PLT
.Lfunc_end59:
	.size	_ZN8Pentagon4areaEv, .Lfunc_end59-_ZN8Pentagon4areaEv
	.cfi_endproc
	.section	.gcc_except_table._ZN8Pentagon4areaEv,"aG",@progbits,_ZN8Pentagon4areaEv,comdat
	.p2align	2
GCC_except_table59:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7    # >> Call Site 1 <<
	.uleb128 .Ltmp88-.Lfunc_begin7          #   Call between .Lfunc_begin7 and .Ltmp88
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp88-.Lfunc_begin7          # >> Call Site 2 <<
	.uleb128 .Ltmp89-.Ltmp88                #   Call between .Ltmp88 and .Ltmp89
	.uleb128 .Ltmp90-.Lfunc_begin7          #     jumps to .Ltmp90
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp89-.Lfunc_begin7          # >> Call Site 3 <<
	.uleb128 .Lfunc_end59-.Ltmp89           #   Call between .Ltmp89 and .Lfunc_end59
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.p2align	2
                                        # -- End function
	.section	.text._ZN8Pentagon13circumferenceEv,"axG",@progbits,_ZN8Pentagon13circumferenceEv,comdat
	.weak	_ZN8Pentagon13circumferenceEv   # -- Begin function _ZN8Pentagon13circumferenceEv
	.p2align	4, 0x90
	.type	_ZN8Pentagon13circumferenceEv,@function
_ZN8Pentagon13circumferenceEv:          # @_ZN8Pentagon13circumferenceEv
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rcx, qword ptr [rbp - 8]
	mov	eax, dword ptr [rcx + 24]
	imul	eax, dword ptr [rcx + 28]
	cvtsi2sd	xmm0, eax
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end60:
	.size	_ZN8Pentagon13circumferenceEv, .Lfunc_end60-_ZN8Pentagon13circumferenceEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn16_N8PentagonD1Ev,"axG",@progbits,_ZThn16_N8PentagonD1Ev,comdat
	.weak	_ZThn16_N8PentagonD1Ev          # -- Begin function _ZThn16_N8PentagonD1Ev
	.p2align	4, 0x90
	.type	_ZThn16_N8PentagonD1Ev,@function
_ZThn16_N8PentagonD1Ev:                 # @_ZThn16_N8PentagonD1Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	add	rdi, -16
	pop	rbp
	.cfi_def_cfa rsp, 8
	jmp	_ZN8PentagonD2Ev                # TAILCALL
.Lfunc_end61:
	.size	_ZThn16_N8PentagonD1Ev, .Lfunc_end61-_ZThn16_N8PentagonD1Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZThn16_N8PentagonD0Ev,"axG",@progbits,_ZThn16_N8PentagonD0Ev,comdat
	.weak	_ZThn16_N8PentagonD0Ev          # -- Begin function _ZThn16_N8PentagonD0Ev
	.p2align	4, 0x90
	.type	_ZThn16_N8PentagonD0Ev,@function
_ZThn16_N8PentagonD0Ev:                 # @_ZThn16_N8PentagonD0Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	add	rdi, -16
	pop	rbp
	.cfi_def_cfa rsp, 8
	jmp	_ZN8PentagonD0Ev                # TAILCALL
.Lfunc_end62:
	.size	_ZThn16_N8PentagonD0Ev, .Lfunc_end62-_ZThn16_N8PentagonD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsr12__is_integerIT_EE7__valueEdE6__typeES2_,"axG",@progbits,_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsr12__is_integerIT_EE7__valueEdE6__typeES2_,comdat
	.weak	_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsr12__is_integerIT_EE7__valueEdE6__typeES2_ # -- Begin function _ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsr12__is_integerIT_EE7__valueEdE6__typeES2_
	.p2align	4, 0x90
	.type	_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsr12__is_integerIT_EE7__valueEdE6__typeES2_,@function
_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsr12__is_integerIT_EE7__valueEdE6__typeES2_: # @_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsr12__is_integerIT_EE7__valueEdE6__typeES2_
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 4], edi
	cvtsi2sd	xmm0, dword ptr [rbp - 4]
	call	sqrt@PLT
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end63:
	.size	_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsr12__is_integerIT_EE7__valueEdE6__typeES2_, .Lfunc_end63-_ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsr12__is_integerIT_EE7__valueEdE6__typeES2_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN13ExceptionCodeC2Ei,"axG",@progbits,_ZN13ExceptionCodeC2Ei,comdat
	.weak	_ZN13ExceptionCodeC2Ei          # -- Begin function _ZN13ExceptionCodeC2Ei
	.p2align	4, 0x90
	.type	_ZN13ExceptionCodeC2Ei,@function
_ZN13ExceptionCodeC2Ei:                 # @_ZN13ExceptionCodeC2Ei
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 12], esi
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 12]
	mov	dword ptr [rax], ecx
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end64:
	.size	_ZN13ExceptionCodeC2Ei, .Lfunc_end64-_ZN13ExceptionCodeC2Ei
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN17ShapeProgramErrorD0Ev,"axG",@progbits,_ZN17ShapeProgramErrorD0Ev,comdat
	.weak	_ZN17ShapeProgramErrorD0Ev      # -- Begin function _ZN17ShapeProgramErrorD0Ev
	.p2align	4, 0x90
	.type	_ZN17ShapeProgramErrorD0Ev,@function
_ZN17ShapeProgramErrorD0Ev:             # @_ZN17ShapeProgramErrorD0Ev
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rdi       # 8-byte Spill
	call	_ZN17ShapeProgramErrorD2Ev
	mov	rdi, qword ptr [rbp - 16]       # 8-byte Reload
	call	_ZdlPv@PLT
	add	rsp, 16
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end65:
	.size	_ZN17ShapeProgramErrorD0Ev, .Lfunc_end65-_ZN17ShapeProgramErrorD0Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK17ShapeProgramError4whatEv,"axG",@progbits,_ZNK17ShapeProgramError4whatEv,comdat
	.weak	_ZNK17ShapeProgramError4whatEv  # -- Begin function _ZNK17ShapeProgramError4whatEv
	.p2align	4, 0x90
	.type	_ZNK17ShapeProgramError4whatEv,@function
_ZNK17ShapeProgramError4whatEv:         # @_ZNK17ShapeProgramError4whatEv
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 32
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 16], rdi       # 8-byte Spill
	mov	rax, rdi
	add	rax, 20
	mov	qword ptr [rbp - 32], rax       # 8-byte Spill
	mov	eax, dword ptr [rdi + 16]
	mov	dword ptr [rbp - 20], eax       # 4-byte Spill
	call	_ZNKSt13runtime_error4whatEv@PLT
	mov	rdi, qword ptr [rbp - 32]       # 8-byte Reload
	mov	ecx, dword ptr [rbp - 20]       # 4-byte Reload
	mov	r8, rax
	mov	esi, 1025
	lea	rdx, [rip + .L.str.22]
	mov	al, 0
	call	snprintf@PLT
                                        # kill: def $ecx killed $eax
	mov	rax, qword ptr [rbp - 16]       # 8-byte Reload
	add	rax, 20
	add	rsp, 32
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end66:
	.size	_ZNK17ShapeProgramError4whatEv, .Lfunc_end66-_ZNK17ShapeProgramError4whatEv
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_shapes.cpp
	.type	_GLOBAL__sub_I_shapes.cpp,@function
_GLOBAL__sub_I_shapes.cpp:              # @_GLOBAL__sub_I_shapes.cpp
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	call	__cxx_global_var_init
	call	__cxx_global_var_init.8
	call	__cxx_global_var_init.9
	call	__cxx_global_var_init.13
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end67:
	.size	_GLOBAL__sub_I_shapes.cpp, .Lfunc_end67-_GLOBAL__sub_I_shapes.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Circle"
	.size	.L.str, 7

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Rectangle"
	.size	.L.str.1, 10

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Parallelogram"
	.size	.L.str.2, 14

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Square"
	.size	.L.str.3, 7

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Triangle"
	.size	.L.str.4, 9

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"HexagonHexagonHexagonHexagonHexagonHexagonHexagonHexagonHexagonHexagonHexagonHexagonHexagonHexagonHexagonHexagonHexagonHexagonHexagonHexagonHexagonHexagonHexagonHexagonHexagonHexagonHexagonHexagonHexagonHexagonHexagonHexagonHexagonHexagonHexagonHexagonHexagon"
	.size	.L.str.5, 260

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Pentagon"
	.size	.L.str.6, 9

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Unknown Shape Type"
	.size	.L.str.7, 19

	.type	_ZTS17ShapeProgramError,@object # @_ZTS17ShapeProgramError
	.section	.rodata._ZTS17ShapeProgramError,"aG",@progbits,_ZTS17ShapeProgramError,comdat
	.weak	_ZTS17ShapeProgramError
_ZTS17ShapeProgramError:
	.asciz	"17ShapeProgramError"
	.size	_ZTS17ShapeProgramError, 20

	.type	_ZTS13ExceptionCode,@object     # @_ZTS13ExceptionCode
	.section	.rodata._ZTS13ExceptionCode,"aG",@progbits,_ZTS13ExceptionCode,comdat
	.weak	_ZTS13ExceptionCode
_ZTS13ExceptionCode:
	.asciz	"13ExceptionCode"
	.size	_ZTS13ExceptionCode, 16

	.type	_ZTI13ExceptionCode,@object     # @_ZTI13ExceptionCode
	.section	.data.rel.ro._ZTI13ExceptionCode,"aGw",@progbits,_ZTI13ExceptionCode,comdat
	.weak	_ZTI13ExceptionCode
	.p2align	3
_ZTI13ExceptionCode:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS13ExceptionCode
	.size	_ZTI13ExceptionCode, 16

	.type	_ZTI17ShapeProgramError,@object # @_ZTI17ShapeProgramError
	.section	.data.rel.ro._ZTI17ShapeProgramError,"aGw",@progbits,_ZTI17ShapeProgramError,comdat
	.weak	_ZTI17ShapeProgramError
	.p2align	3
_ZTI17ShapeProgramError:
	.quad	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.quad	_ZTS17ShapeProgramError
	.long	0                               # 0x0
	.long	2                               # 0x2
	.quad	_ZTISt13runtime_error
	.quad	2                               # 0x2
	.quad	_ZTI13ExceptionCode
	.quad	4098                            # 0x1002
	.size	_ZTI17ShapeProgramError, 56

	.type	unitCircle,@object              # @unitCircle
	.bss
	.globl	unitCircle
	.p2align	3
unitCircle:
	.zero	24
	.size	unitCircle, 24

	.type	unitSquare,@object              # @unitSquare
	.globl	unitSquare
	.p2align	3
unitSquare:
	.zero	40
	.size	unitSquare, 40

	.type	.L.str.10,@object               # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"Area of %s is %f, Circumference of shape is %f\n"
	.size	.L.str.10, 48

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"%s"
	.size	.L.str.11, 3

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"THIS IS A BUG IN OUR CODING. PLEASE REPORT THIS ON CI IF YOU SPOT IT.\n"
	.size	.L.str.12, 71

	.type	trigger,@object                 # @trigger
	.bss
	.globl	trigger
trigger:
	.zero	1
	.size	trigger, 1

	.type	.L.str.14,@object               # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"Not enough arguments. Specify one letter.\n"
	.size	.L.str.14, 43

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Please pick a single letter argument.\n"
	.size	.L.str.15, 39

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Data on the unit circle:\n"
	.size	.L.str.16, 26

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"Data on the unit square:\n"
	.size	.L.str.17, 26

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"%s\n"
	.size	.L.str.18, 4

	.type	_ZTV6Circle,@object             # @_ZTV6Circle
	.section	.data.rel.ro._ZTV6Circle,"aGw",@progbits,_ZTV6Circle,comdat
	.weak	_ZTV6Circle
	.p2align	3
_ZTV6Circle:
	.quad	0
	.quad	_ZTI6Circle
	.quad	_ZN6CircleD2Ev
	.quad	_ZN6CircleD0Ev
	.quad	_ZN6Circle4areaEv
	.quad	_ZN6Circle13circumferenceEv
	.size	_ZTV6Circle, 48

	.type	_ZTS6Circle,@object             # @_ZTS6Circle
	.section	.rodata._ZTS6Circle,"aG",@progbits,_ZTS6Circle,comdat
	.weak	_ZTS6Circle
_ZTS6Circle:
	.asciz	"6Circle"
	.size	_ZTS6Circle, 8

	.type	_ZTS5Shape,@object              # @_ZTS5Shape
	.section	.rodata._ZTS5Shape,"aG",@progbits,_ZTS5Shape,comdat
	.weak	_ZTS5Shape
_ZTS5Shape:
	.asciz	"5Shape"
	.size	_ZTS5Shape, 7

	.type	_ZTS6Object,@object             # @_ZTS6Object
	.section	.rodata._ZTS6Object,"aG",@progbits,_ZTS6Object,comdat
	.weak	_ZTS6Object
_ZTS6Object:
	.asciz	"6Object"
	.size	_ZTS6Object, 8

	.type	_ZTI6Object,@object             # @_ZTI6Object
	.section	.data.rel.ro._ZTI6Object,"aGw",@progbits,_ZTI6Object,comdat
	.weak	_ZTI6Object
	.p2align	3
_ZTI6Object:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS6Object
	.size	_ZTI6Object, 16

	.type	_ZTI5Shape,@object              # @_ZTI5Shape
	.section	.data.rel.ro._ZTI5Shape,"aGw",@progbits,_ZTI5Shape,comdat
	.weak	_ZTI5Shape
	.p2align	3
_ZTI5Shape:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS5Shape
	.quad	_ZTI6Object
	.size	_ZTI5Shape, 24

	.type	_ZTI6Circle,@object             # @_ZTI6Circle
	.section	.data.rel.ro._ZTI6Circle,"aGw",@progbits,_ZTI6Circle,comdat
	.weak	_ZTI6Circle
	.p2align	3
_ZTI6Circle:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS6Circle
	.quad	_ZTI5Shape
	.size	_ZTI6Circle, 24

	.type	_ZTV5Shape,@object              # @_ZTV5Shape
	.section	.data.rel.ro._ZTV5Shape,"aGw",@progbits,_ZTV5Shape,comdat
	.weak	_ZTV5Shape
	.p2align	3
_ZTV5Shape:
	.quad	0
	.quad	_ZTI5Shape
	.quad	_ZN5ShapeD2Ev
	.quad	_ZN5ShapeD0Ev
	.quad	__cxa_pure_virtual
	.quad	__cxa_pure_virtual
	.size	_ZTV5Shape, 48

	.type	_ZTV6Object,@object             # @_ZTV6Object
	.section	.data.rel.ro._ZTV6Object,"aGw",@progbits,_ZTV6Object,comdat
	.weak	_ZTV6Object
	.p2align	3
_ZTV6Object:
	.quad	0
	.quad	_ZTI6Object
	.quad	_ZN6ObjectD2Ev
	.quad	_ZN6ObjectD0Ev
	.size	_ZTV6Object, 32

	.type	.L.str.19,@object               # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"Object name is too large"
	.size	.L.str.19, 25

	.type	_ZTV9Rectangle,@object          # @_ZTV9Rectangle
	.section	.data.rel.ro._ZTV9Rectangle,"aGw",@progbits,_ZTV9Rectangle,comdat
	.weak	_ZTV9Rectangle
	.p2align	3
_ZTV9Rectangle:
	.quad	0
	.quad	_ZTI9Rectangle
	.quad	_ZN9RectangleD2Ev
	.quad	_ZN9RectangleD0Ev
	.quad	_ZN13Parallelogram4areaEv
	.quad	_ZN13Parallelogram13circumferenceEv
	.size	_ZTV9Rectangle, 48

	.type	_ZTS9Rectangle,@object          # @_ZTS9Rectangle
	.section	.rodata._ZTS9Rectangle,"aG",@progbits,_ZTS9Rectangle,comdat
	.weak	_ZTS9Rectangle
_ZTS9Rectangle:
	.asciz	"9Rectangle"
	.size	_ZTS9Rectangle, 11

	.type	_ZTS13Parallelogram,@object     # @_ZTS13Parallelogram
	.section	.rodata._ZTS13Parallelogram,"aG",@progbits,_ZTS13Parallelogram,comdat
	.weak	_ZTS13Parallelogram
_ZTS13Parallelogram:
	.asciz	"13Parallelogram"
	.size	_ZTS13Parallelogram, 16

	.type	_ZTI13Parallelogram,@object     # @_ZTI13Parallelogram
	.section	.data.rel.ro._ZTI13Parallelogram,"aGw",@progbits,_ZTI13Parallelogram,comdat
	.weak	_ZTI13Parallelogram
	.p2align	3
_ZTI13Parallelogram:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS13Parallelogram
	.quad	_ZTI5Shape
	.size	_ZTI13Parallelogram, 24

	.type	_ZTI9Rectangle,@object          # @_ZTI9Rectangle
	.section	.data.rel.ro._ZTI9Rectangle,"aGw",@progbits,_ZTI9Rectangle,comdat
	.weak	_ZTI9Rectangle
	.p2align	3
_ZTI9Rectangle:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTS9Rectangle
	.quad	_ZTI13Parallelogram
	.size	_ZTI9Rectangle, 24

	.type	_ZTV13Parallelogram,@object     # @_ZTV13Parallelogram
	.section	.data.rel.ro._ZTV13Parallelogram,"aGw",@progbits,_ZTV13Parallelogram,comdat
	.weak	_ZTV13Parallelogram
	.p2align	3
_ZTV13Parallelogram:
	.quad	0
	.quad	_ZTI13Parallelogram
	.quad	_ZN13ParallelogramD2Ev
	.quad	_ZN13ParallelogramD0Ev
	.quad	_ZN13Parallelogram4areaEv
	.quad	_ZN13Parallelogram13circumferenceEv
	.size	_ZTV13Parallelogram, 48

	.type	_ZTV6Square,@object             # @_ZTV6Square
	.section	.data.rel.ro._ZTV6Square,"aGw",@progbits,_ZTV6Square,comdat
	.weak	_ZTV6Square
	.p2align	3
_ZTV6Square:
	.quad	0
	.quad	_ZTI6Square
	.quad	_ZN6SquareD2Ev
	.quad	_ZN6SquareD0Ev
	.quad	_ZN13Parallelogram4areaEv
	.quad	_ZN6Square13circumferenceEv
	.quad	-24
	.quad	_ZTI6Square
	.quad	_ZThn24_N6SquareD1Ev
	.quad	_ZThn24_N6SquareD0Ev
	.size	_ZTV6Square, 80

	.type	_ZTS6Square,@object             # @_ZTS6Square
	.section	.rodata._ZTS6Square,"aG",@progbits,_ZTS6Square,comdat
	.weak	_ZTS6Square
_ZTS6Square:
	.asciz	"6Square"
	.size	_ZTS6Square, 8

	.type	_ZTS11RegularNGon,@object       # @_ZTS11RegularNGon
	.section	.rodata._ZTS11RegularNGon,"aG",@progbits,_ZTS11RegularNGon,comdat
	.weak	_ZTS11RegularNGon
_ZTS11RegularNGon:
	.asciz	"11RegularNGon"
	.size	_ZTS11RegularNGon, 14

	.type	_ZTI11RegularNGon,@object       # @_ZTI11RegularNGon
	.section	.data.rel.ro._ZTI11RegularNGon,"aGw",@progbits,_ZTI11RegularNGon,comdat
	.weak	_ZTI11RegularNGon
	.p2align	3
_ZTI11RegularNGon:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTS11RegularNGon
	.size	_ZTI11RegularNGon, 16

	.type	_ZTI6Square,@object             # @_ZTI6Square
	.section	.data.rel.ro._ZTI6Square,"aGw",@progbits,_ZTI6Square,comdat
	.weak	_ZTI6Square
	.p2align	3
_ZTI6Square:
	.quad	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.quad	_ZTS6Square
	.long	0                               # 0x0
	.long	2                               # 0x2
	.quad	_ZTI9Rectangle
	.quad	2                               # 0x2
	.quad	_ZTI11RegularNGon
	.quad	6146                            # 0x1802
	.size	_ZTI6Square, 56

	.type	_ZTV11RegularNGon,@object       # @_ZTV11RegularNGon
	.section	.data.rel.ro._ZTV11RegularNGon,"aGw",@progbits,_ZTV11RegularNGon,comdat
	.weak	_ZTV11RegularNGon
	.p2align	3
_ZTV11RegularNGon:
	.quad	0
	.quad	_ZTI11RegularNGon
	.quad	_ZN11RegularNGonD2Ev
	.quad	_ZN11RegularNGonD0Ev
	.size	_ZTV11RegularNGon, 32

	.type	_ZTV8Triangle,@object           # @_ZTV8Triangle
	.section	.data.rel.ro._ZTV8Triangle,"aGw",@progbits,_ZTV8Triangle,comdat
	.weak	_ZTV8Triangle
	.p2align	3
_ZTV8Triangle:
	.quad	0
	.quad	_ZTI8Triangle
	.quad	_ZN8TriangleD2Ev
	.quad	_ZN8TriangleD0Ev
	.quad	_ZN8Triangle4areaEv
	.quad	_ZN8Triangle13circumferenceEv
	.quad	-16
	.quad	_ZTI8Triangle
	.quad	_ZThn16_N8TriangleD1Ev
	.quad	_ZThn16_N8TriangleD0Ev
	.size	_ZTV8Triangle, 80

	.type	_ZTS8Triangle,@object           # @_ZTS8Triangle
	.section	.rodata._ZTS8Triangle,"aG",@progbits,_ZTS8Triangle,comdat
	.weak	_ZTS8Triangle
_ZTS8Triangle:
	.asciz	"8Triangle"
	.size	_ZTS8Triangle, 10

	.type	_ZTI8Triangle,@object           # @_ZTI8Triangle
	.section	.data.rel.ro._ZTI8Triangle,"aGw",@progbits,_ZTI8Triangle,comdat
	.weak	_ZTI8Triangle
	.p2align	3
_ZTI8Triangle:
	.quad	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.quad	_ZTS8Triangle
	.long	0                               # 0x0
	.long	2                               # 0x2
	.quad	_ZTI5Shape
	.quad	2                               # 0x2
	.quad	_ZTI11RegularNGon
	.quad	4098                            # 0x1002
	.size	_ZTI8Triangle, 56

	.type	.L.str.20,@object               # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"TEST TEST TEST!"
	.size	.L.str.20, 16

	.type	_ZTV7Hexagon,@object            # @_ZTV7Hexagon
	.section	.data.rel.ro._ZTV7Hexagon,"aGw",@progbits,_ZTV7Hexagon,comdat
	.weak	_ZTV7Hexagon
	.p2align	3
_ZTV7Hexagon:
	.quad	0
	.quad	_ZTI7Hexagon
	.quad	_ZN7HexagonD2Ev
	.quad	_ZN7HexagonD0Ev
	.quad	_ZN7Hexagon4areaEv
	.quad	_ZN7Hexagon13circumferenceEv
	.quad	-16
	.quad	_ZTI7Hexagon
	.quad	_ZThn16_N7HexagonD1Ev
	.quad	_ZThn16_N7HexagonD0Ev
	.size	_ZTV7Hexagon, 80

	.type	_ZTS7Hexagon,@object            # @_ZTS7Hexagon
	.section	.rodata._ZTS7Hexagon,"aG",@progbits,_ZTS7Hexagon,comdat
	.weak	_ZTS7Hexagon
_ZTS7Hexagon:
	.asciz	"7Hexagon"
	.size	_ZTS7Hexagon, 9

	.type	_ZTI7Hexagon,@object            # @_ZTI7Hexagon
	.section	.data.rel.ro._ZTI7Hexagon,"aGw",@progbits,_ZTI7Hexagon,comdat
	.weak	_ZTI7Hexagon
	.p2align	3
_ZTI7Hexagon:
	.quad	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.quad	_ZTS7Hexagon
	.long	0                               # 0x0
	.long	2                               # 0x2
	.quad	_ZTI5Shape
	.quad	2                               # 0x2
	.quad	_ZTI11RegularNGon
	.quad	4098                            # 0x1002
	.size	_ZTI7Hexagon, 56

	.type	_ZTV8Pentagon,@object           # @_ZTV8Pentagon
	.section	.data.rel.ro._ZTV8Pentagon,"aGw",@progbits,_ZTV8Pentagon,comdat
	.weak	_ZTV8Pentagon
	.p2align	3
_ZTV8Pentagon:
	.quad	0
	.quad	_ZTI8Pentagon
	.quad	_ZN8PentagonD2Ev
	.quad	_ZN8PentagonD0Ev
	.quad	_ZN8Pentagon4areaEv
	.quad	_ZN8Pentagon13circumferenceEv
	.quad	-16
	.quad	_ZTI8Pentagon
	.quad	_ZThn16_N8PentagonD1Ev
	.quad	_ZThn16_N8PentagonD0Ev
	.size	_ZTV8Pentagon, 80

	.type	_ZTS8Pentagon,@object           # @_ZTS8Pentagon
	.section	.rodata._ZTS8Pentagon,"aG",@progbits,_ZTS8Pentagon,comdat
	.weak	_ZTS8Pentagon
_ZTS8Pentagon:
	.asciz	"8Pentagon"
	.size	_ZTS8Pentagon, 10

	.type	_ZTI8Pentagon,@object           # @_ZTI8Pentagon
	.section	.data.rel.ro._ZTI8Pentagon,"aGw",@progbits,_ZTI8Pentagon,comdat
	.weak	_ZTI8Pentagon
	.p2align	3
_ZTI8Pentagon:
	.quad	_ZTVN10__cxxabiv121__vmi_class_type_infoE+16
	.quad	_ZTS8Pentagon
	.long	0                               # 0x0
	.long	2                               # 0x2
	.quad	_ZTI5Shape
	.quad	2                               # 0x2
	.quad	_ZTI11RegularNGon
	.quad	4098                            # 0x1002
	.size	_ZTI8Pentagon, 56

	.type	.L.str.21,@object               # @.str.21
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.21:
	.asciz	"n should be 5 for a pentagon"
	.size	.L.str.21, 29

	.type	_ZTV17ShapeProgramError,@object # @_ZTV17ShapeProgramError
	.section	.data.rel.ro._ZTV17ShapeProgramError,"aGw",@progbits,_ZTV17ShapeProgramError,comdat
	.weak	_ZTV17ShapeProgramError
	.p2align	3
_ZTV17ShapeProgramError:
	.quad	0
	.quad	_ZTI17ShapeProgramError
	.quad	_ZN17ShapeProgramErrorD2Ev
	.quad	_ZN17ShapeProgramErrorD0Ev
	.quad	_ZNK17ShapeProgramError4whatEv
	.size	_ZTV17ShapeProgramError, 40

	.type	.L.str.22,@object               # @.str.22
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.22:
	.asciz	"ERROR CODE %d: %s"
	.size	.L.str.22, 18

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"Unit Square"
	.size	.L.str.23, 12

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"Unit Circle"
	.size	.L.str.24, 12

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_shapes.cpp
	.section	".linker-options","e",@llvm_linker_options
	.data
	.p2align	3
.L_ZTI17ShapeProgramError.DW.stub:
	.quad	_ZTI17ShapeProgramError
.L_ZTISt11logic_error.DW.stub:
	.quad	_ZTISt11logic_error
.L_ZTISt13runtime_error.DW.stub:
	.quad	_ZTISt13runtime_error
.L_ZTISt9exception.DW.stub:
	.quad	_ZTISt9exception
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"aGw",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"clang version 12.0.0 (Fedora 12.0.0-2.fc34)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __cxx_global_var_init
	.addrsig_sym __cxa_atexit
	.addrsig_sym _Z11createshapec
	.addrsig_sym _Znwm
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _ZdlPv
	.addrsig_sym _ZN6Object8set_nameEPKc
	.addrsig_sym __cxa_allocate_exception
	.addrsig_sym __cxa_free_exception
	.addrsig_sym __cxa_throw
	.addrsig_sym __cxx_global_var_init.8
	.addrsig_sym __cxx_global_var_init.9
	.addrsig_sym _Z14printshapedataP5Shape
	.addrsig_sym _ZN6Object4nameEv
	.addrsig_sym printf
	.addrsig_sym __cxa_begin_catch
	.addrsig_sym __cxa_end_catch
	.addrsig_sym __clang_call_terminate
	.addrsig_sym _ZSt9terminatev
	.addrsig_sym __cxx_global_var_init.13
	.addrsig_sym strlen
	.addrsig_sym __dynamic_cast
	.addrsig_sym free
	.addrsig_sym _ZSt3powIiiEN9__gnu_cxx11__promote_2IT_T0_NS0_9__promoteIS2_Xsr3std12__is_integerIS2_EE7__valueEE6__typeENS4_IS3_Xsr3std12__is_integerIS3_EE7__valueEE6__typeEE6__typeES2_S3_
	.addrsig_sym pow
	.addrsig_sym calloc
	.addrsig_sym strcpy
	.addrsig_sym sqrt
	.addrsig_sym _ZSt4sqrtIiEN9__gnu_cxx11__enable_ifIXsr12__is_integerIT_EE7__valueEdE6__typeES2_
	.addrsig_sym snprintf
	.addrsig_sym _GLOBAL__sub_I_shapes.cpp
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZTVN10__cxxabiv121__vmi_class_type_infoE
	.addrsig_sym _ZTS17ShapeProgramError
	.addrsig_sym _ZTISt13runtime_error
	.addrsig_sym _ZTVN10__cxxabiv117__class_type_infoE
	.addrsig_sym _ZTS13ExceptionCode
	.addrsig_sym _ZTI13ExceptionCode
	.addrsig_sym _ZTI17ShapeProgramError
	.addrsig_sym unitCircle
	.addrsig_sym unitSquare
	.addrsig_sym _ZTISt11logic_error
	.addrsig_sym _ZTISt9exception
	.addrsig_sym trigger
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS6Circle
	.addrsig_sym _ZTS5Shape
	.addrsig_sym _ZTS6Object
	.addrsig_sym _ZTI6Object
	.addrsig_sym _ZTI5Shape
	.addrsig_sym _ZTI6Circle
	.addrsig_sym _ZTS9Rectangle
	.addrsig_sym _ZTS13Parallelogram
	.addrsig_sym _ZTI13Parallelogram
	.addrsig_sym _ZTI9Rectangle
	.addrsig_sym _ZTS6Square
	.addrsig_sym _ZTS11RegularNGon
	.addrsig_sym _ZTI11RegularNGon
	.addrsig_sym _ZTI6Square
	.addrsig_sym _ZTS8Triangle
	.addrsig_sym _ZTI8Triangle
	.addrsig_sym _ZTS7Hexagon
	.addrsig_sym _ZTI7Hexagon
	.addrsig_sym _ZTS8Pentagon
	.addrsig_sym _ZTI8Pentagon
	.addrsig_sym _ZTISt16invalid_argument
