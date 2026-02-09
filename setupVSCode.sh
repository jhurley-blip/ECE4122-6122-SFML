#!/bin/bash

# Download VSCode CLI (one-time setup)
curl -L "https://update.code.visualstudio.com/latest/linux-x64/stable" -o ~/vscode.tar.gz
tar -xzf ~/vscode.tar.gz -C ~/
rm ~/vscode.tar.gz

# Add to your PATH (add this line to ~/.bashrc for persistence)
export PATH="$HOME/VSCode-linux-x64/bin:$PATH"

# Launch
code .