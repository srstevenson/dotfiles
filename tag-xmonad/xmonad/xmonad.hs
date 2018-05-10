-- ~/.xmonad/xmonad.hs

import XMonad
import XMonad.Config.Mate
import XMonad.Util.EZConfig
import XMonad.Util.Run

main = xmonad $ mateConfig
    { modMask = mod4Mask
    , manageHook = srsManageHook <+> manageHook mateConfig
    }
    `additionalKeysP`
    [ ("M-S-l", safeSpawn "mate-screensaver-command" [ "--lock" ] )
    , ("<Print>", safeSpawnProg "mate-screenshot" ) ]

srsManageHook = composeAll
    [ className =? "Enpass-Desktop" --> doShift "9"
    , className =? "Firefox"        --> doShift "2"
    ]
