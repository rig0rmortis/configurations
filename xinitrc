# Remap caplock to ctrl
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap

# Set left pointer cursor, xmonad specifc hackery
xsetroot -cursor_name left_ptr

# This will silence motherboard sounds (invalid keystrokes)
xset -b

# Start compton
compton -CGb

# Start xmobar in the background
xmobar &

# Start trayer
trayer --edge bottom --align right --width 15 --transparent true --SetDockType true --SetPartialStrut true --height 21 --tint 0x212121 &

# Start albert in the background
albert &

# Start the thunar daemon in the background for auto usb mounting
thunar --daemon &

# Set wallpaper
feh --bg-scale ~/.wallpapers/.wallpaper-1.jpg

# Finally, start xmonad!
exec xmonad
