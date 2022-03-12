# magic-trackpad-switcher

The tool to switch Magic Trackpad connections between multiple Mac devices

## Features

- When clamshell mode is enabled...
  1. Unpair Magic Trackpad
  1. Power off the bluetooth module
  1. Sleep system
- When the system wakes up from sleep...
  1. Power on the bluetooth module
  1. Pair Magic Trackpad

## Install

Install `magic-trackpad-switcher`.

```bash
brew install mizdra/tap/magic-trackpad-switcher
```

Then, add the device ID of your Magic Trackpad to configuration file:

```bash
# Check the device ID of your Magic Trackpad
blueutil --paired

# Add the device ID of your Magic Trackpad to configuration file
mkdir -p ~/.config/magic-trackpad-switcher
echo "xx-xx-xx-xx-xx-xx" > ~/.config/magic-trackpad-switcher/TRACKPAD_DEVICE_ID
```

Finally, start `magic-trackpad-switcher` service.

```bash
brew services start mizdra/tap/magic-trackpad-switcher
```

## Uninstall

```bash
brew services stop mizdra/tap/magic-trackpad-switcher
brew uninstall mizdra/tap/magic-trackpad-switcher
rm -rf ~/.config/magic-trackpad-switcher
```

## Update

```bash
brew upgrade
brew services restart mizdra/tap/magic-trackpad-switcher
```

## Debug

### Run script from source code

```bash
git clone git@github.com:mizdra/magic-trackpad-switcher.git
swift run
```

### Logging

```bash
tail -F $(brew --prefix)/var/log/magic-trackpad-switcher.log
tail -F $(brew --prefix)/var/log/magic-trackpad-switcher.error.log
```
