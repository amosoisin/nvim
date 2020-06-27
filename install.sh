sudo apt -y install python3 python3-venv python3-pip clang libclang-dev llvm npm neovim

sudo npm install -g tern
sudo npm install -g neovim


TERN_PATH=/usr/local/lib/node_modules/tern
sudo rm $TERN_PATH/.tern-project
sudo ln -s tern-project $TERN_PATH/.tern-project

pip3 install neovim pynvim
pip3 install -U msgpack

# setting for c-lang
wget https://github.com/clangd/clangd/releases/download/10.0.0/clangd-linux-10.0.0.zip
unzip clangd-linux-10.0.0.zip
mkdir -p $HOME/.local/share/vim-lsp-settings
mv clangd_10.0.0 $HOME/.local/share/vim-lsp-settings/clangd
rm -rf clangd-linux-10.0.0.zip