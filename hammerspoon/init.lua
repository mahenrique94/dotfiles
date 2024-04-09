hs.hotkey.bind({"cmd", "alt", "ctrl"}, "down", function()
  local focusedWindow = hs.window.focusedWindow()
  local windowFrame = focusedWindow:frame()

  if focusedWindow then
    local screenFrame = focusedWindow:screen():frame()
    local newFrame = hs.geometry.rect(
      screenFrame.x,                                       -- X position to center horizontally
      screenFrame.y + screenFrame.h - windowFrame.h,       -- Y position at the bottom of the screen
      1920,                                                -- Width
      screenFrame.h - 1080                                 -- Height
    )

    focusedWindow:setFrame(newFrame)
  end
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "left", function()
  local focusedWindow = hs.window.focusedWindow()

  if focusedWindow then
    local screenFrame = focusedWindow:screen():frame()
    local newFrame = hs.geometry.rect(
      screenFrame.x,                                       -- X position to center horizontally
      screenFrame.y,                                       -- Y position at the top of the screen
      1920,                                                -- Width
      1080                                                 -- Height
    )

    focusedWindow:setFrame(newFrame)
  end
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "right", function()
  local focusedWindow = hs.window.focusedWindow()
  local windowFrame = focusedWindow:frame()

  if focusedWindow then
    local screenFrame = focusedWindow:screen():frame()
    local newFrame = hs.geometry.rect(
      screenFrame.x + screenFrame.w - windowFrame.w,       -- X top right
      screenFrame.y,                                       -- Y top
      screenFrame.w - 1920,                                -- Width
      screenFrame.h                                        -- Height
    )

    focusedWindow:setFrame(newFrame)
  end
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
  hs.reload()
end)

hs.alert.show("Config loaded")
