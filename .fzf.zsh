# Setup fzf
# ---------
if [[ ! "$PATH" == */home/waelwindows/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/waelwindows/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/waelwindows/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/waelwindows/.fzf/shell/key-bindings.zsh"
