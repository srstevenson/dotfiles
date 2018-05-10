-- ~/.xmonad/xmonad.hs

import XMonad
import XMonad.Config.Mate
import XMonad.Util.EZConfig
import XMonad.Util.Run

main = xmonad $ mateConfig
    { manageHook = srsManageHook <+> manageHook mateConfig
    , modMask = srsModMask
    }
    `additionalKeysP` srsAdditionalKeys

srsModMask = mod4Mask

srsManageHook = composeAll
    [ className =? "Enpass-Desktop" --> doShift "9"
    , className =? "Firefox" --> doShift "2"
    ]

srsAdditionalKeys =
    [ ("M-S-l", safeSpawn "mate-screensaver-command" [ "--lock" ] )
    , ("<Print>", safeSpawnProg "mate-screenshot" )
    ]
