source $HOME/.antidote/antidote.zsh
antidote load $HOME/.zsh_plugins.txt

#fpath+=($HOME/.cache/antidote/https-COLON--SLASH--SLASH-github.com-SLASH-sindresorhus-SLASH-pure)
fpath+=($HOME/.zsh/pure)

autoload -Uz promptinit
promptinit


#echo $(id -u)


if [[ $(id -u) -eq 0 ]]; then
        zstyle :prompt:pure:user:root color red
fi

zstyle :prompt:pure:user color blue
zstyle :prompt:pure:host color yellow

export LANG=en_US.UTF-8
export PATH=$PATH:/usr/games

# Set up Ctrl + Backspace and Ctrl + Del to delete and backspace + move faster
bindkey '^H' backward-kill-word
bindkey -M emacs '^[[3;5~' kill-word

# Set up aliases
# alias cl="clear"
alias x="exit"
alias hehe="fortune riddles | cowsay -f moose"

#if command -v eza &> /dev/null
#then
#    alias ls ="eza --icons"
#fi

prompt pure

fortune riddles | cowsay -f moose
