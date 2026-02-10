#!/bin/bash

DOTFILES_DIR="$HOME/dotfiles"

echo "Updating package lists..."
pacman -Qne > "$DOTFILES_DIR/pkglist.txt"
pacman -Qme > "$DOTFILES_DIR/aurlist.txt"

echo "Backing up configs..."

# List of config folders/files to backup from ~/.config
CONFIGS=(
    "hypr"
    "ghostty"
    "fish"
    "fastfetch"
    "btop"
    "starship.toml"
    "qt5ct"
    "qt6ct"
)

for config in "${CONFIGS[@]}"; do
    if [ -e "$HOME/.config/$config" ]; then
        rm -rf "$DOTFILES_DIR/config/$config"
        cp -r "$HOME/.config/$config" "$DOTFILES_DIR/config/"
    fi
done

# Home directory dotfiles
cp "$HOME/.bashrc" "$DOTFILES_DIR/"
cp "$HOME/.bash_profile" "$DOTFILES_DIR/"

echo "Update complete. Check ~/dotfiles and commit your changes."
