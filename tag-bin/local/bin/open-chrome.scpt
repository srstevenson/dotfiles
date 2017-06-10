#!/usr/bin/env osascript

if application "Google Chrome" is running then
    tell application "Google Chrome"
        make new window
        activate
    end tell
else
    activate application "Google Chrome"
end if
