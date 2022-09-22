source /etc/profile

export PATH=$PATH:/home/ninekex/dev/bin
export EDITOR=nvim

HISTTIMEFORMAT="%Y-%m-%d %T "

# Aliases
alias vim='nvim'
alias im='nvim'

alias ls='ls --group-directories-first -lh --color=auto'
alias l='ls --group-directories-first -Alh --color=auto'
alias lst='ls --group-directories-first -lht --color=auto'
alias lt='ls --group-directories-first -Alht --color=auto'
alias df='df -h'


# functions

#command_not_found_handle() {
    #number = $RANDOM % 3
    #case $number in
        #1)
            #boo-womp
            #;;
        #2)
            #fuck
            #;;
        #3)
            #wow
            #;;
        #*)
            #;;
    #esac
#}






# Colors
purple="\033[38;5;129m"
cblue="\033[38;5;45m"
reset="\033[0m"

black1="\033[30m"
red1="\033[31m"
green1="\033[32m"
yellow1="\033[33m"
blue1="\033[34m"
magenta1="\033[35m"
cyan1="\033[36m"
white1="\033[37m"

black="\033[90m"
red="\033[91m"
green="\033[92m"
yellow="\033[93m"
blue="\033[94m"
magenta="\033[95m"
cyan="\033[96m"
white="\033[97m"

# Prompts

if [ $TERM = "linux" ]; then # ----- for the tty -----
    PS1="\[${white}\]["      # begining bracket
    PS1+="\[${magenta}\]\u"  # user name
    PS1+="\[${white}\]@"     # @
    PS1+="\[${cyan}\]\h "    # host name
    PS1+="\[${yellow}\]\W"   # cwd
    PS1+="\[${white}\]]"     # ending bracket
    PS1+="\[${blue}\]\$ "    # $
    PS1+="\[${reset}\]"
    export PS1
else                         # ----- for the other terminals -----
    PS1="\[\e]2;\w\a\]"      # change terminal title
    PS1+="\[${white}\]["     # begining bracket
    PS1+="\[${magenta}\]\u"  # user name
    PS1+="\[${white}\]@"     # @
    PS1+="\[${cblue}\]\h "   # host name
    PS1+="\[${yellow}\]\W"   # cwd
    PS1+="\[${white}\]]"     # ending bracket
    PS1+="\[${white}\]  "   #  
    PS1+="\[${reset}\]"
    export PS1
fi
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"
