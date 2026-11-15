class Stx < Formula
  desc "Write, preview and publish Syntext docs from your terminal"
  homepage "https://syntext.dev"
  version "0.11.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/syntext-dev/syntext/releases/download/v0.11.4/stx-darwin-arm64.tar.gz"
      sha256 "52bca5d271d66a98ff9c57776aab94bcedfefdbf290b34497512c1cd66d27521"
    else
      url "https://github.com/syntext-dev/syntext/releases/download/v0.11.4/stx-darwin-x64.tar.gz"
      sha256 "05f803fbba6e4e116941bc15cef501e16ab0c9f0a205eb657b3ebb4c89a941f9"
    end
  end

  on_linux do
    url "https://github.com/syntext-dev/syntext/releases/download/v0.11.4/stx-linux-x64.tar.gz"
    sha256 "9d6eeb6f1df050d3648c3af3d512a4423c6d17c4c77fc0e2d986f3e5eb3ed86b"
  end

  def install
    bin.install Dir["stx-*"].first => "stx"
  end

  test do
    assert_match "0.11.4", shell_output("#{bin}/stx --version")
  end
end
