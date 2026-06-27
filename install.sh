#!/bin/sh
set -e

# Syntext CLI (stx) installer
# Usage: curl -fsSL https://install.syntext.dev | sh

REPO="syntext-dev/syntext"
BINARY="stx"
INSTALL_DIR="/usr/local/bin"

# Detect OS and architecture
OS=$(uname -s | tr '[:upper:]' '[:lower:]')
ARCH=$(uname -m)

case "$OS" in
  darwin) OS="darwin" ;;
  linux) OS="linux" ;;
  *) echo "Unsupported OS: $OS"; exit 1 ;;
esac

case "$ARCH" in
  x86_64|amd64) ARCH="x64" ;;
  arm64|aarch64) ARCH="arm64" ;;
  *) echo "Unsupported architecture: $ARCH"; exit 1 ;;
esac

ARTIFACT="${BINARY}-${OS}-${ARCH}"

# Get latest release tag
echo "Fetching latest release..."
LATEST=$(curl -fsSL "https://api.github.com/repos/${REPO}/releases/latest" | grep '"tag_name"' | sed -E 's/.*"([^"]+)".*/\1/')

if [ -z "$LATEST" ]; then
  echo "Failed to fetch latest release"
  exit 1
fi

URL="https://github.com/${REPO}/releases/download/${LATEST}/${ARTIFACT}.tar.gz"

echo "Downloading stx ${LATEST} for ${OS}/${ARCH}..."
TMPDIR=$(mktemp -d)
curl -fsSL "$URL" -o "${TMPDIR}/${ARTIFACT}.tar.gz"

echo "Installing to ${INSTALL_DIR}..."
tar -xzf "${TMPDIR}/${ARTIFACT}.tar.gz" -C "$TMPDIR"
chmod +x "${TMPDIR}/${ARTIFACT}"

if [ -w "$INSTALL_DIR" ]; then
  mv "${TMPDIR}/${ARTIFACT}" "${INSTALL_DIR}/${BINARY}"
else
  sudo mv "${TMPDIR}/${ARTIFACT}" "${INSTALL_DIR}/${BINARY}"
fi

rm -rf "$TMPDIR"

echo ""
echo "  stx ${LATEST} installed successfully!"
echo ""
echo "  Run 'stx --help' to get started."
echo ""
