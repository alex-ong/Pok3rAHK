-- A global variable for the Hyper Mode
hyper = hs.hotkey.modal.new({}, 'F17')

-- Enter Hyper Mode when F18 (Hyper/Capslock) is pressed
function enterHyperMode()
  hyper.triggered = false
  hyper:enter()
end

-- Leave Hyper Mode when F18 (Hyper/Capslock) is released,
function exitHyperMode()
  hyper:exit()
end

-- Bind the Hyper key
f18 = hs.hotkey.bind({}, 'F18', enterHyperMode, exitHyperMode)


bindings = {}
bindings['s'] = 'down'
bindings['a'] = 'left'
bindings['w'] = 'up'
bindings['d'] = 'right'
for binding, key in pairs(bindings) do
  print(binding, key)
  hyper:bind({}, binding,
    function()
      hs.eventtap.keyStroke({}, key)
    end
  )
end



--release_down = hs.eventtap.event.newKeyEvent({},'down',false)

--hyper:bind('', 'J', 
--function() hs.eventtap.keyStroke({},'down') end)
