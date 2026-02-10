# 🌌 my-arch-caelistia-dotfiles

A streamlined backup of my Arch Linux setup, featuring the **Caelestia** desktop environment (Hyprland based). Designed for quick restoration with a single script.

## ✨ Features
- **WM:** Hyprland
- **Terminal:** Ghostty
- **Shell:** Fish & Bash (with Starship prompt)
- **Editor:** Kate & Vim
- **AUR Helper:** Paru
- **Theme:** Caelestia / Caelestia-Resizer integration

## 📂 Contents
- `pkglist.txt`: Official Pacman packages.
- `aurlist.txt`: AUR packages.
- `config/`: Configuration for Hyprland, Ghostty, Fish, Fastfetch, and more.
- `update.sh`: Script to sync local changes into this repository.
- `install.sh`: One-click restoration script.

## 🚀 Restoration (New System)

1. **Install Git:**
   ```bash
   sudo pacman -S --needed git
   ```

2. **Clone the repository:**
   ```bash
   git clone https://github.com/aqeel-sheikh/my-arch-caelistia-dotfiles.git ~/dotfiles
   ```

3. **Run the installation script:**
   ```bash
   cd ~/dotfiles
   chmod +x install.sh
   ./install.sh
   ```
   *Note: The script will prompt for your sudo password to install packages.*

## 🔄 How to Update
Whenever you change your configurations or install new packages, run the update script and push your changes:
```bash
cd ~/dotfiles
./update.sh
git add .
git commit -m "Update system configurations"
git push
```
