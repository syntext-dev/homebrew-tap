class Stx < Formula
  desc "Write, preview and publish Syntext docs from your terminal"
  homepage "https://syntext.dev"
  version "0.11.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/syntext-dev/syntext/releases/download/v0.11.5/stx-darwin-arm64.tar.gz"
      sha256 "608c69fa2c7c5922da6d3d17789150f5da43d0742926dc7038b46be48c1fb230"
    else
      url "https://github.com/syntext-dev/syntext/releases/download/v0.11.5/stx-darwin-x64.tar.gz"
      sha256 "af038cead77556909d1b8ae7332eb9da43e86a491df6b50c349eb9846d3105d9"
    end
  end

  on_linux do
    url "https://github.com/syntext-dev/syntext/releases/download/v0.11.5/stx-linux-x64.tar.gz"
    sha256 "a3dcd610d161c0d68bab6cd77f5918b415c22581cad60bf1e1ab847d7a1c9efd"
  end

  def install
    bin.install Dir["stx-*"].first => "stx"
  end

  test do
    assert_match "0.11.5", shell_output("#{bin}/stx --version")
  end
end
