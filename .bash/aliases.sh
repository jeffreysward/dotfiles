# Alias definitions

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# To make JabRef fonts not horrible
# http://crunchbang.org/forums/viewtopic.php?pid=248580#p248580
alias jabref='nohup jabref > /dev/null 2>&1 &'

# Open the IRPF 2017 app
alias irpf2017='sudo _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on" java -jar /home/leo/bin/IRPF2017/irpf.jar'

alias ll='ls -lh'
alias la='ls -A'
alias lll='ls -altrh'
alias cd..='cd ..'
alias nb='jupyter notebook'
alias lab='jupyter lab'
alias v='nvim'
alias vim='nvim'
alias mk='make'
alias du='du -sh'
alias untar='tar -xvf'
alias untargz='tar -xzvf'
alias untarbz='tar -xjvf'
alias tn='tmux new -s'
alias ta='tmux attach -t'
alias tls='tmux list-sessions'
alias pt='pytest -v --doctest-modules'
alias doc='open doc/_build/html/index.html'
alias work='cd /Users/jsward/Box\ Sync/01_Research/01_Renewable_Analysis/WRF_Solar_and_Wind/met4ene'
alias magma='ssh -X jas983@magma-login-04.coecis.cornell.edu'
alias magmavis='ssh -X jas983@en-ma-mzhang-vis01.coecis.cornell.edu'
alias ncar='ssh -X -l sward cheyenne.ucar.edu'
alias gis='git status'
alias ga='git add --all :/'
alias gpush='git push origin main'
alias gpull='git pull origin main'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
