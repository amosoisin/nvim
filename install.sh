sudo apt -y install python3 python3-venv python3-pip clang libclang-dev llvm npm ctags clang-tools

wget https://github.com/neovim/neovim/releases/download/v0.4.3/nvim.appimage
chmod +x nvim.appimage
sudo mv nvim.appimage /usr/local/bin/nvim

sudo npm install -g neovim

pip3 install neovim pynvim
pip3 install -U msgpack
