-- ~/.xmonad/xmonad.hs

import XMonad
import XMonad.Config.Desktop
import XMonad.Util.EZConfig
import XMonad.Util.Run

main = xmonad $ desktopConfig
    { modMask = mod4Mask }
    `additionalKeysP` srsAdditionalKeys

srsAdditionalKeys =
    [ ("M-S-l", safeSpawn "mate-screensaver-command" [ "--lock" ] )
    , ("<Print>", safeSpawnProg "mate-screenshot" )
    ]
