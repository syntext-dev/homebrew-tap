# Syntext Homebrew Tap

Homebrew formula for `stx`, the Syntext CLI: write, preview and publish Syntext docs from your terminal. macOS and Linux.

## Installation

```bash
brew install syntext-dev/tap/stx
```

## Structure

```
Formula/
└── stx.rb              # Homebrew formula (regenerated on each CLI release; don't edit by hand)
```

## Release Process
1. A `vX.Y.Z` tag on [syntext-dev/syntext](https://github.com/syntext-dev/syntext) builds the CLI binaries
2. Binaries and checksums are uploaded to GitHub Releases
3. The release workflow rewrites `Formula/stx.rb` with the new version, URLs and SHA-256s
4. Users get updates via `brew upgrade stx`
