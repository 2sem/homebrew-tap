# homebrew-tap

Homebrew tap for the Coinone CLI.

## Install

```bash
brew tap 2sem/tap
brew install coinone
```

If the tap is already installed, `brew tap 2sem/tap` may not refresh the local checkout to the newest commit.

## Upgrade

```bash
brew update
brew upgrade coinone
```

If Homebrew still reports an older version after the tap is already installed, refresh the local tap checkout and try again:

```bash
git -C "$(brew --repository 2sem/tap)" pull --ff-only
brew upgrade coinone
```

## Troubleshooting stale tap metadata

```bash
brew info 2sem/tap/coinone
git -C "$(brew --repository 2sem/tap)" log --oneline -1
```

If `brew info` still shows an older stable version than expected, run the upgrade fallback above and check again.

## Verify

```bash
coinone --version
coinone doctor --json
```
