class Stx < Formula
  desc "Write, preview and publish Syntext docs from your terminal"
  homepage "https://syntext.dev"
  version "0.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/syntext-dev/syntext/releases/download/v0.9.1/stx-darwin-arm64.tar.gz"
      sha256 "9b37a995a848ecaee6fd3e156f2c56d3e13751e7f5904ce86a88adbdab134de0"
    else
      url "https://github.com/syntext-dev/syntext/releases/download/v0.9.1/stx-darwin-x64.tar.gz"
      sha256 "8b2489895d032dac8ac71ec0d467b8415f1f1117161b2cf32b9358043d34f5e0"
    end
  end

  on_linux do
    url "https://github.com/syntext-dev/syntext/releases/download/v0.9.1/stx-linux-x64.tar.gz"
    sha256 "0a90bd3009dd8fcff4a310635113a6b6ca513b50bad63cf84952e56b3494c512"
  end

  def install
    bin.install Dir["stx-*"].first => "stx"
  end

  test do
    assert_match "0.9.1", shell_output("#{bin}/stx --version")
  end
end
