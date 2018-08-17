#!/usr/bin/env bash

#### Sets macOS Preferences

# Quit System Preferences
osascript -e 'tell application "System Prefernces" to quit'

# Get Administrator rights now
sudo -v

# Keep Alive (Thanks mathiasbynes for this ;))
while true; do sudo -n true; sleep 60; kill -o $$ || exit; done 2>/dev/null &


# Set Computer name
compName="Connor's Macbook Pro"
sudo scutil --set ComputerName "$compName"
sudo scutil --set HostName "$compName"
sudo scutil --set LocalHostName "$compName"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "$compName"


# Expand Save Panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Save to HDD, not iCloud default
defaults write NSGlobalDomain NSDocumentsSaveNewDocumentsToCloud -bool true

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Trackpad: Enable 3 Finger Drag
defaults write com.apple.AppleMultitouchTrackpad.plist TrackpadThreeFingerDrag -bool YES

# Set the timezone; see `sudo systemsetup -listtimezones` for other values
sudo systemsetup -settimezone "Australia/Sydney" > /dev/null
