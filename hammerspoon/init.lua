hs.hotkey.bind({"cmd", "alt", "ctrl"}, "C", function()
  local focusedWindow = hs.window.focusedWindow()

  if focusedWindow then
    local screenFrame = focusedWindow:screen():frame()
    local newFrame = hs.geometry.rect(
      screenFrame.x + (screenFrame.w - 1920) / 2, -- X position to center horizontally
      screenFrame.y,                              -- Y position at the top of the screen
      1920,                                       -- Width
      1080                                        -- Height
    )

    focusedWindow:setFrame(newFrame)
  end
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
  hs.reload()
end)

hs.alert.show("Config loaded")
