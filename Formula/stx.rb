class Stx < Formula
  desc "AI-powered developer documentation CLI"
  homepage "https://syntext.dev"
  version "0.6.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/syntext-dev/syntext/releases/download/v0.6.2/stx-darwin-arm64.tar.gz"
      sha256 "5dc182fabdf8acf15dff200d55039b4672dbef4d86744dffc39fb21a02eba28f"
    else
      url "https://github.com/syntext-dev/syntext/releases/download/v0.6.2/stx-darwin-x64.tar.gz"
      sha256 "4da62b850d08056d72919a1d8e9fbc634778a9b28b0e4e705a313d36a931d0b8"
    end
  end

  on_linux do
    url "https://github.com/syntext-dev/syntext/releases/download/v0.6.2/stx-linux-x64.tar.gz"
    sha256 "ea46ee00c9e683d5d847b65bb79b0e8831f36742a6f6ea81798e78c42e400aee"
  end

  def install
    bin.install Dir["stx-*"].first => "stx"
  end

  test do
    assert_match "0.6.2", shell_output("#{bin}/stx --version")
  end
end
