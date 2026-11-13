#!/bin/sh

# Remove git-tracked copies and symlink them with existing copies
# (so changes can be reverted piecemeal)
set -e

# zshrc
echo "Regenerating/linking .zshrc"
rm ./zsh/.zshrc
ln ~/.zshrc ./zsh/.zshrc

# gitconfig
echo "Regenerating/linking .gitconfig"
rm ./.gitconfig
ln ~/.gitconfig ./.gitconfig

# VSCode global settings.json
echo "Regenerating/linking VSCode settings"
rm ./.vscode/settings.json
ln ~/Library/"Application Support"/Code/User/settings.json ./.vscode/settings.json

# ghostty config
echo "Regenerating/linking ghostty config"
rm ./ghostty/config.ghostty
ln ~/Library/"Application Support"/com.mitchellh.ghostty/config.ghostty ./ghostty/config.ghostty

# mise config
echo "Regenerating/linking mise config"
rm ./mise.toml
ln ~/.config/mise/config.toml ./mise.toml

echo "Done!"
