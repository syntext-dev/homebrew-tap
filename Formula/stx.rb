class Stx < Formula
  desc "Write, preview and publish Syntext docs from your terminal"
  homepage "https://syntext.dev"
  version "0.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/syntext-dev/syntext/releases/download/v0.10.0/stx-darwin-arm64.tar.gz"
      sha256 "e35ba545a7ce2c5c1caa6ac02e0cd2a32028ec5eee111f69116def44a9c31b89"
    else
      url "https://github.com/syntext-dev/syntext/releases/download/v0.10.0/stx-darwin-x64.tar.gz"
      sha256 "9e29a55723e27172aa2d41fab08a8ff0a93a1bd3853826720de30bd0eacaf144"
    end
  end

  on_linux do
    url "https://github.com/syntext-dev/syntext/releases/download/v0.10.0/stx-linux-x64.tar.gz"
    sha256 "2eab2d9545a35832cf2bfdb05f5493a44bf3f14abaf6fce39949c6225a767b17"
  end

  def install
    bin.install Dir["stx-*"].first => "stx"
  end

  test do
    assert_match "0.10.0", shell_output("#{bin}/stx --version")
  end
end
