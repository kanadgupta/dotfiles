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
rm ./vscode/settings.json
ln ~/Library/"Application Support"/Code/User/settings.json ./vscode/settings.json

echo "Done!"
