class Stx < Formula
  desc "AI-powered developer documentation CLI"
  homepage "https://syntext.dev"
  version "0.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/syntext-dev/syntext/releases/download/v0.6.1/stx-darwin-arm64.tar.gz"
      sha256 "7c60cb924b33231253c48e3e002317ef16f95ccd271c9893f1a57e9b238c4101"
    else
      url "https://github.com/syntext-dev/syntext/releases/download/v0.6.1/stx-darwin-x64.tar.gz"
      sha256 "7e7f04aa59611ab453f6e3c4e0b351ca695024132c418d7fc16e7ca06418c95e"
    end
  end

  on_linux do
    url "https://github.com/syntext-dev/syntext/releases/download/v0.6.1/stx-linux-x64.tar.gz"
    sha256 "f21b3cb33a1b186b02e7420f3aca8b1fc1a152c453f65ffecd8a93cbbfa7b413"
  end

  def install
    bin.install Dir["stx-*"].first => "stx"
  end

  test do
    assert_match "0.6.1", shell_output("#{bin}/stx --version")
  end
end
