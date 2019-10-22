@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.1 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Wed Oct 09 13:20:31 -0400 2019
REM SW Build 2552052 on Fri May 24 14:49:42 MDT 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
echo "xsim full_adder_4B_wrapper_behav -key {Behavioral:sim_1:Functional:full_adder_4B_wrapper} -tclbatch full_adder_4B_wrapper.tcl -protoinst "protoinst_files/full_add_1B.protoinst" -protoinst "protoinst_files/full_adder_4B.protoinst" -log simulate.log"
call xsim  full_adder_4B_wrapper_behav -key {Behavioral:sim_1:Functional:full_adder_4B_wrapper} -tclbatch full_adder_4B_wrapper.tcl -protoinst "protoinst_files/full_add_1B.protoinst" -protoinst "protoinst_files/full_adder_4B.protoinst" -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
