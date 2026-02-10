#!/bin/bash

DOTFILES_DIR="$HOME/dotfiles"

echo "Starting system restoration..."

# Install AUR helper (paru) if not installed
if ! command -v paru &> /dev/null; then
    echo "Installing paru..."
    sudo pacman -S --needed base-devel git
    git clone https://aur.archlinux.org/paru.git /tmp/paru
    cd /tmp/paru && makepkg -si --noconfirm
    cd "$DOTFILES_DIR"
fi

# Install official packages
echo "Installing official packages..."
sudo pacman -S --needed --noconfirm - < "$DOTFILES_DIR/pkglist.txt"

# Install AUR packages
echo "Installing AUR packages..."
paru -S --needed --noconfirm - < "$DOTFILES_DIR/aurlist.txt"

# Restore configs
echo "Restoring configuration files..."
mkdir -p "$HOME/.config"

cp -rv "$DOTFILES_DIR/config/"* "$HOME/.config/"
cp "$DOTFILES_DIR/.bashrc" "$HOME/"
cp "$DOTFILES_DIR/.bash_profile" "$HOME/"

echo "Restoration complete! You might need to restart your session."
