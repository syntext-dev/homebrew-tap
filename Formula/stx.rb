class Stx < Formula
  desc "AI-powered developer documentation CLI"
  homepage "https://syntext.dev"
  version "0.6.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/syntext-dev/syntext/releases/download/v0.6.5/stx-darwin-arm64.tar.gz"
      sha256 "2ed4f0419815488dd6e4eb74c684786eee91eab441ddcb65e469d2ff1b7199cc"
    else
      url "https://github.com/syntext-dev/syntext/releases/download/v0.6.5/stx-darwin-x64.tar.gz"
      sha256 "f514bfd6dde3f807434086d1c45cd48969bb7b21a5de6f69303b78a6febc3498"
    end
  end

  on_linux do
    url "https://github.com/syntext-dev/syntext/releases/download/v0.6.5/stx-linux-x64.tar.gz"
    sha256 "9d5e0c0664a00f584063a6b5441cbf4cf78101b3c3836191d92da9e7aa96d326"
  end

  def install
    bin.install Dir["stx-*"].first => "stx"
  end

  test do
    assert_match "0.6.5", shell_output("#{bin}/stx --version")
  end
end
