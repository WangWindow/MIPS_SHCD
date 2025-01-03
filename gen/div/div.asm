# 加载操作数
addi $t0, $zero, 6       # $t0 = 6
addi $t1, $zero, 2       # $t1 = 2

# 乘法操作
divu $t0, $t1  # {Hi, Lo} = $t0 * $t1
mflo $t2
