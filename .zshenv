export TERMINAL=alacritty
export EDITOR="emacs"

export PATH="$(du $HOME/.local/bin/ | cut -f2 | tr '\n' ':')$PATH"
export PATH="$HOME/.cargo/bin/:$PATH"

# --files: List files that would be searched but do not search
# --no-ignore: Do not respect .gitignore, etc...
# --hidden: Search hidden files and folders
# --follow: Follow symlinks
# --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!.git/*"'
