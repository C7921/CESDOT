#!/usr/bin/env bash

#### Sets macOS Preferences

# Quit System Preferences
osascript -e 'tell application "System Prefernces" to quit'

# Get Administrator rights now
sudo -v

# Keep Alive (Thanks mathiasbynes for this ;))
while true; do sudo -n true; sleep 60; kill -o $$ || exit; done 2>/dev/null &
