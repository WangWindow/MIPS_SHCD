    # 初始化
    addi $t0, $t0, 0                 # $t0 = 0 (索引)
    addi $t1, $t1, 0                 # $t1 = fib(0)
    addi $t2, $t2, 1                 # $t2 = fib(1)
    la $t3, fib               # $t3 = fib 数组的基地址
    lw $t4, n                 # $t4 = n

    # 存储 fib(0) 和 fib(1)
    sw $t1, 0($t3)            # fib[0] = 0
    addi $t0, $t0, 4          # 索引加 4
    sw $t2, 0($t3)            # fib[1] = 1
    addi $t0, $t0, 4          # 索引加 4

    # 计算斐波那契数列
fib_loop:
    beq $t0, $t4, end         # 如果索引等于 n，跳转到 end
    lw $t5, -8($t3)           # $t5 = fib[i-2]
    lw $t6, -4($t3)           # $t6 = fib[i-1]
    add $t7, $t5, $t6         # $t7 = fib[i] = fib[i-1] + fib[i-2]
    sw $t7, 0($t3)            # 存储 fib[i]
    addi $t3, $t3, 4          # 索引加 4
    addi $t0, $t0, 1          # i++
    j fib_loop                # 跳转到 fib_loop

    # 结束
    syscall                   # 调用系统服务
