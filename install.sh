#!/bin/bash
sudo apt update 
sudo apt upgrade
sudo apt install build-essential fzf clangd stow lldb git htop tmux ninja-build gettext libtool ccls libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen
################################
# Brew 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install gcc bat fd rg the_silver_searcher tig gh fzf exa fish gdb go gopls rust-analyzer wget gdb npm node python
# Neovim
mkdir  ~/temp
cd ~/temp
git clone https://github.com/neovim/neovim
cd neovim && make
sudo make install
# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | so Ruscurl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | s' --tlsv1.2 -sSf https://sh.rustup.rs | sht'
# tmux and configs
cd ~/
git clone https://github.com/pynvimdev/.config
