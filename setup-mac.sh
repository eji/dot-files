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

## パッケージのインストール
brew update
brew upgrade

brew tap caskroom/cask || true
brew tap homebrew/binary || true
brew tap homebrew/versions || true

brew install brew-cask
brew install git
brew install vim
brew install zsh
brew install tmux
brew install wget
brew install htop-osx

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
brew cask install google-chrome
brew cask install firefox
brew cask install yorufukurou

brew cask alfred link || true

brew cleanup
brew cask cleanup
