source ~/.bash_git

alias dm='docker-machine'
alias dms='docker-machine start default'
alias dm-bootstrap='docker-machine create --driver virtualbox default'

alias daff='daff.py'

alias branch-name='git rev-parse --abbrev-ref HEAD'

alias g="git"
alias ga="git add"
alias gap="git add -p"
alias gau='git add -u :/'
alias gaa='git add -A :/'
alias gai='git add -i'
alias gb="git branch -vv"
alias gbd="git branch -d"
alias gc="git commit"
alias gcm="git checkout master"
alias gcb="git checkout -b"
alias gco="git checkout"
alias gd="git diff"
alias gdd="git diff --cached"
alias gds="git diff --stat"
alias gpl='git pull origin $(branch-name)'
alias gps='git push -u origin $(branch-name)'
alias gpf='git push -f origin $(branch-name)'
alias gf="git fetch"
alias gt="git log --all --graph --pretty='format:%Cblue%h %C(auto)%d %Creset%s %C(green)<%an> %C(Yellow)%ar'"
alias glo='git log --oneline'
alias glog='git log --oneline --graph'
alias gs="git status"
alias gri='git rebase -i'
alias gr="git rebase"
alias grf='git reflog'

alias gsd="git submodule foreach 'git diff'"
alias gspl='git submodule update --remote --recursive'
alias gsgps='git push --recursive-submodules=check'

subl() {
	C:\\Program\ Files\\Sublime\ Text\ 3\\sublime_text.exe $1 &
}

lp() {
	C:\\Users\\rozh\\Downloads\\LINQPad5.05.02\-AnyCPU\\LINQPad.exe $1 &
}

PROMPT_COMMAND='ConEmuC -StoreCWD'

PATH=$PATH:/c/Program\ Files\ \(x86\)/Microsoft\ Visual\ Studio\ 14.0/Common7/IDE

emojis=(😀 💰 💵 📡 🏄 🐰 🏆 🛀 🚀 🍸 🍰 🐮 🐵 🐼 🐧 🐍 🐢 🐙 🐠 🐳 🐬 🐥)
emoji='`echo ${emojis[$RANDOM % 22]}`'
reset='\e[0m'
orange='\e[31m'
yellow='\e[1;33m'

PS1='\[\033]0;$TITLEPREFIX:${PWD//[^[:ascii:]]/?}\007\]\n\[\033[32m\]\u@\h \[\033[35m\]$MSYSTEM \[\033[33m\]\w\[\033[36m\]`__git_ps1`\[\033[0m\]'
PS1="$PS1 $yellow\D{%F %T} $orange$emoji $reset\n🍸 "

export PATH
