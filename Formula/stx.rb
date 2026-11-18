class Stx < Formula
  desc "Write, preview and publish Syntext docs from your terminal"
  homepage "https://syntext.dev"
  version "0.11.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/syntext-dev/syntext/releases/download/v0.11.6/stx-darwin-arm64.tar.gz"
      sha256 "3d1a17302afea7eb52fce5dca47338cb60be19894a0cd6ea005f377c2f676afe"
    else
      url "https://github.com/syntext-dev/syntext/releases/download/v0.11.6/stx-darwin-x64.tar.gz"
      sha256 "e3fbb564522656cb3c3cd487031900907e70a1d608b3cfe781e233be3f1a6b9d"
    end
  end

  on_linux do
    url "https://github.com/syntext-dev/syntext/releases/download/v0.11.6/stx-linux-x64.tar.gz"
    sha256 "3308e2413f8bc46e461f1fca2f20a046afc711433817035bfd93bd1e3fcbec7c"
  end

  def install
    bin.install Dir["stx-*"].first => "stx"
  end

  test do
    assert_match "0.11.6", shell_output("#{bin}/stx --version")
  end
end
