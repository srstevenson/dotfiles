-- ~/.hammerspoon/init.lua

local modifiers = {"cmd", "alt", "ctrl"}

function bindMoveToUnit(key, layout)
    hs.hotkey.bind(mods, key, function()
        hs.application.frontmostApplication():focusedWindow():moveToUnit(layout, 0)
    end)
end

bindMoveToUnit("left", hs.layout.left50)
bindMoveToUnit("right", hs.layout.right50)
bindMoveToUnit("up", hs.layout.maximized)

hs.hotkey.bind(modifiers, "r", function()
    hs.reload()
    hs.notify.new({title="Hammerspoon", informativeText="Reloaded configuration"}):send()
end)
