class Stx < Formula
  desc "Write, preview and publish Syntext docs from your terminal"
  homepage "https://syntext.dev"
  version "0.9.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/syntext-dev/syntext/releases/download/v0.9.2/stx-darwin-arm64.tar.gz"
      sha256 "328380f98809512ad258a5b0925db5f8fb997f33744ea845b17eb646b48d5446"
    else
      url "https://github.com/syntext-dev/syntext/releases/download/v0.9.2/stx-darwin-x64.tar.gz"
      sha256 "a180d6c6fd57be0492117fdb9311d16545876f2d8b14dcc6f984ad2ea6c81dcd"
    end
  end

  on_linux do
    url "https://github.com/syntext-dev/syntext/releases/download/v0.9.2/stx-linux-x64.tar.gz"
    sha256 "e57a3397c2986cf7066ac539ed8f2aae4bea31568d092a7dd2874360e3087280"
  end

  def install
    bin.install Dir["stx-*"].first => "stx"
  end

  test do
    assert_match "0.9.2", shell_output("#{bin}/stx --version")
  end
end
