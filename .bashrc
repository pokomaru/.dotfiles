# エイリアス
alias ls='ls --color=auto'
alias open='xdg-open'
alias pip='pip3'
alias python='python3'
alias relogin='exec $SHELL -l'

# bashプロンプトの変更
if [ -n "$SSH_CLIENT" ]; then text=" ssh-session"
fi
export PS1='\[\e[1;32m\]\u@\h:\w${text}$\[\e[m\] '

# terminalを起動した時にtmuxを自動起動
[[ -z "$TMUX" && ! -z "$PS1" ]] && tmux

# lsコマンドを使用したときの色変更
eval $(dircolors ~/dircolors-solarized/dircolors.ansi-universal)

# コンソール上で英語表示
export LANG=en_US