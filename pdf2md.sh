#!/bin/bash

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/osboxes/.pyenv/versions/miniforge3-latest/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/osboxes/.pyenv/versions/miniforge3-latest/etc/profile.d/conda.sh" ]; then
        . "/home/osboxes/.pyenv/versions/miniforge3-latest/etc/profile.d/conda.sh"
    else
        export PATH="/home/osboxes/.pyenv/versions/miniforge3-latest/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

##### Ollama service
#ollama serve &

##### Marker-pdf API service
conda activate marker-pdf
#marker_server &

##### Start
uv run main.py
