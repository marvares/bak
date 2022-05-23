# Setup fzf
# ---------
if [[ ! "$PATH" == */home/matti/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/matti/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/matti/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/matti/.fzf/shell/key-bindings.bash"
