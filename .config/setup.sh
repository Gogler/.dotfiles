#!/bin/bash

git clone --bare https://github.com/Gogler/.dotfiles.git $HOME/.dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
echo ".dotfiles" >> .gitignore
config checkout
config config --local status.showUntrackedFiles no

# Terminal colors
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

# Oh my ZSH configuration
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh
mkdir -p "$HOME/.zsh"

# Oh my ZSH plugins
git clone https://github.com/reobin/typewritten.git "$HOME/.zsh/typewritten"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
