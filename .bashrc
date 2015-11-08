# Extract archives - use: extract <file>
# Credits to http://dotfiles.org/~pseup/.bashrc
function extract() {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2) tar xjf $1 ;;
            *.tar.gz) tar xzf $1 ;;
            *.bz2) bunzip2 $1 ;;
            *.rar) rar x $1 ;;
            *.gz) gunzip $1 ;;
            *.tar) tar xf $1 ;;
            *.tbz2) tar xjf $1 ;;
            *.tgz) tar xzf $1 ;;
            *.zip) unzip $1 ;;
            *.Z) uncompress $1 ;;
            *.7z) 7z x $1 ;;
            *) echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

# aliases
alias la='ls -lA'
alias l='la'
alias g='git'
alias gito='git ls-files | peco | xargs open'

alias grep='grep --color'
alias egrep='egrep --color'
alias fgrep='fgrep --color'
alias vgrep='grep -v --color'

alias tailf='tail -f'

# Easier navigation: .., ..., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# `cat` with beautiful colors. requires Pygments installed.
# $ sudo easy_install Pygments
alias c='pygmentize -O style=monokai -f console256 -g'

# Expand git command with `hub` command (installed by `brew install hub`)
# eval "$(hub alias -s)"

# my bash PS1
function parse_git_dirty {
    [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo '⚡'
}
function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\1/"
}
export PS1='\[\033[0;32m\][\u@\h \W]\[\033[0;31m\]<$(parse_git_branch)\[\033[1;33m\]$(parse_git_dirty)\[\033[0;31m\]>\[\033[m\] ➤ '

# rbenv 
eval "$(rbenv init -)"
