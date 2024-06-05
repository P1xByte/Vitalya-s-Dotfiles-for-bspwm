echo "Installing all packages..."
sudo apt install zsh pulseaudio pavucontrol rofi bspwm scrot alacritty skhkd polybar nitrogen

echo "Making all folders..."
mkdir ~/Desktop/ ~/Documents/ ~/Downloads/ ~/Music ~/Pictures ~/Pictures/scrots/ ~/Videos 

echo "Copy 'Wallpapers' folder"
cp $PWD/Wallpapers/ ~/Pictures/

echo "Copy all configs..."
mkdir ~/.config/bspwm/ ~/.config/sxhkd/ ~/.config/polybar/
cp $PWD/bspwmrc ~/.config/bspwm/
chmod 775 ~/.config/bspwm/bspwmrc
cp $PWD/sxhkdrc ~/.config/sxhkd/
chmod 775 ~/.config/sxhkd/sxhkdrc
cp $PWD/config.ini ~/.config/polybar/

echo "Change shell, install oh-my-zsh and powerlevel10k theme..."
chsh
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo "Copy .zshrc..."
cp $PWD/zshrc ~/.zshrc

echo "Adding keyboard layout..."
sudo localectl set-x11-keymap us,ru pc105 "" grp:alt_shift_toggle

echo "Dotfiles installed. Installer by neoP1xel :))"




