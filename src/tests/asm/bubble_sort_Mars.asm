.data
    input_file: .asciiz "a.in"
    output_file: .asciiz "a.out"
    .align 4
    in_buff: .space 4004
    # out_buff: .space 4000

.text
main:
    la		$a0, input_file		# 
    li		$a1, 0		# $a1 = 0
    li		$a2, 0		# $a2 = 0
    li		$v0, 13		# $v0 = 13
    syscall             # read input_file
    move 	$a0, $v0		# $a0 = $v0
    la		$a1, in_buff		# 
    li		$a2, 4004		# $a2 = 4004
    
    li		$v0, 14		# $v0 = 14
    syscall             # read to in_buff
    li		$v0, 16		# $v0 = 16
    syscall             # close input_file

    la		$s0, in_buff		# 
    move	$a0, $s0			# $a0 = $s0 + 4
    li		$a1, 128
    jal		bubble_sort				

    la		$a0, output_file		# 
    li		$a1, 1		# $a1 = 1
    li		$a2, 0		# $a2 = 0
    li		$v0, 13		# $v0 = 13
    syscall             # open output_file
    move 	$a0, $v0		# $a0 = $v0
    la		$a1, 0($s0)		# 
    li      $a2, 512
    li		$v0, 15		# $v0 = 15
    syscall             # write to output_file
    li		$v0, 16		# $v0 = 16
    syscall             # close output_file

    # return 0
    li		$a0, 0		# $a0 = 0
    li		$v0, 17		# $v0 = 17
    syscall

bubble_sort:
    addi    $sp, $sp, -12
    sw      $ra, 0($sp)
    sw      $s1, 4($sp)
    sw      $s0, 8($sp)

    move    $s0, $a0                # array addr
    move    $s1, $a1                # n

    move    $s2, $0                 # sorted = false

L0:
    bne     $s2, $0, L0end
    ori     $s2, 0x1

    li      $t0, 1
L1:
    bge     $t0, $s1, L1end

    sll     $t1, $t0, 2
    add     $t1, $t1, $s0
    lw      $t2, 0($t1)
    lw      $t3, -4($t1)
    ble     $t3, $t2, else
    sw      $t3, 0($t1)
    sw      $t2, -4($t1)
    move    $s2, $0
else:
    addi    $t0, $t0, 1
    j       L1
L1end:
    subi    $s1, $s1, 1
    j       L0
L0end:

    lw      $s0, 8($sp)
    lw      $s1, 4($sp)
    lw      $ra, 0($sp)
    addi    $sp, $sp, 12

    move    $v0, $0
    nop
    jr      $ra