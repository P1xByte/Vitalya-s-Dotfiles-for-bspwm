echo "Installing all packages..."
sudo apt install pulseaudio pavucontrol rofi bspwm scrot alacritty skhkd polybar nitrogen

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

echo "Adding keyboard layout..."
sudo localectl set-x11-keymap us,ru pc105 "" grp:alt_shift_toggle

echo "Dotfiles installed. Installer by neoP1xel :))"




