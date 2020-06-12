require('config')
require('layout')
require('window')

local rescueWindows = require "rescuewindows"
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", rescueWindows)

-- official website fancier hello world
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "W", function()
  hs.notify.new({title="Hammerspoon", informativeText="Hello World"}):send()
end)
