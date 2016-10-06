import XMonad
import XMonad.Config.Desktop
import XMonad.Layout.NoBorders
import Graphics.X11.ExtraTypes.XF86
import XMonad.Util.EZConfig
import XMonad.Util.Paste
import XMonad.Hooks.ManageDocks

baseConfig = desktopConfig

myKeys =
  [
    ((0, xF86XK_MonBrightnessUp),   spawn "xbacklight +10"),
    ((0, xF86XK_MonBrightnessDown), spawn "xbacklight -10"),
    ((0, xF86XK_AudioMute),        spawn "amixer set Master toggle"),
    ((0, xF86XK_AudioRaiseVolume), spawn "amixer set Master 5+"),
    ((0, xF86XK_AudioLowerVolume), spawn "amixer set Master 5-"),
    ((0, xK_Insert), pasteSelection)
   ]

myLayoutHook = avoidStruts $ smartBorders (layoutHook baseConfig)

myManageHook = composeAll
  [ className =? "Steam"    --> doFloat
  , className =? "albert"   --> doFloat]

main = xmonad $ baseConfig
  { terminal = "urxvt"
  , modMask	= mod1Mask
  , borderWidth = 1
  , layoutHook = myLayoutHook
  -- , manageHook = myManageHook <+> manageDocks
  , manageHook = manageHook baseConfig <+> manageDocks
	} `additionalKeys` myKeys
