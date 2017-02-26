# share_mod
This simple application allows modifier keys from different USB devices to interact in macOS.

Current versions of macOS (as of 2/25/2017) do not allow modifier keys from one USB device to modify input from another USB device. This will prevent a peripheral such as a footswitch (e.g. [this product](https://www.kinesis-ergo.com/shop/savant-elite2-waterproof-triple-pedal/)) from modifying the keys pressed on your keyboard (e.g. mapping a pedal on the footswitch to <SHIFT> and then pressing it will not cause keystrokes on your keyboard to be capitalized). None of the workarounds I found worked for macOS Sierra 10.12, due to changes in user accessibility privileges for apps. This repository contains a workaround for the current version of Sierra.

## Installation
Simply run "make install" to install an app called ShareMod to your /Applications folder. When this app is on, your modifier keys will be shared across USB devices, allowing peripheral devices to interact with each other.

In order for the app to function properly, you need to give it user accessibility privileges. To do this, go to "System Preferences" > "Security and Privacy" > "Privacy" > "Accessibility". Click the lock in the lower left corner to make changes, then click the "+" icon, and add "ShareMod" to the list of allowed apps. You may want to invoke ShareMod on system startup [as explained here](http://osxdaily.com/2006/11/29/how-to-launch-application-on-system-start-in-mac-os-x/). 

(If the application does not appear in launch pad, you can always invoke it from a terminal using "/Applications/ShareMod.app/Contents/MacOS/ShareMod".)

## Credits
The 'alterkeys.c' code used to modify keystrokes is from here: [https://github.com/maravillas/dual-keyboards](https://github.com/maravillas/dual-keyboards) (the instructions in this repository for setting up the code don't work in macOS Sierra due to a change in how User Accessibility whitelists work) . The original author is Chance Miller of [http://dotdotcomorg.net/](http://dotdotcomorg.net/). The 'appify' script used to turn this binary into an app comes from here: [https://mathiasbynens.be/notes/shell-script-mac-apps](https://mathiasbynens.be/notes/shell-script-mac-apps)
