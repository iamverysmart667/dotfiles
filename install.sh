# packages
pacman -S man w3m tmux git gotop rxvt-unicode telegram-desktop rofi ranger python-pywal picom papirus-icon-theme adapta-gtk-theme mpv

# install wm and dm
pacman -S bspwm sxhkd lxdm

# install microcode updates
pacman -S intel-ucode

# configure refind for microcode updates

# Install yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay -S gotop
yay -S noto-fonts noto-fonts-emoji noto-fonts-cjk ttf-times-new-roman
yay -S polybar betterlockscreen
yay -S pulseaudio pulseaudio-alsa alsa alsa-utils
yay -S texlive-most zathura zathura-pdf-mupdf zathura-djvu
yay -S xf86-video-intel
yay -S xorg-xfd
yay -S nodejs python-pynvim

git clone https://github.com/stark/siji && cd siji
./install.sh

# install pure zsh prompt
mkdir -p "$HOME/.zsh"
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
echo "fpath+=$HOME/.zsh/pure" >> "$HOME/.zshrc"

git clone https://github.com/jeffreytse/zsh-vi-mode.git $HOME/.zsh/zsh-vi-mode
echo "source $HOME/.zsh-vi-mode/zsh-vi-mode.plugin.zsh" >> $HOME/.zshrc

# copy configs
git clone https://github.com/nullpointer666/dotfiles "$HOME/dotfiles"
cp "$HOME/dotfiles/.zshrc" "$HOME/.zshrc"
cp "$HOME/dotfiles/bspwm/bspwmrc" "$HOME/.config/bspwm/bspwmrc"
cp "$HOME/dotfiles/sxhkd/sxhkdrc" "$HOME/.config/sxhkd/sxhkdrc"
cp "$HOME/dotfiles/polybar/config" "$HOME/.config/polybar/config"
