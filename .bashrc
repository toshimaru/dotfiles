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

# peco + ghq
function ghqp() {
  cd $(ghq list --full-path | peco)
  clear
}
bind -x '"\C-g": ghqp'

# peco + ssh
function s() {
  ssh $(awk '
    tolower($1)=="host" {
      for (i=2; i<=NF; i++) {
        if ($i !~ "[*?]") {
          print $i
        }
      }
    }
  ' ~/.ssh/config | sort | peco)
}

function diffspec() {
	bundle exec rspec $(git status --short | grep 'spec.rb' | awk '{ print $2 }')
}

# aliases
alias b='bat -p'
alias c='nyan'
alias g='git'
alias o='open'
alias p='peco'
alias tailf='tail -f'
# ls
alias l='la'
alias la='ls -lA'
alias ls='ls -G'
# Easier navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
# colorized grep
alias grep='grep --color'
alias egrep='egrep --color'
alias fgrep='fgrep --color'
alias vgrep='grep -v --color'

# https://starship.rs
# eval "$(starship init bash)"

# https://github.com/github/hub
# eval "$(hub alias -s)"

# https://github.com/rbenv/rbenv
# eval "$(rbenv init -)"

export EDITOR=vim
