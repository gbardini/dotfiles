set fish_greeting ""

set -gx TERM xterm-256color

alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"
alias g git

set -gx EDITOR vim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# NodeJS
set -gx PATH node_modules/.bin $PATH

# Go
#set -g GOPATH $HOME/go
set -g GOPATH /usr/local/go
set -gx PATH $GOPATH/bin $PATH

# Homebrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

switch (uname)
    case Darwin
        source (dirname (status --current-filename))/config-osx.fish
    case Linux
        source (dirname (status --current-filename))/config-linux.fish
    case '*'
        source (dirname (status --current-filename))/config-windows.fish
end
