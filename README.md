# magic-trackpad-switcher

The tool to switch Magic Trackpad connections between multiple Mac devices

## Install

```bash
brew install mizdra/tap/magic-trackpad-switcher
echo 'export TRACKPAD_DEVICE_ID="xx-xx-xx-xx-xx-xx"' >> .bashrc
brew services start magic-trackpad-switcher
```

## Uninstall

```bash
brew services stop magic-trackpad-switcher
brew uninstall mizdra/tap/magic-trackpad-switcher
```
