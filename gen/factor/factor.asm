# 计算 5 的阶乘

    addi $t0, $zero, 6  # 初始化，$t0中存放要计算的数6
    addi $t1, $zero, 1  # $t1中保存阶乘结果，初始为1
    addi $t2, $zero, 1  # $t2为循环变量，初始为1

loop_cond:
    # 如果 $t2 != $t0，则进入循环，否则跳转到end_factor
    bne  $t2, $t0, do_factor
    j    done

do_factor:
    # $t1 = $t1 * $t2
    mult $t1, $t2
    mflo $t1

    addi $t2, $t2, 1    # 循环变量自增
    j    loop_cond

done:
    # 程序结束，保持循环停留
    j    done
