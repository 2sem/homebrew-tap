# homebrew-tap

Homebrew tap for the Coinone CLI.

## Install

```bash
brew tap 2sem/tap
brew install coinone
```

Run `brew tap 2sem/tap` once when you first install the tap.

## Upgrade

```bash
brew update
brew upgrade coinone
```

Do not use `brew tap 2sem/tap` as an upgrade step for existing installs.

## Troubleshooting stale tap metadata

First confirm what Homebrew currently sees:

```bash
brew info 2sem/tap/coinone
```

If `brew info` still shows an older stable version than expected after `brew update`, your local tap checkout may still be stale. As a last resort, refresh it and try the upgrade again:

```bash
git -C "$(brew --repository 2sem/tap)" pull --ff-only
brew upgrade coinone
```

## Verify

```bash
coinone --version
coinone doctor --json
```
