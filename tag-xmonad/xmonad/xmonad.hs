-- ~/.xmonad/xmonad.hs

import XMonad
import XMonad.Config.Mate
import XMonad.Util.EZConfig
import XMonad.Util.Run

main = xmonad $ mateConfig
    { modMask = mod4Mask }
    `additionalKeysP`
    [ ("M-S-l", safeSpawn "mate-screensaver-command" [ "--lock" ] ) ]
