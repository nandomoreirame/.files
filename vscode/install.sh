#!/bin/bash

cd "$(dirname "${BASH_SOURCE[0]}")" \
    && . "../functions.sh"

debugging "Linking VSCode settings..."

if [ "$(uname)" == "Darwin" ]; then
  rm -rf $HOME/Library/Application\ Support/Code/User/*.json $HOME/Library/Application\ Support/Code/User/snippets
  ln -s $HOME/.files/vscode/osx/snippets $HOME/Library/Application\ Support/Code/User/snippets
  ln -s $HOME/.files/vscode/osx/settings.json $HOME/Library/Application\ Support/Code/User/settings.json
  ln -s $HOME/.files/vscode/osx/keybindings.json $HOME/Library/Application\ Support/Code/User/keybindings.json
  ln -s $HOME/.files/vscode/osx/vsicons.settings.json $HOME/Library/Application\ Support/Code/User/vsicons.settings.json
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  rm -rf $HOME/.config/Code/User/*.json $HOME/.config/Code/User/snippets
  ln -s $HOME/.files/vscode/linux/snippets $HOME/.config/Code/User/snippets
  ln -s $HOME/.files/vscode/linux/settings.json $HOME/.config/Code/User/settings.json
  ln -s $HOME/.files/vscode/linux/keybindings.json $HOME/.config/Code/User/keybindings.json
  ln -s $HOME/.files/vscode/linux/vsicons.settings.json $HOME/.config/Code/User/vsicons.settings.json
fi