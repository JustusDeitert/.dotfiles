#!/bin/sh

source ~/.dotfiles/.functions/ask.sh

echo $HOME

# Associated Array workaround for bash < v4.0
# ------------------------->
installer=(
    'Oh My Zsh && Homebrew::.installer/setup_system.sh'
    'Brews: php71, mysql, etc..::.installer/brews.sh'
    'Global Node Packages::.installer/node_modules.sh'
    'Some macOS Apps::.installer/brew_casks.sh'
    'Atom Editor Packages::.installer/atom_packages.sh'
    'Dotfiles Symlinks::.installer/create_symlinks.sh'
)

for index in "${installer[@]}" ; do
  key="${index%%::*}"
  value="${index##*::}"

  if  ask "Do you want to install $key"; then
      echo "Installing $key ..."
      source $value
  fi
done
