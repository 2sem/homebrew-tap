# homebrew-tap

Homebrew tap for the Coinone CLI.

## Install

```bash
brew tap 2sem/tap
brew install coinone
```

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

## Verify

```bash
coinone --version
coinone doctor --json
```
