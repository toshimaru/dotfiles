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
  BUFFER=$(history -n 1 | tail -r  | awk '!a[$0]++' | peco --query "$LBUFFER")
  CURSOR=${#BUFFER}
  zle clear-screen
}
zle -N peco-history-selection
bindkey '^V' peco-history-selection

function peco-checkout-pull-request() {
    local selected_pr_id=$(gh pr list | peco | cut -f 1)
    if [ -n "$selected_pr_id" ]; then
        BUFFER="gh pr checkout ${selected_pr_id}"
        zle accept-line
    fi
    zle clear-screen
}

function peco-view-pull-request() {
    local selected_pr_id=$(gh pr list | peco | cut -f 1)
    if [ -n "$selected_pr_id" ]; then
        BUFFER="gh pr view ${selected_pr_id}"
        zle accept-line
    fi
    zle clear-screen
}
zle -N peco-view-pull-request
bindkey '^G' peco-view-pull-request

# https://starship.rs (font: https://github.com/powerline/fonts)
# eval "$(starship init zsh)"
