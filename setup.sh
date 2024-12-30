#!/bin/bash


clone_and_install_tmux() {
  pushd $BUILD_TMP_DIR
  git clone https://github.com/tmux/tmux.git
  cd tmux
  sh autogen.sh
  ./configure --prefix=$HOME/.local
  make -j
  popd
}

clone_and_install_neovim() {
  pushd $BUILD_TMP_DIR
  git clone https://github.com/neovim/neovim
  make CMAKE_BUILD_TYPE=RelWithDebInfo CMAKE_INSTALL_PREFIX=$HOME/.local
  make -j install
  popd
}

setup_dotfiles() {
GIT_CONFIG_CMD='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias config=$GIT_CONFIG_CMD
echo ".dotfiles" >> .gitignore
$GIT_CONFIG_CMD checkout -f
$GIT_CONFIG_CMD config --local status.showUntrackedFiles no

echo "Remember to reload shell before use"
}

zsh_setup() {
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

}

DOT_FILES_REPO=https://github.com/Gogler/.dotfiles.git

BUILD_TMP_DIR=$(mktemp -d)
git clone --bare $DOT_FILES_REPO $HOME/.dotfiles
setup_dotfiles

if command -v zsh 2>&1 >/dev/null
then
  zsh_setup
else
  echo "zsh could not be found - only bash setup"
fi

read -p "Do you want to install tmux? (yes/no) " yn
case $yn in
    yes )
      echo "Installing TMUX"
      clone_and_install_tmux
      ;;
    * ) echo "Skipping TMUX...";;
esac

read -p "Do you want to install neovim? (yes/no) " yn
case $yn in
    yes )
      echo "Installing neovim"
      clone_and_install_neovim
      ;;
    * ) echo "Skipping neovim...";;
esac

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

