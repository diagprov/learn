	.text
	.intel_syntax noprefix
	.file	"except.cpp"
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
	.globl	_Z13do_task_inneriPKc           # -- Begin function _Z13do_task_inneriPKc
	.p2align	4, 0x90
	.type	_Z13do_task_inneriPKc,@function
_Z13do_task_inneriPKc:                  # @_Z13do_task_inneriPKc
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
	sub	rsp, 1072
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 16], rsi
	mov	eax, dword ptr [rbp - 4]
	mov	ecx, 5
	cdq
	idiv	ecx
	cmp	edx, 0
	jne	.LBB1_4
# %bb.1:
	mov	rcx, qword ptr [rbp - 16]
	lea	rdx, [rip + .L.str]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	lea	rdi, [rbp - 1024]
	mov	qword ptr [rbp - 1056], rdi     # 8-byte Spill
	mov	esi, 999
	call	snprintf@PLT
	mov	edi, 16
	call	__cxa_allocate_exception@PLT
	mov	rsi, qword ptr [rbp - 1056]     # 8-byte Reload
	mov	rdi, rax
	mov	rax, rdi
	mov	qword ptr [rbp - 1048], rax     # 8-byte Spill
.Ltmp3:
	call	_ZNSt11logic_errorC1EPKc@PLT
.Ltmp4:
	jmp	.LBB1_2
.LBB1_2:
	mov	rdi, qword ptr [rbp - 1048]     # 8-byte Reload
	mov	rsi, qword ptr [rip + _ZTISt11logic_error@GOTPCREL]
	mov	rdx, qword ptr [rip + _ZNSt11logic_errorD1Ev@GOTPCREL]
	call	__cxa_throw@PLT
.LBB1_3:
.Ltmp5:
	mov	rdi, qword ptr [rbp - 1048]     # 8-byte Reload
	mov	rcx, rax
	mov	eax, edx
	mov	qword ptr [rbp - 1032], rcx
	mov	dword ptr [rbp - 1036], eax
	call	__cxa_free_exception@PLT
	jmp	.LBB1_11
.LBB1_4:
	mov	eax, dword ptr [rbp - 4]
	mov	ecx, 2
	cdq
	idiv	ecx
	cmp	edx, 1
	jne	.LBB1_8
# %bb.5:
	mov	edi, 16
	call	__cxa_allocate_exception@PLT
	mov	rdi, rax
	mov	rax, rdi
	mov	qword ptr [rbp - 1064], rax     # 8-byte Spill
.Ltmp0:
	lea	rsi, [rip + .L.str.1]
	call	_ZNSt13runtime_errorC1EPKc@PLT
.Ltmp1:
	jmp	.LBB1_6
.LBB1_6:
	mov	rdi, qword ptr [rbp - 1064]     # 8-byte Reload
	mov	rsi, qword ptr [rip + _ZTISt13runtime_error@GOTPCREL]
	mov	rdx, qword ptr [rip + _ZNSt13runtime_errorD1Ev@GOTPCREL]
	call	__cxa_throw@PLT
.LBB1_7:
.Ltmp2:
	mov	rdi, qword ptr [rbp - 1064]     # 8-byte Reload
	mov	rcx, rax
	mov	eax, edx
	mov	qword ptr [rbp - 1032], rcx
	mov	dword ptr [rbp - 1036], eax
	call	__cxa_free_exception@PLT
	jmp	.LBB1_11
.LBB1_8:
	lea	rdi, [rip + .L.str.2]
	mov	al, 0
	call	printf@PLT
# %bb.9:
	jmp	.LBB1_10
.LBB1_10:
	add	rsp, 1072
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.LBB1_11:
	.cfi_def_cfa rbp, 16
	mov	rdi, qword ptr [rbp - 1032]
	call	_Unwind_Resume@PLT
.Lfunc_end1:
	.size	_Z13do_task_inneriPKc, .Lfunc_end1-_Z13do_task_inneriPKc
	.cfi_endproc
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
	.uleb128 .Ltmp3-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp0-.Ltmp4                  #   Call between .Ltmp4 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Lfunc_end1-.Ltmp1             #   Call between .Ltmp1 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2
                                        # -- End function
	.text
	.globl	_Z7do_taskiPPcS0_               # -- Begin function _Z7do_taskiPPcS0_
	.p2align	4, 0x90
	.type	_Z7do_taskiPPcS0_,@function
