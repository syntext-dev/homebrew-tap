class Stx < Formula
  desc "AI-powered developer documentation CLI"
  homepage "https://syntext.dev"
  version "0.5.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/syntext-dev/syntext/releases/download/v0.5.3/stx-darwin-arm64.tar.gz"
      sha256 "8a840cfbee8ad43f8d2fb48af0434cdfffebc9376709d5d7e4ce4b62ec47de35"
    else
      url "https://github.com/syntext-dev/syntext/releases/download/v0.5.3/stx-darwin-x64.tar.gz"
      sha256 "167d955d263760fc86c9f6a3049e2db23ad1c27b791367b795468688fb15aea5"
    end
  end

  on_linux do
    url "https://github.com/syntext-dev/syntext/releases/download/v0.5.3/stx-linux-x64.tar.gz"
    sha256 "2151cb0c57a4721af35aebaeb5b13f4a523cabae62331fba8dc13fd79580c527"
  end

  def install
    bin.install Dir["stx-*"].first => "stx"
  end

  test do
    assert_match "0.5.3", shell_output("#{bin}/stx --version")
  end
end
