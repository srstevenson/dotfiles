-- ~/.hammerspoon/init.lua

modifiers = {"cmd", "alt", "ctrl"}

hs.window.animationDuration = 0

hs.hotkey.bind(modifiers, "r", function()
    hs.reload()
    hs.notify.new({title="Hammerspoon",
        informativeText="Reloaded configuration"}):send()
end)

hs.hotkey.bind(modifiers, "up", function()
    hs.window.focusedWindow():moveToUnit(hs.layout.maximized, 0)
end)

hs.hotkey.bind(modifiers, "left", function()
    hs.window.focusedWindow():moveToUnit(hs.layout.left50, 0)
end)

hs.hotkey.bind(modifiers, "right", function()
    hs.window.focusedWindow():moveToUnit(hs.layout.right50, 0)
end)

hs.hotkey.bind(modifiers, "h", function()
    hs.window.focusedWindow():moveOneScreenWest();
end)

hs.hotkey.bind(modifiers, "j", function()
    hs.window.focusedWindow():moveOneScreenSouth();
end)

hs.hotkey.bind(modifiers, "k", function()
    hs.window.focusedWindow():moveOneScreenNorth();
end)

hs.hotkey.bind(modifiers, "l", function()
    hs.window.focusedWindow():moveOneScreenEast();
end)

sleepInhibitor = hs.menubar.new()

function setSleepInhibitorDisplay(state)
    if state then
        sleepInhibitor:setTitle("◉")
        sleepInhibitor:setTooltip("Sleep inhibited")
    else
        sleepInhibitor:setTitle("◎")
        sleepInhibitor:setTooltip("Sleep allowed")
    end
end

function sleepInhibitorToggle()
    setSleepInhibitorDisplay(hs.caffeinate.toggle("displayIdle"))
end

hs.hotkey.bind(modifiers, "i", function() sleepInhibitorToggle() end)

if sleepInhibitor then
    sleepInhibitor:setClickCallback(sleepInhibitorToggle)
    setSleepInhibitorDisplay(hs.caffeinate.get("displayIdle"))
end
