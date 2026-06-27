class Syntext < Formula
  desc "AI-powered developer documentation CLI"
  homepage "https://syntext.dev"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/syntext-dev/syntext/releases/download/v0.1.0/syntext-darwin-arm64.tar.gz"
      sha256 "placeholder"
    else
      url "https://github.com/syntext-dev/syntext/releases/download/v0.1.0/syntext-darwin-x64.tar.gz"
      sha256 "placeholder"
    end
  end

  on_linux do
    url "https://github.com/syntext-dev/syntext/releases/download/v0.1.0/syntext-linux-x64.tar.gz"
    sha256 "placeholder"
  end

  def install
    bin.install Dir["syntext-*"].first => "syntext"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/syntext --version")
  end
end
