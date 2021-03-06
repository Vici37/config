export PS1="\e[1;32m\h[\t] \W (\$?) >\e[m "
export R_HOME=/usr/lib/R
alias l='ls'
alias la='ls -A'
alias ll='ls -l'
alias lr='ls -R'
alias cl='clear'
alias rmr='rm -R'
alias minecraft='java -jar ~/.jar/minecraft.jar'
alias diablo2='bash ~/.scripts/Diablo2.sh'
alias starcraft='bash ~/.scripts/Starcraft.sh'
alias suspend='bash ~/.scripts/suspend.sh'
alias vimrc='sudo vim /etc/vim/vimrc'
alias du='du -h'
alias targz='tar -zxvf'
#alias tar='tar -xjvf'
alias cpr='cp -r'
alias shutdown='sudo shutdown -P now'

alias t='bash ~/.scripts/todo.sh'
alias tls='t -c ls'
alias trm='t -cfn rm'
alias ta='t add'
alias th='t help'
alias tdo='t do'

alias VIM='vim -p'
alias vim='vim -p'
alias vi='vim'

alias website='cd /var/www/'
alias make='make'

alias backup-general='tar -cjf ~/.backup/`date +%Y-%m-%d`-backup-general.tar.bz2 -T ~/.backup_general'
alias backup-programming='tar -cjf ~/.backup/`date +%Y-%m-%d`-backup-programming.tar.bz2 -T ~/.backup_programming'

#alias javac='javac -d ../bin/'
alias slaughter='kill -9'
alias scpr='bash ~/.scripts/pass_inside_r.sh'
alias scpf='bash ~/.scripts/grab_inside_r.sh'
alias bat='bash ~/.scripts/bat.sh'
alias r='mv -t ~/.trash'
alias clear-trash='shred -zu ~/.trash/*'
alias cal='cal -3'
alias imagine='ssh tsornson@imagine.mines.edu'

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
