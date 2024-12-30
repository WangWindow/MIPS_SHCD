// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Dec 30 18:09:24 2024
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
