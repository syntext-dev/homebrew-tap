class Stx < Formula
  desc "AI-powered developer documentation CLI"
  homepage "https://syntext.dev"
  version "0.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/syntext-dev/syntext/releases/download/v0.8.1/stx-darwin-arm64.tar.gz"
      sha256 "5f19db7fa7596d85064616ec0556094ee66f84aedb0dede732e54948aee52fac"
    else
      url "https://github.com/syntext-dev/syntext/releases/download/v0.8.1/stx-darwin-x64.tar.gz"
      sha256 "53dca2fffe996dbca5340874d7d4f9ab4fb0536e4ed37767643645b83e9e5c99"
    end
  end

  on_linux do
    url "https://github.com/syntext-dev/syntext/releases/download/v0.8.1/stx-linux-x64.tar.gz"
    sha256 "36b02eb9fe00a372144d3f746908b03a53fa9ccaf728a497ea5fa65772c117a5"
  end

  def install
    bin.install Dir["stx-*"].first => "stx"
  end

  test do
    assert_match "0.8.1", shell_output("#{bin}/stx --version")
  end
end
