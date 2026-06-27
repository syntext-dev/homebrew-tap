class Stx < Formula
  desc "AI-powered developer documentation CLI"
  homepage "https://syntext.dev"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/syntext-dev/syntext/releases/download/v0.1.0/stx-darwin-arm64.tar.gz"
      sha256 "placeholder"
    else
      url "https://github.com/syntext-dev/syntext/releases/download/v0.1.0/stx-darwin-x64.tar.gz"
      sha256 "placeholder"
    end
  end

  on_linux do
    url "https://github.com/syntext-dev/syntext/releases/download/v0.1.0/stx-linux-x64.tar.gz"
    sha256 "placeholder"
  end

  def install
    bin.install Dir["stx-*"].first => "stx"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/stx --version")
  end
end
