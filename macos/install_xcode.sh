#!/bin/bash

xcode_command_line_tools_installed() {
    xcode-select --print-path &> /dev/null
}

if ! xcode_command_line_tools_installed; then
    xcode-select --install
fi

