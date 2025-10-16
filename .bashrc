source ~/.common_envs.sh

source /usr/share/bash-completion/completions/git

export PS1="\`parse_git_branch\`\[\e[32m\]λ\[\e[m\]: "

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
