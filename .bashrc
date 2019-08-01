#MyConfigure: ~/.bashrc

export PS1="\[\e[33;48m\][\u@\h]:\w ~$ \[\e[0;10m\]"

alias glog="git log --oneline --graph --pretty=format:\"%C(yellow)%h %Cblue%ad %Creset %s %Cgreen(%cr)%Cred%d\" --date=format:\"%Y-%m-%d %H:%M:%s\" -n 100"
