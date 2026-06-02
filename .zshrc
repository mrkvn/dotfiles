#l;i Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Disable auto-setting terminal title (prevents oh-my-zsh from renaming tmux windows).
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	zsh-autosuggestions
	zsh-completions
	docker
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# ── Accept zsh-autosuggestion with Ctrl+Space ──
# Most terminals send Ctrl+Space as NUL (^@); some send ^ . Bind both so it
# works regardless. Right arrow / Ctrl+E still accept too.
bindkey '^ '  autosuggest-accept
bindkey '^@'  autosuggest-accept

# ── Catppuccin-themed fzf ──
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#000000,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#ff5f00,info:#cba6f7,pointer:#f5e0dc \
--color=fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 \
--color=marker:#b4befe,selected-bg:#45475a \
--multi"

# ── bat theme ──
export BAT_THEME="Catppuccin Mocha"

# ── Modern ls/tree with eza ──
alias ls="eza --icons --group-directories-first"
alias ll="eza -la --icons --group-directories-first"
alias lt="eza --tree --icons --level=2"

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#alias python="python3.12"
#alias python3="python3.12"
alias dcom="docker-compose"
#alias python="python3"
alias gs="git status"
alias gap="git add -p"
alias gaa="git add -A"
alias gp="git push"
alias gl="git log"
alias dk="docker"
alias dcon="docker container"
alias svba="source .venv/bin/activate"
alias sz="source ~/.zshrc"
alias j21="export JAVA_HOME=`/usr/libexec/java_home -v 21`; java -version"
alias j20="export JAVA_HOME=`/usr/libexec/java_home -v 20`; java -version"
alias j19="export JAVA_HOME=`/usr/libexec/java_home -v 19`; java -version"
alias j18="export JAVA_HOME=`/usr/libexec/java_home -v 18`; java -version"
alias j17="export JAVA_HOME=`/usr/libexec/java_home -v 17`; java -version"
alias j16="export JAVA_HOME=`/usr/libexec/java_home -v 16`; java -version"
alias j15="export JAVA_HOME=`/usr/libexec/java_home -v 15`; java -version"
alias j14="export JAVA_HOME=`/usr/libexec/java_home -v 14`; java -version"
alias j13="export JAVA_HOME=`/usr/libexec/java_home -v 13`; java -version"
alias j12="export JAVA_HOME=`/usr/libexec/java_home -v 12`; java -version"
alias j11="export JAVA_HOME=`/usr/libexec/java_home -v 11`; java -version"
alias j10="export JAVA_HOME=`/usr/libexec/java_home -v 10`; java -version"
alias j9="export JAVA_HOME=`/usr/libexec/java_home -v 9`; java -version"
alias j8="export JAVA_HOME=`/usr/libexec/java_home -v 1.8`; java -version"
alias j7="export JAVA_HOME=`/usr/libexec/java_home -v 1.7`; java -version"
alias resetjetbrains="~/code/repo/github/jetbrains-reset-trial-evaluation-mac/runme.sh"
alias vim=nvim
alias v=nvim
alias nrd="npm run dev"
alias nrb="npm run build"
alias dnsflash="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"
alias dotfiles='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
gcm() {
    git commit -m "$@"
}
brd() {
  bun run dev "$@"
}
alias brb="bun run build"
unalias c 2>/dev/null
c() {
  # Launch Claude Code (Opus, auto mode) at the model's DEFAULT effort, still
  # overridable in-session. Strips the persisted effortLevel from settings.json
  # so the model default (e.g. high on Opus 4.8) applies; does NOT set
  # CLAUDE_CODE_EFFORT_LEVEL, so /effort still works inside the session.
  local f="$HOME/.claude/settings.json"
  if [ -f "$f" ]; then
    local tmp; tmp="$(mktemp)"
    jq 'del(.effortLevel)' "$f" > "$tmp" && mv "$tmp" "$f"
  fi
  command claude --permission-mode auto --model opus "$@"
}
unalias ccon 2>/dev/null
ccon() {
  # Resume the previous session as-is — do NOT strip effortLevel, so it keeps
  # whatever effort the prior session was using (e.g. low).
  command claude --continue --permission-mode auto --model opus "$@"
}
unalias cs 2>/dev/null
cs() {
  #claude --model sonnet --effort medium "$@"
  claude --dangerously-skip-permissions --model sonnet --effort medium "$@"
}
alias cscon="cs --continue"
alias ci="claude-init"