_Z7do_taskiPPcS0_:                      # @_Z7do_taskiPPcS0_
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 608
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	mov	qword ptr [rbp - 32], 256
	mov	dword ptr [rbp - 36], 0
	lea	rdi, [rbp - 304]
	xor	esi, esi
	mov	edx, 257
	call	memset@PLT
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	mov	rax, qword ptr [rbp - 24]
	mov	ecx, dword ptr [rbp - 36]
	mov	edx, ecx
	add	edx, 1
	mov	dword ptr [rbp - 36], edx
	movsxd	rcx, ecx
	cmp	qword ptr [rax + 8*rcx], 0
	je	.LBB2_9
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	lea	rdi, [rbp - 576]
	xor	esi, esi
	mov	edx, 257
	call	memset@PLT
	mov	rax, qword ptr [rbp - 24]
	mov	ecx, dword ptr [rbp - 36]
	sub	ecx, 1
	movsxd	rcx, ecx
	mov	rax, qword ptr [rax + 8*rcx]
	mov	qword ptr [rbp - 584], rax
	mov	rdi, qword ptr [rbp - 584]
	call	strlen@PLT
	mov	qword ptr [rbp - 592], rax
	mov	rdi, qword ptr [rbp - 584]
	mov	esi, 61
	call	strchr@PLT
	mov	qword ptr [rbp - 600], rax
	cmp	qword ptr [rbp - 600], 0
	jne	.LBB2_4
# %bb.3:                                #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_1
.LBB2_4:                                #   in Loop: Header=BB2_1 Depth=1
	mov	rax, qword ptr [rbp - 600]
	mov	rcx, qword ptr [rbp - 584]
	sub	rax, rcx
	mov	qword ptr [rbp - 608], rax
	mov	esi, dword ptr [rbp - 36]
	sub	esi, 1
	mov	rdx, qword ptr [rbp - 584]
	lea	rdi, [rip + .L.str.3]
	mov	al, 0
	call	printf@PLT
	cmp	qword ptr [rbp - 592], 256
	jbe	.LBB2_6
# %bb.5:                                #   in Loop: Header=BB2_1 Depth=1
	mov	qword ptr [rbp - 592], 256
.LBB2_6:                                #   in Loop: Header=BB2_1 Depth=1
	lea	rdi, [rbp - 576]
	mov	rsi, qword ptr [rbp - 584]
	mov	rdx, qword ptr [rbp - 608]
	sub	rdx, 1
	call	strncpy@PLT
	lea	rdi, [rbp - 576]
	lea	rsi, [rip + .L.str.4]
	call	strcmp@PLT
	cmp	eax, 0
	je	.LBB2_8
# %bb.7:                                #   in Loop: Header=BB2_1 Depth=1
	lea	rdi, [rbp - 304]
	mov	rsi, qword ptr [rbp - 600]
	add	rsi, 1
	mov	rdx, qword ptr [rbp - 592]
	sub	rdx, qword ptr [rbp - 608]
	sub	rdx, 1
	call	strncpy@PLT
.LBB2_8:                                #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_1
.LBB2_9:
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rbp - 304]
	call	_Z13do_task_inneriPKc
	add	rsp, 608
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end2:
	.size	_Z7do_taskiPPcS0_, .Lfunc_end2-_Z7do_taskiPPcS0_
	.cfi_endproc
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
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
	sub	rsp, 80
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	mov	qword ptr [rbp - 24], rdx
	cmp	dword ptr [rbp - 8], 2
	jge	.LBB3_2
# %bb.1:
	lea	rdi, [rip + .L.str.5]
	mov	al, 0
	call	printf@PLT
	mov	dword ptr [rbp - 4], -1
	jmp	.LBB3_20
.LBB3_2:
	mov	dword ptr [rbp - 28], 0
