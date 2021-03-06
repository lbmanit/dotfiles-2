# # Minimal configuration for Terminal.app
# 
# The default settings in Terminal.app are quite sensible, so there are just three things I set up:
# 
# * I use [Inconsolata] as my typeface instead of Menlo.
# 
# * For readability, I increased the font size to 16pt and set the line spacing to 1.25.
# 
# * I turned off the (visual) bells, badges, and app icon bouncing.
# 
# ![Inconsolata in 16pt with a line height of 1.25 in Terminal.app]
# 
# I exported the profile and keep it [in my dotfiles] to make it
# easy to set up. To use it, [install Inconsolata] and open `Basic+.terminal` in
# Terminal.app.
# 
# [Inconsolata]: https://github.com/google/fonts/tree/master/ofl/inconsolata
# [in my dotfiles]: https://github.com/jeffkreeftmeijer/dotfiles/blob/master/Basic%2B.terminal
# [Inconsolata in 16pt with a line height of 1.25 in Terminal.app]: images/basic+.png
# [Install Inconsolata]: https://github.com/jeffkreeftmeijer/dotfiles/blob/master/setup/brew/inconsolata.sh

osascript <<EOD
tell application "Terminal"
  local allOpenedWindows
  local initialOpenedWindows
  local windowID

  set initialOpenedWindows to id of every window

  do shell script "open *.terminal"
  delay 1

  set allOpenedWindows to id of every window
  repeat with windowID in allOpenedWindows
    if initialOpenedWindows does not contain windowID then
      close (every window whose id is windowID)
    end if
  end repeat
end tell
EOD

osascript <<EOD
tell application "Terminal"
  set current settings of tabs of windows to settings set "Basic+"
  set default settings to settings set "Basic+"
end tell
EOD