___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi

# .NET Core
export PATH="$PATH:/Users/$USER/.dotnet/tools"

# Android SDK
export ANDROID_HOME="${HOME}/Library/Android/sdk"
export PATH="${PATH}:${ANDROID_HOME}/cmdline-tools:${ANDROID_HOME}/cmdline-tools/latest/bin:${ANDROID_HOME}/platform-tools"

export PATH="${HOME}/.local/bin:${PATH}"

#export PATH="/opt/homebrew/opt/node@20/bin:$PATH"
#export LDFLAGS="-L/opt/homebrew/opt/node@20/lib"
#export CPPFLAGS="-I/opt/homebrew/opt/node@20/include" 

# SML
export PATH=/usr/local/smlnj/bin:$PATH

# pnpm
export PNPM_HOME="/Users/mrkvn/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# rosetta terminal setup
#if [ $(arch) = "i386" ]; then
#    alias python="/usr/local/bin/python3"
#    alias python3.10="/usr/local/bin/python3.10"
#    alias brew86='/usr/local/bin/brew'
#    alias pyenv86="arch -x86_64 pyenv"
#    alias func="/usr/local/Cellar/azure-functions-core-tools@4/4.0.5095/func"
#fi


export MODULAR_HOME="/Users/mrkvn/.modular"
#export PATH="/Users/mrkvn/.modular/pkg/packages.modular.com_mojo/bin:$PATH"
export PATH="$HOME/.local/scripts:$PATH"
export PATH="$PATH:/Users/mrkvn/.opt/flutter/bin"


#export MOJO_PYTHON_LIBRARY="/Users/mrkvn/.asdf/installs/python/3.11.9/lib/libpython3.11.dylib"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

#export PYENV_ROOT="$HOME/.pyenv"
#command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init -)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[[ ! -f ~/.claude/themes/active/p10k-overlay.zsh ]] || source ~/.claude/themes/active/p10k-overlay.zsh

export PATH="$HOME/go/bin:$PATH"
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"


#. /opt/homebrew/opt/asdf/libexec/asdf.sh
ssh-add --apple-use-keychain ~/.ssh/id_ed25519_20260326 &> /dev/null
ssh-add --apple-use-keychain ~/.ssh/id_ed25519_20260420_pub &> /dev/null
# Wasmer
export WASMER_DIR="/Users/mrkvn/.wasmer"
[ -s "$WASMER_DIR/wasmer.sh" ] && source "$WASMER_DIR/wasmer.sh"

export PATH="/opt/homebrew/bin:$PATH"
alias brew="arch -arm64e /opt/homebrew/bin/brew"
export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/sqlite/lib"
export CPPFLAGS="-I/opt/homebrew/opt/sqlite/include"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/mrkvn/opt/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/mrkvn/opt/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/mrkvn/opt/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/mrkvn/opt/google-cloud-sdk/completion.zsh.inc'; fi
export MODULAR_HOME="/Users/mrkvn/.modular"
export PATH="/Users/mrkvn/.modular/pkg/packages.modular.com_max/bin:$PATH"
export LDFLAGS="-L$(brew --prefix openssl@3)/lib"
export CPPFLAGS="-I$(brew --prefix openssl@3)/include"
export PATH="$PATH:/Users/mrkvn/.modular/bin"

eval "$(uv generate-shell-completion zsh)"

# bun completions
[ -s "/Users/mrkvn/.bun/_bun" ] && source "/Users/mrkvn/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export PATH=~/opt/bin:$PATH

# Added by Antigravity
export PATH="/Users/mrkvn/.antigravity/antigravity/bin:$PATH"

# Added by Antigravity
export PATH="/Users/mrkvn/.antigravity/antigravity/bin:$PATH"

# Added by Antigravity
export PATH="/Users/mrkvn/.antigravity/antigravity/bin:$PATH"

[ -f "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"


# Added by Antigravity CLI installer
export PATH="/Users/mrkvn/.local/bin:$PATH"
