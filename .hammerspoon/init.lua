require('config')
-- require('rescuewindow')
require('layout')

local rescueWindows = require "rescuewindows"
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", rescueWindows)
