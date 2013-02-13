export R_HOME=/usr/lib/R

# This function is called before each prompt
precmd() {
	if [[ -z $(git ls-files --other --exclude-standard 2> /dev/null) ]] {
	  zstyle ':vcs_info:*' formats "%s:(%b)%u%c"
	} else {
	  zstyle ':vcs_info:*' formats "%s:(%b)%u%c%F{red}*" 
  }
	vcs_info 'prompt'
}

# This function is called everytime the directory changes
chpwd() {

}

# This function is called PERIOD number of seconds
PERIOD=300
periodic() { 
	temp=`acpi | awk ' { print $4 } ' | sed 's/[%,]//g'`
	if [[ 50 -gt $temp ]] {
		RIGHT_DISPLAY_PERIODIC='Bat:%F{red}'$temp
	} else {
		RIGHT_DISPLAY_PERIODIC=''
	}
	#temp=`date +%H`
	##if [[ $temp -gt 7 && $temp -lt 13 ]] {
	#	setxkbmap dvorak
	##} else {
	#	#setxkbmap us
	##}
	#xmodmap ~/.Xmodmap
}

# This function is called after a terminal exits (not sub shells)
zshexit() { 
	`~/.scripts/backup.sh`
}

# Set up the prompt
setopt PROMPT_SUBST 

autoload -Uz vcs_info
autoload -Uz promptinit
autoload -U colors
colors
promptinit
PROMPT=$'%{\e[1;32m%}%m[%*] %c (%?) >%{\e[0m%} '
RPROMPT=$'%{\e[1;32m%}''${vcs_info_msg_0_} ${RIGHT_DISPLAY_PERIODIC} ${ERROR_CODE_PRINT}'$'%{\e[0m%}'

setopt histignorealldups sharehistory

# If a process takes more than 5 seconds, z shell will output how long it took
REPORTTIME=5
TIMEFMT="%U user; %S system; %P cpu; %*Es total"

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*:functions' ignored-patterns '_*'

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

zstyle ':completion:*' users-hosts tsornson@imagine.mines.edu tsornson@ch120-13 tsornson@mio troy@192.168.1.137 tsornson@radio.mines.edu tsornson@susan tsornson@gc297-13 tsornson@bb136-13

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' stagedstr '%F{green}*'
zstyle ':vcs_info:*' unstagedstr '%F{11}*'

# no need to use cd command to navigate, just the directory
setopt AUTO_CD
# pipe to multiple outputs
setopt MULTIOS
# spellcheck commands
setopt CORRECT
# makes cd = pushd
setopt AUTO_PUSHD
# This will use named dirs when possible
setopt AUTO_NAME_DIRS
# If we have a glob this will expand it
setopt GLOB_COMPLETE
setopt PUSHD_MINUS
# No more annoying pushd messages...
setopt PUSHD_SILENT

# blank pushd goes to home
setopt PUSHD_TO_HOME

# this will ignore multiple directories for the stack.  Useful?  I dunno.
setopt PUSHD_IGNORE_DUPS

# 10 second wait if you do something that will delete everything.  I wish I'd had this before...
setopt RM_STAR_WAIT

# use magic (this is default, but it can't hurt!)
setopt ZLE

setopt NO_HUP

setopt VI

# only fools wouldn't do this ;-)
export EDITOR="vi"
setopt IGNORE_EOF

# If I could disable Ctrl-s completely I would!
setopt NO_FLOW_CONTROL

# beeps are annoying
setopt NO_BEEP

# Keep echo "station" > station from clobbering station
setopt NO_CLOBBER

# Case insensitive globbing
setopt NO_CASE_GLOB

# Be Reasonable!
setopt NUMERIC_GLOB_SORT

# I don't know why I never set this before.
setopt EXTENDED_GLOB

# hows about arrays be awesome?  (that is, frew${cool}frew has frew surrounding all the variables, not just first and last
setopt RC_EXPAND_PARAM

alias suspend='bash ~/.scripts/suspend.sh'
alias stpshtdwn='bash ~/.scripts/stop_shutdown.sh'
alias l='ls'
alias ls='ls --color=auto'
alias la='ls -A'
alias ll='ls -l'
alias du='du -h'
alias cpr='cp -r'
alias shutdown='sudo shutdown -P now'
alias make='make -B'
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias .='ls'

alias -g G='| grep'
alias -g L='| less'
alias -g NE='2> /dev/null'
alias -g NO='> /dev/null'

alias VIM='vim -p'
alias vim='vim -p'
alias vi='vim'

alias website='cd /var/www/'
alias movies='cd /media/sda3/Users/Troy\ Sornson/My\ Documents/My\ Videos/My\ Videos/movies/'

alias t='bash ~/.scripts/todo.sh'
alias tl='cal;echo "----------------------"; t -c ls'
alias trm='t -cfn rm'
alias ta='t add'
alias th='t help'
alias tdo='t do'

alias vimrc='sudo vim /etc/vim/vimrc'

alias backup-general='tar -cjf ~/.backup/`date +%Y-%m-%d`-backup-general.tar.bz2 -T ~/.backup_general'

alias slaughter='kill -9'
alias bat='bash ~/.scripts/bat.sh'
alias r='mv -t ~/.trash'
alias clear-trash='shred -zu ~/.trash/*'
alias cal='cal -3'
alias imagine='ssh tsornson@imagine.mines.edu'
alias hash='ruby ~/.scripts/hash.rb'

# open these types of files in vim
alias -s txt=vim
alias -s cpp=vim
alias -s c=vim
alias -s h=vim
alias -s html=vim
alias -s css=vim
alias -s f90=vim
#alias -s rb=vim
#alias -s py=vim
#alias -s sh=vim
alias -s hh=vim
alias -s cc=vim
alias -s java=vim
alias -s tex=vim
alias -s latex=vim
alias -s lisp=vim
alias -s php=vim
alias -s pdf=evince
alias -s odt=soffice
alias -s ods=soffice

alias toilers-connect='ssh -f -N -L 7777:toilers.mines.edu:22 tsornson@imagine.mines.edu'
