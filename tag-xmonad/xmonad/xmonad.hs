-- ~/.xmonad/xmonad.hs

import XMonad
import XMonad.Config.Mate
import XMonad.Util.EZConfig
import XMonad.Util.Run

main = xmonad $ mateConfig
    { modMask = mod4Mask }
    `additionalKeysP` srsAdditionalKeys

srsAdditionalKeys =
    [ ("M-S-l", safeSpawn "mate-screensaver-command" [ "--lock" ] )
    , ("<Print>", safeSpawnProg "mate-screenshot" )
    ]
