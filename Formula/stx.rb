class Stx < Formula
  desc "AI-powered developer documentation CLI"
  homepage "https://syntext.dev"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/syntext-dev/syntext/releases/download/v0.1.0/stx-darwin-arm64.tar.gz"
      sha256 "b0a459950121ee0d788e84d4458caa4154d8ee992d91c5ecaebc193093ca8483"
    else
      url "https://github.com/syntext-dev/syntext/releases/download/v0.1.0/stx-darwin-x64.tar.gz"
      sha256 "17ac7d8144919d13ba1e97a8796a533312c0fed86bf0d508a44059862f431846"
    end
  end

  on_linux do
    url "https://github.com/syntext-dev/syntext/releases/download/v0.1.0/stx-linux-x64.tar.gz"
    sha256 "00030a1713396aa6f02051a9287bc8c7ec348c2ebe7131ebeed3cfb19488508b"
  end

  def install
    bin.install Dir["stx-*"].first => "stx"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/stx --version")
  end
end
