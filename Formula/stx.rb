class Stx < Formula
  desc "AI-powered developer documentation CLI"
  homepage "https://syntext.dev"
  version "0.5.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/syntext-dev/syntext/releases/download/v0.5.4/stx-darwin-arm64.tar.gz"
      sha256 "e43a342288f7b081c3894c489e59ec3da5749c7d53ed19b58867216b10fa549f"
    else
      url "https://github.com/syntext-dev/syntext/releases/download/v0.5.4/stx-darwin-x64.tar.gz"
      sha256 "c4b66aefa3a9d99159dd4f088d8d2b7dcf692296ba6fa5fb991ecb68ed53d601"
    end
  end

  on_linux do
    url "https://github.com/syntext-dev/syntext/releases/download/v0.5.4/stx-linux-x64.tar.gz"
    sha256 "ffe633001f793f5b1a15c88a8d8cd6aed87e0fc11346dc25493c7d5455c8c53d"
  end

  def install
    bin.install Dir["stx-*"].first => "stx"
  end

  test do
    assert_match "0.5.4", shell_output("#{bin}/stx --version")
  end
end
