set -gx PATH "$HOME/.local/bin" $PATH
set -gx PATH "/opt/cuda/bin" $PATH
set -gx GEM_HOME "$HOME/.local/share/gem/ruby/3.0.0/bin"
set -gx PATH $GEM_HOME $PATH
# set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

set -gx EDITOR nvim

fzf_configure_bindings --directory=\cf
bind \co ranger-cd

alias ls="eza --group-directories-first --icons"
alias la="eza -l -a --group-directories-first --icons"
alias lk="eza -l --group-directories-first --icons"
alias l.="eza -a --group-directories-first --icons | egrep '^\.'"                                     # show only dotfiles

alias ra="ranger-cd"
alias vim="nvim"
alias df="df -h"
alias rm="/bin/rm -v > ~/.rm.log"
alias sys="sudo systemctl"

alias lg="lazygit"
alias gs="git status"
alias gl="git log --graph --full-history --all --color --pretty=tformat:\"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s%x20%x1b[33m(%an)%x1b[0m\""

alias fs="fluidsynth --quiet /usr/share/sounds/sf2/GeneralUser\ GS\ v1.471.sf2"
alias top="btop"
alias nvd="watch -n 1 nvidia-smi"

# alias fd="fd -IH"

# ====== Copied from garuda's fish config
## Starship prompt
set VIRTUAL_ENV_DISABLE_PROMPT "1"
if status is-interactive
    starship init fish | source
    # source ("/usr/bin/starship" init fish --print-full-init | psub)
end

# Fish command history
function history
    builtin history --show-time='%F %T '
end

function backup --argument filename
    cp $filename $filename.bak
end

# Copy DIR1 DIR2
function copy
    set count (count $argv | tr -d \n)
    if test "$count" = 2; and test -d "$argv[1]"
	set from (echo $argv[1] | trim-right /)
	set to (echo $argv[2])
        command cp -r $from $to
    else
        command cp $argv
    end
end

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias wget='wget -c '
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias hw='hwinfo --short'                                   # Hardware Info
alias big="expac -H M '%m\t%n' | sort -h | nl"              # Sort installed packages according to size in MB
alias gitpkg='pacman -Q | grep -i "\-git" | wc -l'			# List amount of -git packages
alias jctl="journalctl -p 3 -xb"

# color scheme git@github.com:lavigmlj/fish-color-scheme-switcher.git
scheme set kanagawa

zoxide init fish | source

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# eval /home/lavig/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<
alias conda "conda-init; conda"

alias pbcopy="xclip -selection clipboard"
alias pbpaste="xclip -selection clipboard -o"
alias git="LANG=fr_FR.UTF-8 command git"
alias remove="/usr/bin/rm"
alias rm="echo Please use remove command instead"

function onlyoffice
    onlyoffice-desktopeditors (realpath $argv)
end

alias dfj fish_default_key_bindings
alias vji fish_vi_key_bindings

function addTodo
    if test -z $argv
        read -P "ITEM " item
    else
        set -f item $argv
    end
    echo "- [ ] $item" >> ~/.(whoami)_todo
end

function seeTodo
    grep -v '^- \[x]' ~/.(whoami)_todo | bat
end

function editTodo
    vim ~/.(whoami)_todo 
end

alias ob "obsidian &>/dev/null"
