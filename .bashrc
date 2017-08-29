# Fancier promt
export PS1="\[\033[38;5;11m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\] @ \[$(tput sgr0)\]\[\033[38;5;2m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\]: \[$(tput sgr0)\]\[\033[38;5;6m\][\w]\[$(tput sgr0)\]\[\033[38;5;15m\] \\$\[$(tput sgr0)\]"

# Solvatio Aliases
alias cds = "cd /opt/app/solvatio"
alias cdsc = "cds && cd config"

# Unix Aliases
alias ll= "ls -lhA"
alias ls= "ls -CF"

alisa ..= "cd .."
alisa ...= "cd ../.."
alisa ....= "cd ../../.."

alias ps="ps auxf"
