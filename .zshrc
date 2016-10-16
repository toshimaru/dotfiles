export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug "zsh-users/zsh-syntax-highlighting", nice:10
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "themes/robbyrussell",    from:oh-my-zsh
zplug "plugins/common-aliases", from:oh-my-zsh
zplug "plugins/gem",            from:oh-my-zsh
zplug "plugins/git",            from:oh-my-zsh
zplug "plugins/github",         from:oh-my-zsh
zplug "plugins/brew",           from:oh-my-zsh
zplug "plugins/rails",          from:oh-my-zsh
zplug "plugins/rbenv",          from:oh-my-zsh
zplug "plugins/bundler",        from:oh-my-zsh
zplug "plugins/z",              from:oh-my-zsh

if ! zplug check --verbose; then
  printf 'Install? [y/N]: '
  if read -q; then
    echo; zplug install
  fi
fi

zplug load --verbose

# zsh-history-substring-search
# zmodload zsh/terminfo
# bindkey "$terminfo[cuu1]" history-substring-search-up
# bindkey "$terminfo[cud1]" history-substring-search-down
