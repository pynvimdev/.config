##########################
sudo apt update && sudo apt upgrade && sudo upgrade -y && sudo apt install clangd git
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install gcc gcc@5 tree-sitter git node npm gopls go python fish fzf the_silver_searcher rg
npm i -g typescript prettier eslint yarn typescript-language-server vscode-langserver-extracted pyright
######################### Neovim source
sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen
git clone https://github.com/neovim/neovim
cd neovim && make
sudo make install
######################## Fish
set -l _tide_tmp_dir (command mktemp -d)
curl https://codeload.github.com/ilancosman/tide/tar.gz/HEAD | tar -xzC $_tide_tmp_dir
command cp -R $_tide_tmp_dir/tide-HEAD/{completions,conf.d,functions} $__fish_config_dir
exec fish --init-command "set -g fish_greeting; emit _tide_init_install"
######################## Neovim Source config
git clone https://github.com/pynvimdev/.config
