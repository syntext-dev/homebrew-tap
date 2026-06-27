class Stx < Formula
  desc "AI-powered developer documentation CLI"
  homepage "https://syntext.dev"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/syntext-dev/syntext/releases/download/v0.4.0/stx-darwin-arm64.tar.gz"
      sha256 "655b26bc1b857c46e6c41fa33ef17236f2f89d789faeccbacd2e31f445f69675"
    else
      url "https://github.com/syntext-dev/syntext/releases/download/v0.4.0/stx-darwin-x64.tar.gz"
      sha256 "b35b92948b57dd5ef4c070d2e3c29a1f9cd76cdd6bebc37329ab1575c270ef51"
    end
  end

  on_linux do
    url "https://github.com/syntext-dev/syntext/releases/download/v0.4.0/stx-linux-x64.tar.gz"
    sha256 "fbf55a47c9cb6c7c2d02ea99c03eb8cf97c6b5bc53d93bae959bbac59c4b9688"
  end

  def install
    bin.install Dir["stx-*"].first => "stx"
  end

  test do
    assert_match "0.4.0", shell_output("#{bin}/stx --version")
  end
end
