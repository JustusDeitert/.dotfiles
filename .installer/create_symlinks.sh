#!/bin/sh

# Define the .dotfiles being symlinked to your home Directory
# additionaly you have to add them to your .dotfiles directory
dotfiles=(
  .zshrc
)

for dotfile in "${dotfiles[@]}";do
  ln -sf "$HOME/.dotfiles/${dotfile}" "../${dotfile}"
done
