#!/bin/bash
RED='\033[0;91m'         # Red
GREEN='\033[0;92m'       # Green
RESET='\033[0m'

cp _vimrc ~/.vimrc
cp .ascii ~/.ascii
chmod +x ~/.ascii
echo "source ~/.ascii" >> ~/.zshrc

echo -e "${RED}[+] ${GREEN}Installing plug.vim${RESET}\n"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo -e "${RED}[+] ${GREEN}Downloading color schemes${RESET}\n"
mkdir -p ~/.vim
cd ~
git clone https://github.com/flazz/vim-colorschemes.git
mv vim-colorschemes/colors ~/.vim/

echo -e "${RED}[+] ${GREEN}All done, just run :PlugInstall and you're all set!${RESET}\n"


