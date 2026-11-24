green=$(tput setaf 119)
lime=$(tput setaf 10)
magenta=$(tput setaf 164)
blue=$(tput setaf 117)
bold=$(tput bold)
reset=$(tput sgr0)

# Function to get the current Git branch and status
git_info() {
    if [ -d .git ]; then
        local branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
        local status=$(git status --porcelain 2>/dev/null)
        local git_status=""
        if [ ! -z "$status" ]; then
            git_status=" *"
        fi
        echo "${green}(${branch}${git_status})"
    fi
}

# Set the PS1 variable
PS1="\[${bold}\]\n"
PS1+="\[${green}\]🗲 \u✔ "
PS1+="\[${green}\] @ "
PS1+="\[${lime}\]\h 🐧 "
PS1+="\[${green}\]\w"
PS1+="\[\033[0m\] \$(git_info)"  # Call the git_info function
PS1+="\n"
PS1+="\[${blue}\]\$ "

export PS1

export QT_QPA_PLATFORMTHEME=qt5ct

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

#alias mountg='rclone mount --daemon gdrive: /home/lahiru/gdrive'
alias ll='ls -la'
alias off='systemctl poweroff'
alias reboot='systemctl reboot'

[[ "$TERM_PROGRAM" == "vscode" ]] && . "$(code --locate-shell-integration-path bash)"

#unlimited bash history

HISTSIZE=
HISTFILESIZE=
HISTCONTROL=ignoredups:erasedups  # optional: ignore duplicates
shopt -s histappend               # append, don’t overwrite history file

PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

