// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Dec 29 19:56:59 2024
// Host        : XIAOXIN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/weidong/Desktop/MIPS_SHCD/MyCPU/MyCPU.gen/sources_1/ip/MyRom/MyRom_sim_netlist.v
// Design      : MyRom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "MyRom,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module MyRom
   (clka,
    ena,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
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
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.622 mW" *) 
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
  (* C_INIT_FILE = "MyRom.mem" *) 
  (* C_INIT_FILE_NAME = "MyRom.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
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
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  MyRom_blk_mem_gen_v8_4_8 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27296)
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
