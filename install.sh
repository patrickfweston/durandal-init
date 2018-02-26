#!/usr/bin/env bash

# This is heavily inspired by the amazing Michelle & Luke
# https://github.com/craychee/loki-init
# https://github.com/lukewertz/gabriel-init
# "If things around here aren't working, it's because I'm laughing so hard."

function pause() {
  read -p "$*"
}

CWD=($PWD)

cd ~

# We can't get them directly, but just click this button :)
xcode-select --install

pause 'Press [Enter] once you have installed XCode and XCode Command Line Tools.'

# Just make sure...
sudo xcodebuild -license accept

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Installing software...
brew install ruby
brew install git
brew install wget

brew tap caskroom/cask
brew tap homebrew/dupes
brew tap homebrew/versions
brew tap homebrew/binary
brew tap caskroom/versions

brew install brew-cask

# Browsers
brew cask install google-chrome
# Don't kid yourself... you'll eventually need it
brew cask install firefox

# Random Mac tools
brew cask install 1password # Work passwords

# Install the MacAppStore CLI and git some apps.
# If you haven't purchased these in the App Store, this won't work.
brew install mas
mas signin froboy@gmail.com # This will give a warning if you signed in to iCloud when you set up the computer.
mas install 409201541 # Pages (6.3.1)
mas install 409183694 # Keynote (7.3.1)
mas install 411246225 # Caffeine (1.1.1)
mas install 409203825 # Numbers (4.3.1)
mas install 803453959 # Slack
# id's above are tied to specific versions.
# They're most certainly out of date...
mas upgrade

# Dev tools
brew cask install vagrant
brew cask install virtualbox
brew cask install sequel-pro
brew cask install sourcetree
brew install node
brew install npm

# Get composer and put it in the right place. This will require your password
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

# Be sure we can vagrant
brew install ansible
vagrant plugin install vagrant-hostmanager
vagrant plugin install vagrant-auto_network

brew cask install atom

# Set up PHP tools
# https://philsturgeon.uk/php/2013/08/20/php-static-analysis-in-sublime-text/
# http://benmatselby.github.io/sublime-phpcs/
echo "Setting up PHP Tools"
sudo chown -R `whoami` /usr/local
brew tap homebrew/homebrew-php
brew install phpmd
brew install php-code-sniffer
brew install php-cs-fixer

# Do the Mac thing that you have to do but you shouldn't have to do
# This https://github.com/jirsbek/SSH-keys-in-macOS-Sierra-keychain
curl -o ~/Library/LaunchAgents/ssh.add.a.plist https://raw.githubusercontent.com/jirsbek/SSH-keys-in-macOS-Sierra-keychain/master/ssh.add.a.plist

# Hold my own hand to make sure I finish configuring.
echo "Add your ssh keys (you put them in your secret hiding place)."
pause 'Press [Enter] when you have added your ssh key.'
chmod 400 ~/.ssh/*

# Move preference files
echo "Setting up your preference files."
cp .gitconfig ~/.gitconfig
cp .gitignore_global ~/.gitignore_global
cp .profile ~/.profile

# Get git things
curl -o /usr/local/etc/bash_completion.d/git-prompt.sh https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
curl -o /usr/local/etc/bash_completion.d/git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash

echo "NICE WORK! Now get going... THEY'RE EVERYWHERE!!!"
