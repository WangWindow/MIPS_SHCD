// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Dec 29 19:50:20 2024
// Host        : XIAOXIN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top MyRam -prefix
//               MyRam_ MyRam_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27552)
`pragma protect data_block
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
xavtexxMp8yDovgTX0i+hOvcNTDt
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
