source ~/.common_envs.sh

source $FZF_DIR/shell/key-bindings.bash
source $FZF_DIR/shell/completion.bash
source /usr/share/bash-completion/completions/git

export PS1="\`parse_git_branch\`\[\e[32m\]λ\[\e[m\]: "

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        source "$BASE16_SHELL/profile_helper.sh"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
