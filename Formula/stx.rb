class Stx < Formula
  desc "AI-powered developer documentation CLI"
  homepage "https://syntext.dev"
  version "0.6.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/syntext-dev/syntext/releases/download/v0.6.3/stx-darwin-arm64.tar.gz"
      sha256 "f001e67c4431463b036d99465bc7961381551df9896e4b566600c97c58ff9916"
    else
      url "https://github.com/syntext-dev/syntext/releases/download/v0.6.3/stx-darwin-x64.tar.gz"
      sha256 "c5d0927c7e065baf82a286321f79b0d3535e4605465c3058636198870357a1fb"
    end
  end

  on_linux do
    url "https://github.com/syntext-dev/syntext/releases/download/v0.6.3/stx-linux-x64.tar.gz"
    sha256 "f224311b78045da521998214a6341d9153f60b5fc2c69ffe52bade8f580fd39f"
  end

  def install
    bin.install Dir["stx-*"].first => "stx"
  end

  test do
    assert_match "0.6.3", shell_output("#{bin}/stx --version")
  end
end
