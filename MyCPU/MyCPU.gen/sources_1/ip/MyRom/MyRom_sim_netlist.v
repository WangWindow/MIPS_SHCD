// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Mon Dec 30 21:47:31 2024
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
