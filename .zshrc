# peco + ghq
function ghq-peco-src () {
    local selected_dir=$(ghq list --full-path | peco --query "$LBUFFER")
    if [ -n "$selected_dir" ]; then
        BUFFER="cd ${selected_dir}"
        zle accept-line
    fi
    zle clear-screen
}
zle -N ghq-peco-src
bindkey '^T' ghq-peco-src

# history + peco
function peco-history-selection() {
  BUFFER=$(\history -n 1 | tail -r  | awk '!a[$0]++' | peco --query "$LBUFFER")
  CURSOR=${#BUFFER}
  zle clear-screen
}
zle -N peco-history-selection
bindkey '^V' peco-history-selection
