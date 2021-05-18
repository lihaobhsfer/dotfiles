local u = hs.geometry.unitrect
--layoutLaptop = {
--  {'Google Chrome', nil, MACBOOK_MONITOR, u(0, 0, 1, 1), nil, nil},
--  {'Mail', nil, MACBOOK_MONITOR, u(0, 0, 1, 1), nil, nil},
--  {'Slack', nil, MACBOOK_MONITOR, u(0, 0, 1, 1), nil, nil},
--  {'Spotify', nil, MACBOOK_MONITOR, u(0, 0, 1, 1), nil, nil},
--  {'iTerm2', nil, MACBOOK_MONITOR, u(0, 0, 1, 1), nil, nil},
--}

layoutLaptopMeetings = {
  {'Google Chrome', nil, MACBOOK_MONITOR, u(0, 0, 1, 1), nil, nil},
  {'Slack', nil, MACBOOK_MONITOR, u(0, 0, 1, 1), nil, nil},
  {'zoom.us', nil, MACBOOK_MONITOR, u(0, 0, 1, 1), nil, nil},
  {'Zoom Meeting', nil, MACBOOK_MONITOR, u(0, 0, 1, 1), nil, nil},
  {'iTerm2', nil, MACBOOK_MONITOR, u(0, 0, 1, 1), nil, nil},
}

applyLayout = function(name, layout)
  for _, entry in ipairs(layout) do
    local name = entry[1]
    local show = entry['visible']
    if show ~= nil then
      local app = hs.application.get(name)
      if app then
        if show then
          app:unhide()
        else
          app:hide()
        end
      end
    end
  end
  hs.layout.apply(layout)
  hs.notify.new({title='Layout', informativeText='Applied layout: ' .. name}):send()
end

moveAllWindows = function()
  screen = hs.screen.mainScreen()
  wins = hs.window.allWindows()
  print(wins)
  for _, win in ipairs(wins) do
    local frame = win:frame()
--    if not frame:inside(screenFrame) then
    win:moveToScreen(screen, true, true)
    --end
  end
end
