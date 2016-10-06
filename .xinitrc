[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
xsetroot -cursor_name left_ptr
compton -CGb
xmobar &
albert &
xrdb -merge ~/.Xresources
feh --bg-scale ~/.wallpapers/.wallpaper.jpg
exec xmonad
