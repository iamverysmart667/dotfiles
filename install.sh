# packages
pacman -S w3m tmux git gotop rxvt-unicode telegram-desktop rofi ranger

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
yay -S noto-fonts noto-fonts-emoji noto-fonts-cjk

# install pure zsh prompt
mkdir -p "$HOME/.zsh"
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
echo "fpath+=$HOME/.zsh/pure"

# copy configs
git clone https://github.com/nullpointer666/dotfiles "$HOME/dotfiles"
cp "$HOME/dotfiles/.zshrc" "$HOME/.zshrc"
cp "$HOME/dotfiles/bspwm/bspwmrc" "$HOME/.config/bspwm/bspwmrc"
cp "$HOME/dotfiles/sxhkd/sxhkdrc" "$HOME/.config/sxhkd/sxhkdrc"

