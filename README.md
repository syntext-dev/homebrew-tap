# Syntext Homebrew Tap

Homebrew formula for distributing the Syntext CLI on macOS and Linux.

## Installation

```bash
brew tap syntext/tap
brew install syntext
```

## Structure

```
Formula/
└── syntext.rb          # Homebrew formula
```

## Release Process
1. CLI binary built in `apps/cli/` CI pipeline
2. Binary uploaded to GitHub Releases
3. Formula updated with new version SHA + URL
4. Users get updates via `brew upgrade syntext`
