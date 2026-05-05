# Homebrew Tap for Beava

Tap for [beava](https://beava.dev) — a real-time feature server for fraud, ad-tech, and behavioral analytics.

## Install

```sh
brew tap beava-dev/beava
brew install beava
```

## Auto-bump

The formula's `version` and per-platform `sha256` stanzas are auto-updated on every tag-push of `beava-dev/beava` via `.github/workflows/homebrew-bump.yml` in the main repo.

## Manual bump (rare)

If the bump workflow fails, edit `Formula/beava.rb` directly: replace `version` and the four `sha256` values with values from `https://github.com/beava-dev/beava/releases/download/v<X.Y.Z>/beava-<platform>.tar.gz.sha256`.
