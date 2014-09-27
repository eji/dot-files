#!/bin/sh

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# ユーザー共通の設定

## マルチユーザーでHomebrewを使うための設定
grep "umask 0002" "/etc/profile" 2>&1 1>/dev/null
if [ $? -ne 0 ] ; then
  sudo sh -c "echo 'umask 0002' >> /etc/profile"
fi
grep "umask 0002" "/etc/zprofile" 2>&1 1>/dev/null
if [ $? -ne 0 ] ; then
  sudo sh -c "echo 'umask 0002' >> /etc/zprofile"
fi
umask 0002

## 既にHomebrewのパッケージがインストールされている場合は、ディレクトリのパーミッションを変更する
sudo chmod -R g+w /usr/local
sudo chgrp -R staff /usr/local
sudo chmod -R g+w /opt/homebrew-cask
sudo chgrp -R staff /Library/Caches/Homebrew
sudo chmod -R g+w /Library/Caches/Homebrew

## パッケージのインストール
brew update
brew upgrade

brew tap caskroom/cask || true
brew tap homebrew/binary || true
brew tap homebrew/versions || true

brew install brew-cask
brew install git
brew install vim
brew install emacs
brew install zsh
brew install tmux
brew install wget
brew install htop-osx
brew install pt

brew cask install iterm2 || true
brew cask install google-japanese-ime || true
brew cask install alfred || true
brew cask install hyperswitch || true
brew cask install java || true
brew cask install virtualbox || true
brew cask install vagrant || true
brew cask install dropbox || true
brew cask install evernote || true
brew cask install sourcetree || true
brew cask install skype || true
brew cask install sophos-anti-virus-home-edition || true
brew cask install google-chrome || true
brew cask install firefox || true
brew cask install yorufukurou || true
brew cask install kobito || true
brew cask install slack || true
brew cask install android-studio || true
brew cask install xquartz || true
brew cask install inkscape || true

brew cask alfred link || true

brew cleanup
brew cask cleanup

# Groovy
## GVM
curl -s get.gvmtool.net | bash


# Node
## NVM
curl https://raw.githubusercontent.com/creationix/nvm/v0.17.0/install.sh | bash
