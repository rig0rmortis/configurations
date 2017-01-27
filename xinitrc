# Remap caplock to ctrl
[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap

# Set left pointer cursor, xmonad specifc hackery
xsetroot -cursor_name left_ptr

# This will silence motherboard sounds (invalid keystrokes)
xset -b

# Stuff to get custom icons working
export QT_PLATFORMTHEME=qt5ct && export QT_PLATFORM_PLUGIN=qt5ct && export QT_QPA_PLATFORMTHEME=qt5ct

# Start compton
compton -CGb

# Start xmobar in the background
xmobar &

# Start trayer
trayer --edge bottom --align right --width 15 --transparent true  --SetPartialStrut true --height 22 --alpha 0 --tint 0x1f1f1f &

# Start albert in the background
albert &

# Start the thunar daemon in the background for auto usb mounting
thunar --daemon &

# Set wallpaper
feh --bg-scale ~/.wallpapers/.wallpaper-1.jpg

# Finally, start xmonad!
exec xmonad
