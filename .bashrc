source /etc/profile

export PATH=$PATH:/home/ninekex/dev/bin

HISTTIMEFORMAT="%Y-%m-%d %T "

# Aliases
alias vim='nvim'
alias im='nvim'

# Colors
purple="$(tput setaf 129)"
magenta="$(tput setaf 13)"
cyan="$(tput setaf 45)"
white="$(tput setaf 15)"
yellow="$(tput setaf 11)"
blue="$(tput setaf 27)"
reset="$(tput sgr0)"

# Prompts
PS1="\[${white}\][" # begining bracket
PS1+="\[${magenta}\]\u" #user name
PS1+="\[${white}\]@" # @
PS1+="\[${cyan}\]\h " # host name
PS1+="\[${yellow}\]\W" # cwd
PS1+="\[${white}\]]" # ending bracket
PS1+="\[${white}\]  " #  
PS1+="\[${reset}\]"
export PS1
