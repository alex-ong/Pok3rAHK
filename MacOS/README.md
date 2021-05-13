Karabiner-elements + Hammerspoon
===

1) Install Homebrew
2) Install Karabiner-elements, and bind capslock to F17
3) Install Hammerspoon, and create shortcuts using F17+Keys

Installing Homebrew
===
1) Open a terminal

2) Paste `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

(This url might be outdated. For latest one, visit brew.sh)

3) Press enter

This took around 10 minutes on my mac, and it installs XCode silently for 10-15 minutes without any progress update


Installing Karabiner-elements
===

1) Open terminal

2) brew install cask karabiner-elements

3) After it starts, you need to enable a large amount of permissions.

4) Your Keyboard will "disconnect" since karabiner is injecting a fake one.

Setting Capslock to Karabiner-elements
===

Three mthods

Method 1:

* go to `~/.config/karabiner/karabiner.json`

* add the the json code inside karabiner_capslock.json to this json, under the 
"simple modifications" section 

Method 2:

* Add a new simple modification as per this image

* (todo, this screenshot link)

Method 3:

* Run capslock_to_f18.sh

* (todo, this might require python because parsing json lmao)


Installing HammerSpoon
===

1) brew install cask hammerspoon

Adding Hammerspoon bindings for Pok3rAHK
===

Copy hammerspoon_init.lua from this folder to `~/.config/hammerspoon/todo lol`

Everything should work!

