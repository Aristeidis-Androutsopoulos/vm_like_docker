autoload -Uz promptinit; promptinit

#echo $(id -u)

source /home/ubuntu/.antidote/antidote.zsh
antidote load /home/ubuntu/.zsh_plugins.txt

if [[ $(id -u) -eq 0 ]]; then
        zstyle :prompt:pure:user:root color red
fi

zstyle :prompt:pure:user color blue
zstyle :prompt:pure:host color yellow

export LANG=en_US.UTF-8

prompt pure
