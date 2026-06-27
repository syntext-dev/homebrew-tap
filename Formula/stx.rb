class Stx < Formula
  desc "AI-powered developer documentation CLI"
  homepage "https://syntext.dev"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/syntext-dev/syntext/releases/download/v0.2.0/stx-darwin-arm64.tar.gz"
      sha256 "c82db6b3b61136703d5e351c2ebbb1ea0ec4fc59f6d416798032936ef9913a30"
    else
      url "https://github.com/syntext-dev/syntext/releases/download/v0.2.0/stx-darwin-x64.tar.gz"
      sha256 "1e3f99d15c64f0ea187e7f2622e41724db26209fa7d4a4cec6d0d29affa19988"
    end
  end

  on_linux do
    url "https://github.com/syntext-dev/syntext/releases/download/v0.2.0/stx-linux-x64.tar.gz"
    sha256 "211e7d545903b88da08f3583d50821a98bb7ce3723700f9ac6691aba0f24a04b"
  end

  def install
    bin.install Dir["stx-*"].first => "stx"
  end

  test do
    assert_match "0.2.0", shell_output("#{bin}/stx --version")
  end
end
