// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Tue Jan  7 18:32:26 2025
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
