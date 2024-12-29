// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Dec 29 19:50:20 2024
// Host        : XIAOXIN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/weidong/Desktop/MIPS_SHCD/MyCPU/MyCPU.gen/sources_1/ip/MyRam/MyRam_sim_netlist.v
// Design      : MyRam
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "MyRam,blk_mem_gen_v8_4_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_8,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module MyRam
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;
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
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.95215 mW" *) 
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
  (* C_INIT_FILE = "MyRam.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
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
  (* C_USE_DEFAULT_DATA = "0" *) 
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
  MyRam_blk_mem_gen_v8_4_8 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
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
        .wea(wea),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27840)
`pragma protect data_block
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
DtqCYrB+ODI/tZXicX3cY83PtyfRVyHT
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
