class Stx < Formula
  desc "Write, preview and publish Syntext docs from your terminal"
  homepage "https://syntext.dev"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/syntext-dev/syntext/releases/download/v0.9.0/stx-darwin-arm64.tar.gz"
      sha256 "bb56e0c836fb2365cc3bcf26a0918a875f40c7f0f261098c71e4295bea95d9e4"
    else
      url "https://github.com/syntext-dev/syntext/releases/download/v0.9.0/stx-darwin-x64.tar.gz"
      sha256 "29f9acf1dbc7f943e39d8bef63423e3c5bae13ad98c6a0481a3d24f9e3a82e5c"
    end
  end

  on_linux do
    url "https://github.com/syntext-dev/syntext/releases/download/v0.9.0/stx-linux-x64.tar.gz"
    sha256 "ab85df86fbefa2195ac0feaa5fe5b8e78507b26cf0d29e73d762098c86bdba86"
  end

  def install
    bin.install Dir["stx-*"].first => "stx"
  end

  test do
    assert_match "0.9.0", shell_output("#{bin}/stx --version")
  end
end
