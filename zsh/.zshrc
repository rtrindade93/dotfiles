# --- 1. Environment Variables ---
export EDITOR='nvim' 
export VISUAL='code'
export LANG=en_US.UTF-8

# --- 2. Zsh Features & Autocorrect ---
# Enable completion system
autoload -Uz compinit && compinit

# Enable Autocorrect (asks "did you mean...")
ENABLE_CORRECTION="true"
setopt CORRECT

# History configuration
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt APPEND_HISTORY       # Merge history instead of overwriting
setopt SHARE_HISTORY        # Share history across all terminals
setopt HIST_IGNORE_DUPS     # Don't record same command twice
setopt HIST_IGNORE_SPACE    # Don't record commands starting with a space

# --- 3. Plugins (Manual or Plugin Manager) ---
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

# --- 4. Quality of Life Aliases ---
alias vim='nvim'

alias ls='ls --color=auto'
alias ll='ls -lah'
alias grep='grep --color=auto'
alias ..='cd ..'
alias ...='cd ../..'

# Arch Specific Aliases
alias pacsync='sudo pacman -Syu'
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'

# nmtui dark mode
alias nmtui="NEWT_COLORS='root=black,black;window=black,black;border=white,black;listbox=white,black;button=white,red;actlistbox=black,white;title=green,black' nmtui"

# --- 5. Starship Initialization ---
eval "$(starship init zsh)"
