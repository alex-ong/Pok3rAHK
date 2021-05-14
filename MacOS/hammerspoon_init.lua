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
-- wasd
bindings['s'] = 'down'
bindings['a'] = 'left'
bindings['w'] = 'up'
bindings['d'] = 'right'
-- ijkl
bindings['i'] = 'up'
bindings['j'] = 'left'
bindings['k'] = 'down'
bindings['l'] = 'right'

-- home end etc
bindings['u'] = 'pageup'
bindings['o'] = 'pagedown'

bindings['h'] = 'home'
bindings['n'] = 'end'


-- Function keys
bindings['1'] = 'f1'
bindings['2'] = 'f2'
bindings['3'] = 'f3'
bindings['4'] = 'f4'
bindings['5'] = 'f5'
bindings['6'] = 'f6'
bindings['7'] = 'f7'
bindings['8'] = 'f8'
bindings['9'] = 'f9'
bindings['0'] = 'f10'
bindings['-'] = 'f11'
bindings['='] = 'f12'

-- Command keys idk
--bindings['p'] = 'printscreen'
--bindings['['] = 'scrolllock'
--bindings[']'] = 'pause'
--bindings[';'] = 'insert'
--bindings[','] = 'volume_down'
--bindings['.'] = 'volume_up'
--bindings['/'] = 'volume_mute'

pushes = {}
releases = {}
for binding, key in pairs(bindings) do
  -- print(binding, key)
  push = hs.eventtap.event.newKeyEvent({}, key, true)
  release = hs.eventtap.event.newKeyEvent({}, key, false)
  pushes[binding] = push
  releases[binding] = release
  hyper:bind({}, binding,
    function()
      -- hs.eventtap.keyStroke({}, key)
      pushes[binding]:post()
    end,
    function()
      releases[binidng]:post() --this doesnt work yet rip
    end
  )
end


--TODO: 
-- At the moment, holding down a key doesnt cause autorepeat
-- Also: [shift/ctrl] + [caps i] won't 
--release_down = hs.eventtap.event.newKeyEvent({},'down',false)
--release_down = hs.eventtap.event.newKeyEvent({},'down',true)


--hyper:bind('', 'J', 
--function() hs.eventtap.keyStroke({},'down') end)