class Stx < Formula
  desc "Write, preview and publish Syntext docs from your terminal"
  homepage "https://syntext.dev"
  version "0.11.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/syntext-dev/syntext/releases/download/v0.11.2/stx-darwin-arm64.tar.gz"
      sha256 "0cd77188778518584f01ce3acbb7a0dcedae3ff0cb84cca5c7692961776b3dc8"
    else
      url "https://github.com/syntext-dev/syntext/releases/download/v0.11.2/stx-darwin-x64.tar.gz"
      sha256 "304541c372baa53a68cfd5e46551426a8035970f1bcb3ba09261c3fe777c5a2c"
    end
  end

  on_linux do
    url "https://github.com/syntext-dev/syntext/releases/download/v0.11.2/stx-linux-x64.tar.gz"
    sha256 "3e7b22bca02eaefee4ec27a98913a4856b5e7e65db40adf7cddd6bdb0eb91184"
  end

  def install
    bin.install Dir["stx-*"].first => "stx"
  end

  test do
    assert_match "0.11.2", shell_output("#{bin}/stx --version")
  end
end
