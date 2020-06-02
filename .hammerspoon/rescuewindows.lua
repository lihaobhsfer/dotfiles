-- Rescue Windows
-- Move any windows that are off-screen onto the main screen
-- https://footle.org/2018/01/23/rescuing-windows-with-hammerspoon/
function rescueWindows()
    local screen = hs.screen.mainScreen()
    local screenFrame = screen:fullFrame()
    local wins = hs.window.visibleWindows()
    for i,win in ipairs(wins) do
        local frame = win:frame()
        if not frame:inside(screenFrame) then
            win:moveToScreen(screen, true, true)
        end
    end
end

return rescueWindows
