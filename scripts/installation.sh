# Install Paru
sudo pacman -S --needed --noconfirm base-devel

cd ~
mkdir paru
git clone https://aur.archlinux.org/paru.git paru
cd ~/paru
makepkg -si

# Install OS Dependencies
sudo pacman -S --needed --noconfirm hyprland
sudo pacman -S --needed --noconfirm noctalia
sudo pacman -S --needed --noconfirm zsh

sudo pacman -S which
chsh -s $(which zsh)

sudo pacman -S --needed --noconfirm lf
sudo pacman -S --needed --noconfirm dolphin
sudo pacman -S --needed --noconfirm stow
sudo pacman -S --needed --noconfirm neovim

sudo pacman -S --needed --noconfirm bluez bluez-utils
sudo pacman -S --needed --noconfirm brightnessctl
sudo pacman -S --needed --noconfirm fastapi

sudo pacman -S --needed --noconfirm xdg-desktop-portal-gtk

sudo pacman -S --needed --noconfirm openssh

# Neovim text
# Do the following to neovim :TSInstall latex
sudo pacman -S python-pylatexenc

# Programming languages
sudo pacman -S --needed --noconfirm python3
sudo pacman -S --needed --noconfirm g++
sudo pacman -S --needed --noconfirm node

# Other programming stuff
sudo pacman -S --needed --noconfirm npm
sudo pacman -S --needed --noconfirm docker docker-compose

# Moving the files
