# Set personal aliases, overriding those provided by oh-my-zsh libs,
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#alias to start the docker container for oracle dayabase
#alias dockerOracleDB="sudo docker start oracle-xe-container"
alias startOracleDB='docker start oracle-xe-container && docker exec -it oracle-xe-container bash -c "source /u01/app/oracle/product/11.2.0/xe/bin/oracle_env.sh && rlwrap /u01/app/oracle/product/11.2.0/xe/bin/sqlplus system/oracle@localhost:1521/XE"'
#alias for hdmi on, off, hdmi scr right, hdmi scr left
alias hdmi-on='xrandr --output HDMI-A-0 --auto'
alias hdmi-off='xrandr --output HDMI-A-0 --off'
alias hdmi-left='xrandr --output HDMI-A-0 --left-of eDP --mode 1920x1080'
alias hdmi-right='xrandr --output HDMI-A-0 --right-of eDP --mode 1920x1080'
#alias to start docker.service and docker.socket
alias dockerService='sudo systemctl start docker.service'
alias dockerSocket='sudo systemctl start docker.socket'
alias lock='betterlockscreen -l -u /home/happy-kitty/Pictures/Wallpapers/'
