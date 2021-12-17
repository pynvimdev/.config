#!/bin/bash
sudo apt update 
sudo apt upgrade
sudo apt install build-essential fzf clangd stow curl file git htop tmux ninja-build gettext libtool ccls libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen
################################
# Brew 
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >>~/.bash_profile
echo "eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >>~/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
brew install gcc lua-language-server bat fd rg the_silver_searcher tig gh fzf exa fish gdb go gopls rust-analyzer wget gdb npm node python
git config --global core.editor "nvim"
# Neovim
cd ~/temp
git clone https://github.com/neovim/neovim
cd neovim && make
sudo make install
# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | so Ruscurl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | s' --tlsv1.2 -sSf https://sh.rustup.rs | sht'
# tmux and configs
cd ~/
git clone https://github.com/pynvimdev/nvim-config
mv nvim-config nvim 
mv nvim ~/.config/
# Private repos
#git clone https://github.com/pynvimdev/.config
gh auth login
