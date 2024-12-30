'''
FilePath: bin2hex.py
Author: WangWindow 1598593280@qq.com
Date: 2024-12-30 17:20:59
LastEditors: WangWindow
LastEditTime: 2024-12-30 17:21:05
2024 by WangWindow, All Rights Reserved.
Descripttion:
'''
def binary_to_hex(binary_str):
    return hex(int(binary_str, 2))[2:].zfill(8).upper()

def convert_file(input_file, output_file):
    with open(input_file, 'r') as infile, open(output_file, 'w') as outfile:
        for line in infile:
            binary_str = line.strip()
            hex_str = binary_to_hex(binary_str)
            outfile.write(hex_str + '\n')

if __name__ == "__main__":
    input_file = 'input.txt'
    output_file = 'output.txt'
    convert_file(input_file, output_file)
