if [ -f ~/.bash/variables.sh ]; then
    source ~/.bash/variables.sh
fi

if [ -f ~/.bash/prompt.sh ]; then
    source ~/.bash/prompt.sh
fi

if [ -f ~/.bash/aliases.sh ]; then
    source ~/.bash/aliases.sh
fi

if [ -f ~/.bash/functions.sh ]; then
    source ~/.bash/functions.sh
fi

if [ -f ~/.bash/extra.sh ]; then
    source ~/.bash/extra.sh
fi

# added by travis gem
if [ -f $HOME/.travis/travis.sh ]; then
    source $HOME/.travis/travis.sh
fi

# Setup and activate the conda package manager
#if [ -f $HOME/miniconda3/etc/profile.d/conda.sh ]; then
#    source "$HOME/anaconda3/etc/profile.d/conda.sh"
#    conda activate
#fi

 __conda_setup="$('/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup

# Activate my default environment to keep the base env clean
conda activate optwrf

# Move things in ~/Downloads to the Trash if they are more than a week old
find ~/Downloads/ -type f -mtime +7 -exec mv {} ~/.Trash \;

# Delete things in the trash that are more than a month old
find ~/.Trash/ -type f -mtime +30 -exec rm {} \;

# If pyjoke is installed, start the terminal with a random joke. Because why not?
if hash pyjoke 2>/dev/null; then
    printf "... $(pyjoke) 🥁\n"
fi
