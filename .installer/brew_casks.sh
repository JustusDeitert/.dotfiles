#!/bin/sh

# define applications to be installed
apps=(
    google-chrome
    firefox
    skype
    sequel-pro
    github
    transmission
    atom
    dropbox
    appcleaner
    caffeine
    vlc
    the-unarchiver
    iterm2
    sketch
    whatsapp
    messenger
)

# install specified apps
for app in "${apps[@]}"
    do brew cask install $app
done
