alias dotfiles="tmux a -t dotfiles"

# Fuzzy find a command from history in FZF
alias hff='$(history | gsed -r "s/^[0-9 *]+//" | sort | uniq -u | fzf)'
