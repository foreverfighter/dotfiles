export WORKON_HOME=$HOME/.virtualenvs
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
export VIRTUAL_ENV_DISABLE_PROMPT=
export VIRTUALENVWRAPPER_PYTHON="/Library/Frameworks/Python.framework/Versions/3.6/bin/python3.6"
source /usr/local/bin/virtualenvwrapper.sh
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH="/usr/local/opt/gettext/bin:$PATH"
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin/:$PATH"
export PATH="/Users/yisheng/Library/Python/3.7/bin:$PATH"

# lazy packaging
alias mp='touch dist/a && rm -f dist/* && python setup.py sdist bdist_wheel'
alias up='twine upload dist/*'
alias mpu='touch dist/a && rm -f dist/* && python setup.py sdist bdist_wheel &&  twine upload dist/*'

# lazy meta shortcuts
alias bp='vim ~/.bash_profile'

# lazy django shortcuts
alias rs='python manage.py runserver'
alias mm='python manage.py makemigrations && python manage.py migrate'

# lazy git shortcuts
function gacp(){
  git add *
  git commit -m "$1"
  git push
}
function gcmp(){
  git commit -m "$1"
  git push
}
function gcmsg(){
  git commit -m "$1" 
}

alias gd='git diff'
alias gr1='git reset HEAD~1'
alias gd1='git diff HEAD~1 HEAD'
alias gpf='git push --force-with-lease'
alias gcm='git checkout master'
alias gcd='git checkout develop'
alias gaa='git add .'
alias gb='git branch'
alias gbr='git branch --remote'

alias gs='git status'
alias ga='git add'
alias gau='git add -u'
alias gpu='git pull'
alias gp='git push'
alias gc='git commit -v'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gl='git log --oneline'
alias gg='git log --graph --decorate --oneline'
alias gbd='git branch -D'
