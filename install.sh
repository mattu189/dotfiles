#!/bin/sh

cd ~/

git clone https://github.com/zsh-users/zsh-autosuggestions.git
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone https://github.com/zsh-users/zsh-history-substring-search.git

mkdir -p .vim/colors/
git clone https://github.com/altercation/vim-colors-solarized.git
mv vim-colors-solarized/colors/solarized.vim .vim/colors/
rm -rf vim-colors-solarized

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
