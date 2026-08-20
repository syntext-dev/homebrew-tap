class Stx < Formula
  desc "AI-powered developer documentation CLI"
  homepage "https://syntext.dev"
  version "0.6.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/syntext-dev/syntext/releases/download/v0.6.4/stx-darwin-arm64.tar.gz"
      sha256 "b6ddf2c294571fc12683d01c85c06b0692cd5916a23e60907815de6f26014fe3"
    else
      url "https://github.com/syntext-dev/syntext/releases/download/v0.6.4/stx-darwin-x64.tar.gz"
      sha256 "d822820089f0a7abf70e37312f9a2ae2e85b7c6a27f6cbef5bd7fee21fa32f68"
    end
  end

  on_linux do
    url "https://github.com/syntext-dev/syntext/releases/download/v0.6.4/stx-linux-x64.tar.gz"
    sha256 "406be1412495b4b0104ec161cff996aa7aa99ccde4965810e0286dd357697e7d"
  end

  def install
    bin.install Dir["stx-*"].first => "stx"
  end

  test do
    assert_match "0.6.4", shell_output("#{bin}/stx --version")
  end
end
