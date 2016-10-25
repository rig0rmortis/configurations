[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
xsetroot -cursor_name left_ptr
xset -b
compton -CGb
xmobar &
albert &
thunar --daemon
xrdb -merge ~/.Xresources
feh --bg-scale ~/.wallpapers/.wallpaper-1.jpg
exec xmonad
