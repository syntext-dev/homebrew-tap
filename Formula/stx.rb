class Stx < Formula
  desc "Write, preview and publish Syntext docs from your terminal"
  homepage "https://syntext.dev"
  version "0.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/syntext-dev/syntext/releases/download/v0.11.0/stx-darwin-arm64.tar.gz"
      sha256 "6bd1a08c9d5c165a326b6d544ccdfeba11e2a4bde70a5f3fd82342875f6a81c3"
    else
      url "https://github.com/syntext-dev/syntext/releases/download/v0.11.0/stx-darwin-x64.tar.gz"
      sha256 "6a30c1b73d0d3a987958eaf6dd150f0d0ec805c7453bbe4bb0eee9ed66135f81"
    end
  end

  on_linux do
    url "https://github.com/syntext-dev/syntext/releases/download/v0.11.0/stx-linux-x64.tar.gz"
    sha256 "38ae6fa61d545bbaed9ad1f9d32566dfe45194c45ffbebfca67ef470f16749f8"
  end

  def install
    bin.install Dir["stx-*"].first => "stx"
  end

  test do
    assert_match "0.11.0", shell_output("#{bin}/stx --version")
  end
end
