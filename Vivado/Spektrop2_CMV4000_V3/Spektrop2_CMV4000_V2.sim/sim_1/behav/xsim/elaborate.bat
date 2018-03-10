@echo off
REM ****************************************************************************
REM Vivado (TM) v2017.4 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Sat Mar 10 14:59:22 +0100 2018
REM SW Build 2086221 on Fri Dec 15 20:55:39 MST 2017
REM
REM Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
call xelab  -wto ba49ceaa5f864bb3962316ebdce2af8a --incr --debug typical --relax --mt 2 -L v_vid_in_axi4s_v4_0_7 -L xil_defaultlib -L axis_infrastructure_v1_1_0 -L axis_combiner_v1_1_14 -L axis_register_slice_v1_1_15 -L axis_dwidth_converter_v1_1_14 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot datapath_tb_behav xil_defaultlib.datapath_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
