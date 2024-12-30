'''
FilePath: bin2.coe.py
Author: WangWindow 1598593280@qq.com
Date: 2024-12-28 19:48:50
LastEditors: WangWindow
LastEditTime: 2024-12-28 20:02:59
2024 by WangWindow, All Rights Reserved.
Descripttion: 从文本文件中的二进制指令生成指定宽度和深度的COE文件
'''
def read_bin_file(input_file):
    bin_lines = []
    with open(input_file, 'r', encoding='utf-8') as f:
        for line in f:
            line = line.strip()
            if line:
                bin_lines.append(line)
    return bin_lines

def write_coe_file(bin_code, output_file):
    with open(output_file, 'w', encoding='utf-8') as f:
        f.write('memory_initialization_radix=2;\n')
        f.write('memory_initialization_vector=\n')
        for line in bin_code:
            f.write(line + ',\n')
        f.write('00000000000000000000000000000000;\n')

def main():
    input_file = 'input.txt'      # 输入文件
    output_file = 'output.coe' # 输出文件
    bin_code = read_bin_file(input_file)
    write_coe_file(bin_code, output_file)

if __name__ == '__main__':
    main()
