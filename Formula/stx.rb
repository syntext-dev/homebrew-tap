class Stx < Formula
  desc "AI-powered developer documentation CLI"
  homepage "https://syntext.dev"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/syntext-dev/syntext/releases/download/v0.3.0/stx-darwin-arm64.tar.gz"
      sha256 "ec67c851c91a410070fed5c4892e7e131f2b574cf7ac053252b5f999a9b94df1"
    else
      url "https://github.com/syntext-dev/syntext/releases/download/v0.3.0/stx-darwin-x64.tar.gz"
      sha256 "e8c845742e3f10d383e8eb1edd6c650e96b44c157fa1ce5a9b5eff8c21562edf"
    end
  end

  on_linux do
    url "https://github.com/syntext-dev/syntext/releases/download/v0.3.0/stx-linux-x64.tar.gz"
    sha256 "5a065e38c9b20814842c10b12023a26781f10a81d34c499bec7df9361cfd59f1"
  end

  def install
    bin.install Dir["stx-*"].first => "stx"
  end

  test do
    assert_match "0.3.0", shell_output("#{bin}/stx --version")
  end
end
