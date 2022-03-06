## How to release

```bash
git tag -a vX.X.X -m "vX.X.X"
git push --follow-tags
gh release create vX.X.X --notes "vX.X.X"
# Open https://github.com/mizdra/homebrew-tap , and edit formula.
```
