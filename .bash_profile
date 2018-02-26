export PATH="$HOME/.composer/vendor/bin:$PATH"

source ~/.git-prompt.sh

export PATH=$PATH:usr/bin
export PATH=/usr/local/bin:$PATH

if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
  source /usr/local/etc/bash_completion.d/git-completion.bash
  source /usr/local/etc/bash_completion.d/git-prompt.sh
  export PS1="[\D{%l:%M%P} \u:\w]\`__git_ps1\` \$ "
fi

{ eval `ssh-agent`; ssh-add -A; } &>/dev/null

alias drupalcs="phpcs --standard=Drupal --extensions='php,module,inc,install,test,profile,theme,js,css,info,txt'"


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "/Users/patrick/.bash/git-aware-prompt/main.sh"
export PS1="\u@\h \W \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "
export SUDO_PS1="\[$bakred\]\u@\h\[$txtrst\] \w\$ "

export PATH="$PATH:/Applications/DevDesktop/tools"

# Git prompt
if [ -f /usr/local/etc/bash_completion.d/git-prompt.sh ]; then
  source /usr/local/etc/bash_completion.d/git-prompt.sh
  export PS1="[\D{%l:%M%P} \u@`scutil --get ComputerName`:\w]\`__git_ps1\` \$ "
fi

# Git tab completion
if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
  source /usr/local/etc/bash_completion.d/git-completion.bash
fi

export PATH="$PATH:/Applications/DevDesktop/tools"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Automatically added by Platform.sh CLI installer
export PATH="/Users/patrick/.platformsh/bin:$PATH"
. '/Users/patrick/.platformsh/shell-config.rc' 2>/dev/null
