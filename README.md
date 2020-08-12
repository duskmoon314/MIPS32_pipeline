# MIPS32_pipeline

**MIPS32_pipeline** is a 2019.2 vivado project for the **Fundamental Experiment of Digital Logic and Processor (数字逻辑与处理器基础实验)**, course of THUEE

## How to Set up

When opening the project after cloning it, do it by using `Tools -> Run Tcl Script...` and selecting the `MIPS32_pipeline.tcl` file created earlier. This will regenerate the project so that you can continue to work.

## About

- This project uses [kevlaine/vivado-git](https://github.com/kevlaine/vivado-git)
- MIT LICENSE. THUEE students please follow relevant regulations.

## Recommend VSCode extensions and settings

I recommend these extensions:

```json
"recommendations": [
  "truecrab.verilog-testbench-instance",
  "isaact.verilog-formatter",
  "mshr-h.veriloghdl"
]
```

I prefer settings like this:

```json
"verilog.linting.linter": "xvlog", // Add xvlog to PATH
"verilog.logging.enabled": true,
"verilog.linting.verilator.runAtFileLocation": true,
"verilog.ctags.path": "path/to/ctags.exe",
"verilog-formatter.istyle.path": "path/to/iStyle.exe",
"verilog-formatter.istyle.style": "GNU",
"verilog-formatter.istyle.args": "-p",
```
