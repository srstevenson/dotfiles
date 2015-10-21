-- ~/.hammerspoon/init.lua

local modifiers = {"cmd", "alt", "ctrl"}

function resizeFocusedWindow(layout)
    hs.application.frontmostApplication():focusedWindow():moveToUnit(layout, 0)
end

hs.hotkey.bind(modifiers, "up", function()
    resizeFocusedWindow(hs.layout.maximized)
end)

hs.hotkey.bind(modifiers, "left", function()
    resizeFocusedWindow(hs.layout.left50)
end)

hs.hotkey.bind(modifiers, "right", function()
    resizeFocusedWindow(hs.layout.right50)
end)

hs.hotkey.bind(modifiers, "r", function()
    hs.reload()
    hs.notify.new({title="Hammerspoon", informativeText="Reloaded configuration"}):send()
end)
