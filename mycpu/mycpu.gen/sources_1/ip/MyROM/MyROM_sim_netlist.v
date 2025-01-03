// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Fri Jan  3 15:04:37 2025
// Host        : XIAOXIN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim e:/MIPS_SHCD/mycpu/mycpu.gen/sources_1/ip/MyROM/MyROM_sim_netlist.v
// Design      : MyROM
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "MyROM,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module MyROM
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [31:0]douta;
  wire ena;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.375199 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "MyROM.mem" *) 
  (* C_INIT_FILE_NAME = "MyROM.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  MyROM_blk_mem_gen_v8_4_8 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RSqbsRZSIb+QlYJMfFv1T7uHQ7PiCEXQkl687MHGm2LgPB15GIYcPmqKUSXgtkLsIFes91PTAyyB
9H9cyY4ZUxedcRg/9ZOB5pm3zPqAbcvGPmg1ivMhr/MlS19t5lYKM2tQo+0Yd+arJXlVZu2BMnvn
+I3G9t9tJuWUIWKjI+I=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VRSQ05ZaB6bIhFIQ823mTvlJaG9+5iW5C3+KxGjq0sq9ziCshKOLpOGPDMmOWDqA4uBaxC5IKISr
w8+A8mqbYjXo5m1g8sGjNaETS0HKJsK+l5Y++tN4IEUs+DwxgrPR/+LWtChuOzVkfC7BG3LVUEMj
zM3GAyGcXGJ3sdBItZAfsevyiy7kr4Fw+nk2hWytGteu1NZk3VzPE7KQHLkOlHBPXf6P0j8LpKcr
2oNDgQ/WaEmg6OOvFeJuaWDaee8Sn6wKP/caMyoGdSeczsPtRrJeoSRlbNHlxhCv7zg+Cn2AgwrR
PTqGsMrkhv9U0sq+waS0CmwChsk4WB7RspGYUg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
tNziOjCznlvIl4dadmB9r23Duf+HQHWOuHmupEU3PJxrazHVtZdNKspG9sRXhF9mjbpnSiKYCdFK
Jr9W/dxUid36faFIPKQazVTuOiE0hkzVQAGpYxXjT/ITB/9EFBvgvP5L3EAhHv32x6MA1vkFSI7x
HrZ09YNFEF6T7DPTZE4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QCYfxgkUHlX1cre1q9aS3sVDIOX36YBK4ZwJXAVUwA6f1OQ77XibjpWJHt5FK9F0PcYp/j21pqzO
BRdkDcFLVAjxER4J5t5iMVhoeMk+3fpiKfYrm4WFl1ygsJsfFJP0jqO1OkjC8iFBtm3n6b7CTl1o
cjBbcBp8UgW6E8rf5inXA0dRqybnyxKJSnMFYLinvpVU6QEc4OKO7mi/i/s9p/efiP+CdQf0yDRU
Fw7o7x0D7tjBv943g5L+4wGZ2JYU+ISqn4Ajxy/bWTTJDe6T/15evhngS61MC8Xjamzc4YLZBP8o
ShfSLoeZeO+Hk5n3xzJRghM0DQ6Sj7NqXFY68w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Uy8FDDy3dZQGAnMQV0HBesEs+/oZdaq35Kj1PGhy9J/+EBZm0nhhQgYtku8tWABW2jKAC1GtNTvo
uReQyr1hteMxTbD5OIuqv86eb1hXZVENlZ7ichG8auUjkeHAkaSYNbHOuDLIhSqHEL67XbcZ9zPG
1JOY3+VONSww0KYPcQbGSo/2DaC5C0Y+mZODRfJ4+b0WXjce6UaJetilBc3VtqqmodIM2d3HDawF
R0xVJfHj86rXmUkY+SNUw60zsV6raCY6G3k/rXpei1d6zn8tCThkKG5fwiWY8zA7kRdTFIlVKP9h
fb6kfzRBRT/BgVQ8d4RgEcEVV8m3u/Mf4KIlTw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Pk1GeRlkUK9lt6DVXYVdtOABlzDEWQDcBsP/p+Wo5HaglDLG5b8gk08xTP3IcJ1RKcfuARPMGO2s
/VqFbnVADV90T1rhjIuWMcBnzYQK/ALUvwv11Uju9Gn0fvPIz52l3QBnpjHI1nlsFB7WeqkzVfHZ
tg9gO9bPHjHLjVd9BzH6McrEWY5RkZ0UBy0Fmh/SownJX1b0YGE7LdwKydEMEpyvb28bwTOwfEv/
4RtsfYtEvTjo6e1ZBm66D9IQmKUu32wzTfn5bFZHdyjZg6+HcTzvHMtQX2+AggXfP6FsO2/83qkb
0bfj226fnLhr32dJxtsaJS5OR63GYtzDJ05ITA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LCfWqKmUoUSVOTKNAl5p8n1hfz7SMU2kDOUMBjsDncgSFqiu2zUy1I6GSDrVnF/2umJG5/mWcpvi
rQaFJOlrJ8DNctSuavdlopRAwTMsVi6dAlNGrAawSiDIxtI3tN3MDVdMiH5H+pJMqMt59yXneyCf
2RRSRz2sUQK/aj0lXlqKjVJzVbk8HaBQ8akBJF4iWSMK4foIzJ6iO1EupYovuW6uEiO7jQRWezlW
pbbDenOHHWbfinuX5cbkjpTKHGsEKct65q+ZXJp60m3sconSK3Y2eLQxusuJ1FHDJ4GGKO8mEzCv
3cfGdXX3pVL81OfGO/JD1aMs9H98CO5ssbHqlw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
A4S1e3DHcTeWzaDVuWDRb3Yf1BjiEsR1RtAeL0BJ7J/oPWMNj96MeGsUiHtZoiYqteTZxqax2cyZ
PV0cMLoBK4Ya8CyM+BTnkFA2ablsGt5Es4TgG/nFS9VEhmeKxu8boAsqW5697aiqOATJf/LucQh5
GOnPXHAuPrDj0A/fu8N2QduqGyysWUSc1KsoJ0/0noJYvLJ2yOhFi4uIUYQfG5LOuOrca5P43pqA
iwUKW/RrFXal2acJdFeXIKffZpKanSV97urdzKyBvf9EPV/M8g9uPFJJ1z6aS+FbknhVPs0pt6eD
+J/qib4gVp/HGnRo4YlxauUMv6Yv9wxiaObY6ttDfYf5p3uzWZMlf3i7YOzZwcd4aS/6+vkD28LG
L9piBIpLx2dvQy74RdvCVdvaP1LC6RMju9RfuXJhuX4ZAmDxRi0zQyRda838ikzwYeOCSKLIvRPb
nuJ8Zx2ot8EFqSeGaaRFaEMU6Zf5SptCUuVMHvSkinBewcwrLB5uiJTJ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gj+uMxV+tK4Di7pgSOE82FOBeWmUB1A7OKFOSMUW3qrmQ4/YhryfHMlWPxfAq8avQL7tnBTnRFEg
czbErdIcNzYjrM7Qq00QC/mTqmeQX4/apbqGvN+rwK4RR5oj22wfTib/UQNEQX6fbpi6PtmAeUR9
eShsfq+YWcf7z2Zw4Q+o4+E6m4/3CzU68vglNpzNsJ8S9/8XpdIrvAA/WRAX6OEOC4wlNIKDZsq/
+zMbFgSzN1rP844I/CDmxYM0NIzBWWhYBkPfJyQyigmUoXb84lDip0/Dmnq4EHvu7D/tZNnDl5st
JpftRfEpT6S8e/5MBeKUuhbfg6etHo/oFZvPKQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
aWTy3xv6SqKsldtLS2gY4KrTS8U+KtFNRHS314f6EYZy1MHE9t7oICJ8eNB8up8A+odoE23N3fJb
1alhaadeRWU2GjlIiK1LjZ5PQw+jb1u1GWtRiY+TcTlD75XUlqwykVBrCDfm565DmgZjZle9T3/t
WEfLo+m/8GfBe8trVnoftsk/XI00BMFXRzw8doPGDhNECS1NUrLebryb9iO5Hf4A/40dtslTARsR
nicN0KoIIyiQ+QzliqyXU/8VjS45inON8R0Kv9Qx46EXUp7bds5uQ7QycRhpLG0IPnMIweudU67w
eQmpHJzvZKBCZks/R0OafZx44H6Jib2+QazBCw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UGdPiChIPj1lSozqzCQx17Bi+8FWSuMUMzXUkDLH5zcP1t8tZLzh4CU4WAR8lmJxn8gH763fLp5c
RYU6zA0yxHzl2ksc5YRU1XEfQQT9ha8fQnz+18wVKcsa5UIOfMbGDwnS9yfX59ntG8CB0uF8bJKE
y1CS6U/1Stfs1w2mF94iDxI2n2GJlb1UPtWpmxMBI88hY0GktTPXP2Y7JKl8zRl/Lq0wIF8pHwXk
B4nOgKm6hfzPj0xZ6E/TuER/JE3fy8RSm24IlL/CUgpReEslEOYjQ4EKKZRG9/fxg26utQWW9p+G
fWVU53qrFGzBhKQ96Paj1ROkv6hDHyUb6n7uSw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19072)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
