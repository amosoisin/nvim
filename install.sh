sudo apt -y install python3 python3-venv python3-pip clang libclang-dev llvm npm

wget https://github.com/neovim/neovim/releases/download/v0.4.3/nvim.appimage
chmod +x nvim.appimage
sudo mv nvim.appimage /usr/bin/nvim

sudo npm install -g neovim

pip3 install neovim pynvim
pip3 install -U msgpack

# setting for c-lang
wget https://github.com/clangd/clangd/releases/download/10.0.0/clangd-linux-10.0.0.zip
unzip clangd-linux-10.0.0.zip
mkdir -p $HOME/.local/share/vim-lsp-settings/servers
mv clangd_10.0.0 $HOME/.local/share/vim-lsp-settings/servers/clangd
rm -rf clangd-linux-10.0.0.zip
