class Stx < Formula
  desc "AI-powered developer documentation CLI"
  homepage "https://syntext.dev"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/syntext-dev/syntext/releases/download/v0.8.0/stx-darwin-arm64.tar.gz"
      sha256 "31d5844702d9a59dec403e44a95872f0cd3f4beb5e4bcf32851beeaed8b0a9f3"
    else
      url "https://github.com/syntext-dev/syntext/releases/download/v0.8.0/stx-darwin-x64.tar.gz"
      sha256 "e860c6e68f06aef196683caba2a9342a385546b85d72652e53456b31e487a45d"
    end
  end

  on_linux do
    url "https://github.com/syntext-dev/syntext/releases/download/v0.8.0/stx-linux-x64.tar.gz"
    sha256 "c412d5215519980ea39c5560cfa338a88fa930783cb2ce925980d8ee6d7248e9"
  end

  def install
    bin.install Dir["stx-*"].first => "stx"
  end

  test do
    assert_match "0.8.0", shell_output("#{bin}/stx --version")
  end
end
