    # 初始化，$t0中存放要计算的数
    addi $t0, $zero, 20       # N = 20  # 设置要计算的斐波那契数的位置

    # 特殊情况处理
    beq  $t0, $zero, fib_zero # 如果 n == 0，跳转到 fib_zero
    addi $t1, $zero, 1        # 初始化 $t1 = 1 (Fib1)
    bne  $t0, $zero, check_n1

fib_zero:
    addi $t1, $zero, 0        # 如果 n == 0，结果 $t1 = 0
    j    done

check_n1:
    addi $t2, $zero, 1        # 初始化 $t2 = 1 (Fib2)
    beq  $t0, $t2, done        # 如果 n == 1，跳转到 done

    # 初始化循环变量
    addi $t3, $zero, 2        # $t3 = 2  (循环计数器)

loop:
    # 计算下一个斐波那契数: $t4 = $t1 + $t2
    add  $t4, $t1, $t2        # $t4 = Fib[i-2] + Fib[i-1]

    # 更新斐波那契数
    add  $t1, $t2, $zero      # $t1 = Fib[i-1]
    add  $t2, $t4, $zero      # $t2 = Fib[i]

    # 增加计数器
    addi $t3, $t3, 1          # $t3 = $t3 + 1

    # 检查是否达到 n
    bne  $t3, $t0, loop       # 如果 $t3 != $t0，继续循环

done:
    # 将结果存储在 $t1 中
    add  $t1, $t2, $zero      # $t1 = Fib[n]

    # 程序结束，保持循环停留
    j    done
