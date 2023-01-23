
### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk
#
 zinit light zdharma-continuum/fast-syntax-highlighting
#
 zinit ice lucid wait="0" atload='_zsh_autosuggest_start'
 zinit light zsh-users/zsh-autosuggestions
#
# Completions
 zinit ice lucid wait='0'
 zinit light zsh-users/zsh-completions
#
#
 zinit snippet OMZ::lib/completion.zsh
 zinit snippet OMZ::lib/history.zsh
 zinit snippet OMZ::lib/key-bindings.zsh
 zinit snippet OMZ::plugins/colored-man-pages/colored-man-pages.plugin.zsh
 zinit snippet OMZ::plugins/sudo/sudo.plugin.zsh
 zinit snippet OMZ::plugins/command-not-found/command-not-found.plugin.zsh
#
 zinit ice lucid wait='1'
 zinit snippet OMZ::plugins/git/git.plugin.zsh
# Turbo mode with "wait"
zinit light-mode lucid wait for \
  is-snippet OMZ::lib/history.zsh \
  MichaelAquilina/zsh-you-should-use \
  zdharma-continuum/history-search-multi-word \
#   atload"alias zi='zinit'"
#
# binary release, unpack provide fzf
 zinit ice from"gh-r" as"program"
 zinit light junegunn/fzf
 zinit light Aloxaf/fzf-tab
#
 zinit ice as"program" from"gh-r" mv"exa* -> exa" pick"exa/exa" lucid atload"alias ls='exa --icons'"
 zinit light ogham/exa
