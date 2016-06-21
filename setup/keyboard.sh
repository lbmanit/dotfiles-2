# # Remap Caps Lock and increase keyboard speed
# 
# I use [Seil] to remap my Caps Lock key to escape.
# 
# ![Seil](/Users/jeff/Desktop/seil.png)
# 
# If you don't want to install Seil, you can also remap your Caps Lock key to ⌃
# , ⌥ or ⌘ (or disable it altogether) in System Preferences ( › System
# Preferences… › Keyboard › Modifier Keys…).
# 
# The key repeat speed can also be changed in System Preferences, or from the
# command line:
# 
#     $ defaults write -g InitialKeyRepeat -int 15 # 250ms
#     $ defaults write -g KeyRepeat -int 2 #33ms
# 
# [Seil]: https://pqrs.org/osx/karabiner/seil.html.en

/Applications/Seil.app/Contents/Library/bin/seil set enable_capslock 1
/Applications/Seil.app/Contents/Library/bin/seil set keycode_capslock 53

defaults write -g InitialKeyRepeat -int 15 # 250ms
defaults write -g KeyRepeat -int 2 #33ms
