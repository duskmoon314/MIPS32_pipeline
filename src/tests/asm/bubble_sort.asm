.text
    j   to_user_mode
    j   interrupt
    j   exception

to_user_mode:
    la  $ra,    main
    nop
    jr  $ra

main:
    # load SysTick => count clocks
    li      $s7, 0x40000000         # $s7 0x40000000
    lw      $s6, 20($s7)            # $s6 (0x40000014)

    # call bubble sort
    ori     $a0, $0, 0              # $a0 0x00000000 start addr
    ori     $a1, $0, 127            # $a1 n
    jal     bubble_sort

    # load SysTick
    lw      $s5, 20($s7)
    sub     $s4, $s5, $s6

    # lower 16 bits
    ori     $t0, $0, 0xF
    and     $s0, $t0, $s4
    srl     $s4, $s4, 4
    and     $s1, $t0, $s4
    srl     $s4, $s4, 4
    and     $s2, $t0, $s4
    srl     $s4, $s4, 4
    and     $s3, $t0, $s4

    # use led
    sw      $s4, 12($s7)

    ori     $s6, $0, 0

    # Timer interrupt
    subi    $t0, $0, 0x000F
    sw      $t0, 0($s7)             # TH = 0xFFFFFFF1
    subi    $t0, $0, 1
    sw      $t0, 4($s7)             # TL = 0xFFFFFFFF
    ori     $t0, $0, 3
    sw      $t0, 8($s7)

loop:
    j       loop

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

interrupt:
    ori     $t0, $0, 1
    sw      $t0, 8($s7)

    la      $t1, show
    lui     $t2, 0x8000
    sll     $t0, $s6, 2
    add     $t0, $t0, $t1
    add     $t0, $t0, $t2
    nop
    jr      $t0

show:
    j       show_0
    j       show_1
    j       show_2
    j       show_3

show_0:
    li      $t0, 0x00000100
    move    $t2, $s0
    j       BCD_switch

show_1:
    li      $t0, 0x00000200
    move    $t2, $s1
    j       BCD_switch

show_2:
    li      $t0, 0x00000400
    move    $t2, $s2
    j       BCD_switch

show_3:
    li      $t0, 0x00000800
    move    $t2, $s3
    j       BCD_switch

BCD_switch:
    la      $t1, BCD
    lui     $t3, 0x8000
    sll     $t4, $t2, 2
    add     $t4, $t4, $t1
    add     $t4, $t4, $t3
    nop
    jr      $t4

BCD:
    j       bcd_0
    j       bcd_1
    j       bcd_2
    j       bcd_3
    j       bcd_4
    j       bcd_5
    j       bcd_6
    j       bcd_7
    j       bcd_8
    j       bcd_9
    j       bcd_A
    j       bcd_B
    j       bcd_C
    j       bcd_D
    j       bcd_E
    j       bcd_F

bcd_0:
    li      $t1, 0x3F
    add     $t0, $t0, $t1
    j       interruptExit
bcd_1:
    li      $t1, 0x6
    add     $t0, $t0, $t1
    j       interruptExit
bcd_2:
    li      $t1, 0x5B
    add     $t0, $t0, $t1
    j       interruptExit
bcd_3:
    li      $t1, 0x4F
    add     $t0, $t0, $t1
    j       interruptExit
bcd_4:
    li      $t1, 0x66
    add     $t0, $t0, $t1
    j       interruptExit
bcd_5:
    li      $t1, 0x6D
    add     $t0, $t0, $t1
    j       interruptExit
bcd_6:
    li      $t1, 0x7D
    add     $t0, $t0, $t1
    j       interruptExit
bcd_7:
    li      $t1, 0x7
    add     $t0, $t0, $t1
    j       interruptExit
bcd_8:
    li      $t1, 0x7F
    add     $t0, $t0, $t1
    j       interruptExit
bcd_9:
    li      $t1, 0x6F
    add     $t0, $t0, $t1
    j       interruptExit
bcd_A:
    li      $t1, 0x77
    add     $t0, $t0, $t1
    j       interruptExit
bcd_B:
    li      $t1, 0x7C
    add     $t0, $t0, $t1
    j       interruptExit
bcd_C:
    li      $t1, 0x39
    add     $t0, $t0, $t1
    j       interruptExit
bcd_D:
    li      $t1, 0x5E
    add     $t0, $t0, $t1
    j       interruptExit
bcd_E:
    li      $t1, 0x79
    add     $t0, $t0, $t1
    j       interruptExit
bcd_F:
    li      $t1, 0x71
    add     $t0, $t0, $t1
    j       interruptExit

interruptExit:
    addi    $s6, $s6, 1
    andi    $s6, $s6, 3

    sw      $t0, 16($s7)
    li      $t0, 3
    sw      $t0, 8($s7)            # TCon = 3
    jr      $k0

exception:
    j       exception

