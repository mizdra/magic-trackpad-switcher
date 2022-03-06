# magic-trackpad-switcher

The tool to switch Magic Trackpad connections between multiple Mac devices

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
brew services start magic-trackpad-switcher
```

## Uninstall

```bash
brew services stop magic-trackpad-switcher
brew uninstall mizdra/tap/magic-trackpad-switcher
rm -rf ~/.config/magic-trackpad-switcher
```
