## Personal dot files and configurations

* i3
* i3 status
* bspwm
* polybar
* vimrc
* bashrc
* alacritty
* termite
* dunst
* picom
* rofi
* sxhkd

### Scripts and whatnot
* .local/bin folder


Add the following to .bashrc/.zshrc
```
## Check for personal bash settings and source
if [ -f "$HOME/.shell-personal" ]; then
  . $HOME/.bash-personal
fi
```
