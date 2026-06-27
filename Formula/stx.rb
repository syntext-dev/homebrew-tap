class Stx < Formula
  desc "AI-powered developer documentation CLI"
  homepage "https://syntext.dev"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/syntext-dev/syntext/releases/download/v0.5.0/stx-darwin-arm64.tar.gz"
      sha256 "b4aee78476463a83def1a483189218fae8c15b8a3c539cbf6759df1e87fade8f"
    else
      url "https://github.com/syntext-dev/syntext/releases/download/v0.5.0/stx-darwin-x64.tar.gz"
      sha256 "b8ff40d3f77abcbd61352d24023e3b62ab8a4f4add37c990035070f2f7290db5"
    end
  end

  on_linux do
    url "https://github.com/syntext-dev/syntext/releases/download/v0.5.0/stx-linux-x64.tar.gz"
    sha256 "3e76b309abc0c87d2411d3db0eca7f4253298f883e0f69f14b00c2d34204e969"
  end

  def install
    bin.install Dir["stx-*"].first => "stx"
  end

  test do
    assert_match "0.5.0", shell_output("#{bin}/stx --version")
  end
end
