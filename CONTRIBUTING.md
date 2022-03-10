## How to release

```bash
export NEW_VERSION=vX.X.X
git tag -a $NEW_VERSION -m $NEW_VERSION
git push --follow-tags
shasum -a 256 .build/apple/Products/Release/magic-trackpad-switcher
# Open https://github.com/mizdra/homebrew-tap , and edit formula.
```

## Check logs

```bash
tail -F $(brew --prefix)/var/log/magic-trackpad-switcher.log
tail -F $(brew --prefix)/var/log/magic-trackpad-switcher.error.log
```
