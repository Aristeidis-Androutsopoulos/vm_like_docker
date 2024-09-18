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

prompt pure
