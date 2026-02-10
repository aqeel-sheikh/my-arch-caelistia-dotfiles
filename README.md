# Dotfiles - Arch Linux Backup

This repository contains my system configuration and package lists for an easy one-click restoration.

## Contents
- `pkglist.txt`: List of official pacman packages.
- `aurlist.txt`: List of AUR packages.
- `config/`: Configuration folders from `~/.config`.
- `.bashrc`, `.bash_profile`: Shell configurations.
- `update.sh`: Script to update the repo with current local settings.
- `install.sh`: Script to restore everything on a new system.

## How to use

### Update the backup
Run the update script whenever you make changes to your system or configs:
```bash
./update.sh
```
Then commit and push your changes to GitHub.

### Restore on a new system
1. Clone the repo:
   ```bash
   git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
   ```
2. Run the install script:
   ```bash
   cd ~/dotfiles
   chmod +x install.sh
   ./install.sh
   ```

Note: The script will prompt for your password for `sudo` and `paru` operations.
