require('config')
require('layout')
require('window')
require('finder_watcher')
require('wifi_watcher')
hs.application.enableSpotlightForNameSearches(true)
local rescueWindows = require "rescuewindows"
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", rescueWindows)

-- official website fancier hello world
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "W", function()
  hs.notify.new({title="Hammerspoon", informativeText="Hello World"}):send()
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "C", function()
  hs.reload()
end)
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "M", function() 
  moveAllWindows()
end)
hs.alert.show("Config loaded")
