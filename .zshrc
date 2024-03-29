source ~/.common_envs.sh

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=""
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
    base16-shell
)

source $ZSH/oh-my-zsh.sh
# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

#typewritten config
fpath+=$HOME/.zsh/typewritten
export TYPEWRITTEN_CURSOR="block"
autoload -U promptinit; promptinit
prompt typewritten

## Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        source "$BASE16_SHELL/profile_helper.sh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