.LBB3_3:                                # =>This Inner Loop Header: Depth=1
	mov	eax, dword ptr [rbp - 28]
	cmp	eax, dword ptr [rbp - 8]
	jge	.LBB3_6
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=1
	mov	esi, dword ptr [rbp - 28]
	mov	rax, qword ptr [rbp - 16]
	movsxd	rcx, dword ptr [rbp - 28]
	mov	rdx, qword ptr [rax + 8*rcx]
	lea	rdi, [rip + .L.str.6]
	mov	al, 0
	call	printf@PLT
# %bb.5:                                #   in Loop: Header=BB3_3 Depth=1
	mov	eax, dword ptr [rbp - 28]
	add	eax, 1
	mov	dword ptr [rbp - 28], eax
	jmp	.LBB3_3
.LBB3_6:
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 16]
	mov	rdx, qword ptr [rbp - 24]
.Ltmp6:
	call	_Z7do_taskiPPcS0_
.Ltmp7:
	jmp	.LBB3_7
.LBB3_7:
	jmp	.LBB3_12
.LBB3_8:
.Ltmp8:
	mov	rcx, rax
	mov	eax, edx
	mov	qword ptr [rbp - 40], rcx
	mov	dword ptr [rbp - 44], eax
# %bb.9:
	mov	eax, dword ptr [rbp - 44]
	mov	dword ptr [rbp - 68], eax       # 4-byte Spill
	mov	ecx, 2
	cmp	eax, ecx
	jne	.LBB3_13
# %bb.10:
	mov	rdi, qword ptr [rbp - 40]
	call	__cxa_begin_catch@PLT
	mov	qword ptr [rbp - 64], rax
	mov	rdi, qword ptr [rbp - 64]
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax + 16]
	call	rax
	mov	rsi, rax
.Ltmp14:
	lea	rdi, [rip + .L.str.8]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	call	printf@PLT
.Ltmp15:
	jmp	.LBB3_11
.LBB3_11:
	call	__cxa_end_catch@PLT
.LBB3_12:
	mov	dword ptr [rbp - 4], 0
	jmp	.LBB3_20
.LBB3_13:
	mov	eax, dword ptr [rbp - 68]       # 4-byte Reload
	mov	ecx, 1
	cmp	eax, ecx
	jne	.LBB3_21
# %bb.14:
	mov	rdi, qword ptr [rbp - 40]
	call	__cxa_begin_catch@PLT
	mov	qword ptr [rbp - 56], rax
	mov	rdi, qword ptr [rbp - 56]
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax + 16]
	call	rax
	mov	rsi, rax
.Ltmp9:
	lea	rdi, [rip + .L.str.7]
	xor	eax, eax
                                        # kill: def $al killed $al killed $eax
	call	printf@PLT
.Ltmp10:
	jmp	.LBB3_15
.LBB3_15:
	call	__cxa_end_catch@PLT
	jmp	.LBB3_12
.LBB3_16:
.Ltmp11:
	mov	rcx, rax
	mov	eax, edx
	mov	qword ptr [rbp - 40], rcx
	mov	dword ptr [rbp - 44], eax
.Ltmp12:
	call	__cxa_end_catch@PLT
.Ltmp13:
	jmp	.LBB3_17
.LBB3_17:
	jmp	.LBB3_21
.LBB3_18:
.Ltmp16:
	mov	rcx, rax
	mov	eax, edx
	mov	qword ptr [rbp - 40], rcx
	mov	dword ptr [rbp - 44], eax
.Ltmp17:
	call	__cxa_end_catch@PLT
.Ltmp18:
	jmp	.LBB3_19
.LBB3_19:
	jmp	.LBB3_21
.LBB3_20:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 80
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.LBB3_21:
	.cfi_def_cfa rbp, 16
	mov	rdi, qword ptr [rbp - 40]
	call	_Unwind_Resume@PLT
.LBB3_22:
.Ltmp19:
	mov	rdi, rax
                                        # kill: def $eax killed $edx killed $rdx
	call	__clang_call_terminate
