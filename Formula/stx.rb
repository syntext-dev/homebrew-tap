class Stx < Formula
  desc "AI-powered developer documentation CLI"
  homepage "https://syntext.dev"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/syntext-dev/syntext/releases/download/v0.6.0/stx-darwin-arm64.tar.gz"
      sha256 "1f7211acb367fd0e98928b6f81dfbffc008fab703e7999e59638ea756e469cc5"
    else
      url "https://github.com/syntext-dev/syntext/releases/download/v0.6.0/stx-darwin-x64.tar.gz"
      sha256 "06f67b72fcd339185cce24bd109213ca98cd2e95665dd54bf01f6bf6339f7a80"
    end
  end

  on_linux do
    url "https://github.com/syntext-dev/syntext/releases/download/v0.6.0/stx-linux-x64.tar.gz"
    sha256 "005f9cc9a9e61e34d64050961e6ee208311c8880747baf241bcfbce86adac6ce"
  end

  def install
    bin.install Dir["stx-*"].first => "stx"
  end

  test do
    assert_match "0.6.0", shell_output("#{bin}/stx --version")
  end
end
