# -- dirstack movement
DIRSTACKSIZE=10
setopt autopushd
setopt pushd_ignore_dups

# --- load dirstack functions
fpath=(~/.zsh/dirstack-move $fpath)
autoload -Uz dirstack-back dirstack-fwd
autoload -Uz dirstack-up dirstack-down

# --- create widgets and bind to keys
zle -N dirstack-back
zle -N dirstack-fwd
zle -N dirstack-up
zle -N dirstack-down

# --- bind to Alt-Left/-Right/-Up/-Down
bindkey '^[[1;3D' dirstack-back
bindkey '^[[1;3C' dirstack-fwd
bindkey '^[[1;3A' dirstack-up
bindkey '^[[1;3B' dirstack-down  