.Lfunc_end3:
	.size	main, .Lfunc_end3-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table3:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp6-.Lfunc_begin1           #   Call between .Lfunc_begin1 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin1           #     jumps to .Ltmp8
	.byte	3                               #   On action: 2
	.uleb128 .Ltmp7-.Lfunc_begin1           # >> Call Site 3 <<
	.uleb128 .Ltmp14-.Ltmp7                 #   Call between .Ltmp7 and .Ltmp14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp15-.Ltmp14                #   Call between .Ltmp14 and .Ltmp15
	.uleb128 .Ltmp16-.Lfunc_begin1          #     jumps to .Ltmp16
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp9-.Ltmp15                 #   Call between .Ltmp15 and .Ltmp9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin1           # >> Call Site 6 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin1          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp12-.Ltmp10                #   Call between .Ltmp10 and .Ltmp12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Ltmp18-.Ltmp12                #   Call between .Ltmp12 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin1          #     jumps to .Ltmp19
	.byte	5                               #   On action: 3
	.uleb128 .Ltmp18-.Lfunc_begin1          # >> Call Site 9 <<
	.uleb128 .Lfunc_end3-.Ltmp18            #   Call between .Ltmp18 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.byte	2                               # >> Action Record 2 <<
                                        #   Catch TypeInfo 2
	.byte	125                             #   Continue to action 1
	.byte	3                               # >> Action Record 3 <<
                                        #   Catch TypeInfo 3
	.byte	0                               #   No further actions
	.p2align	2
                                        # >> Catch TypeInfos <<
	.long	0                               # TypeInfo 3
.Ltmp20:                                # TypeInfo 2
	.long	.L_ZTISt11logic_error.DW.stub-.Ltmp20
.Ltmp21:                                # TypeInfo 1
	.long	.L_ZTISt13runtime_error.DW.stub-.Ltmp21
.Lttbase0:
	.p2align	2
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
.Lfunc_end4:
	.size	__clang_call_terminate, .Lfunc_end4-__clang_call_terminate
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90                         # -- Begin function _GLOBAL__sub_I_except.cpp
	.type	_GLOBAL__sub_I_except.cpp,@function
_GLOBAL__sub_I_except.cpp:              # @_GLOBAL__sub_I_except.cpp
	.cfi_startproc
# %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	call	__cxx_global_var_init
	pop	rbp
	.cfi_def_cfa rsp, 8
	ret
.Lfunc_end5:
	.size	_GLOBAL__sub_I_except.cpp, .Lfunc_end5-_GLOBAL__sub_I_except.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object          # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Number of Arguments divisble by 5! %s"
	.size	.L.str, 38

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"odd number of arguments"
	.size	.L.str.1, 24

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Not odd and not divisible by 5"
	.size	.L.str.2, 31

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Env %d: %s\n"
	.size	.L.str.3, 12

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"VTEST"
	.size	.L.str.4, 6

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Not enough arguments.\n"
	.size	.L.str.5, 23

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Argument %d: %s\n"
	.size	.L.str.6, 17

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Runtime Error: %s"
	.size	.L.str.7, 18

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Logic Error: %s"
	.size	.L.str.8, 16

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_except.cpp
	.section	".linker-options","e",@llvm_linker_options
	.data
	.p2align	3
.L_ZTISt11logic_error.DW.stub:
	.quad	_ZTISt11logic_error
.L_ZTISt13runtime_error.DW.stub:
	.quad	_ZTISt13runtime_error
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"aGw",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"clang version 13.0.0 (Fedora 13.0.0-3.fc35)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __cxx_global_var_init
	.addrsig_sym __cxa_atexit
	.addrsig_sym _Z13do_task_inneriPKc
	.addrsig_sym snprintf
	.addrsig_sym __cxa_allocate_exception
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym __cxa_free_exception
	.addrsig_sym __cxa_throw
	.addrsig_sym printf
	.addrsig_sym _Z7do_taskiPPcS0_
	.addrsig_sym strlen
	.addrsig_sym strchr
	.addrsig_sym strncpy
	.addrsig_sym strcmp
	.addrsig_sym __cxa_begin_catch
	.addrsig_sym __cxa_end_catch
	.addrsig_sym __clang_call_terminate
	.addrsig_sym _ZSt9terminatev
	.addrsig_sym _GLOBAL__sub_I_except.cpp
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZStL8__ioinit
	.addrsig_sym __dso_handle
	.addrsig_sym _ZTISt11logic_error
	.addrsig_sym _ZTISt13runtime_error
