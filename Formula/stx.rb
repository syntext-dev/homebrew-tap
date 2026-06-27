class Stx < Formula
  desc "AI-powered developer documentation CLI"
  homepage "https://syntext.dev"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/syntext-dev/syntext/releases/download/v0.5.1/stx-darwin-arm64.tar.gz"
      sha256 "2815db192ef23b42b4f084951647d212927d332d3ee721560b7611696ea51282"
    else
      url "https://github.com/syntext-dev/syntext/releases/download/v0.5.1/stx-darwin-x64.tar.gz"
      sha256 "99ea1a328ac32f6be9735ba13ccb1f7387d9c5d692dd47f7ba97f808c6f855ef"
    end
  end

  on_linux do
    url "https://github.com/syntext-dev/syntext/releases/download/v0.5.1/stx-linux-x64.tar.gz"
    sha256 "a68ad99d8a843d47e772936c4b0f700275203d6f2cd082aa04f1d017044c2bca"
  end

  def install
    bin.install Dir["stx-*"].first => "stx"
  end

  test do
    assert_match "0.5.1", shell_output("#{bin}/stx --version")
  end
end
