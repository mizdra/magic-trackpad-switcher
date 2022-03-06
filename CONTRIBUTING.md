## How to release

```bash
export NEW_VERSION=vX.X.X
git tag -a $NEW_VERSION -m $NEW_VERSION
git push --follow-tags
gh release create $NEW_VERSION
# Open https://github.com/mizdra/homebrew-tap , and edit formula.
```
