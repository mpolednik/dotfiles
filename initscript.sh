#!/bin/bash

# Disable dashboard
defaults write com.apple.dashboard mcx-disabled -boolean YES
killall Dock

# Hide obsolete apps
sudo chflags hidden /Applications/Automator.app
sudo chflags hidden /Applications/Chess.app
sudo chflags hidden /Applications/Dashboard.app
sudo chflags hidden /Applications/Dictionary.app
sudo chflags hidden /Applications/DVD\ Player.app
sudo chflags hidden /Applications/FaceTime.app
sudo chflags hidden /Applications/Game\ Center.app
sudo chflags hidden /Applications/Launchpad.app
sudo chflags hidden /Applications/Mail.app
sudo chflags hidden /Applications/Mission\ Control.app
sudo chflags hidden /Applications/Notes.app
sudo chflags hidden /Applications/Photo\ Booth.app
sudo chflags hidden /Applications/QuickTime\ Player.app
sudo chflags hidden /Applications/Reminders.app
sudo chflags hidden /Applications/Stickies.app
sudo chflags hidden /Applications/Time\ Machine.app
sudo chflags hidden /Applications/Utilities/Audio\ MIDI\ Setup.app
sudo chflags hidden /Applications/Utilities/Bluetooth\ File\ Exchange.app
sudo chflags hidden /Applications/Utilities/Boot\ Camp\ Assistant.app
sudo chflags hidden /Applications/Utilities/ColorSync\ Utility.app
sudo chflags hidden /Applications/Utilities/Grab.app
sudo chflags hidden /Applications/Utilities/Grapher.app
sudo chflags hidden /Applications/Utilities/Java\ Preferences.app
sudo chflags hidden /Applications/Utilities/Migration\ Assistant.app
sudo chflags hidden /Applications/Utilities/RAID\ Utility.app
sudo chflags hidden /Applications/Utilities/VoiceOver\ Utility.app
