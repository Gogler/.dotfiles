source ~/.common_envs.sh

source $FZF_DIR/shell/key-bindings.bash
source $FZF_DIR/shell/completion.bash
source /usr/share/bash-completion/completions/git

export PS1="\`parse_git_branch\`\[\e[32m\]λ\[\e[m\]: "

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
