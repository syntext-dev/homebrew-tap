class Stx < Formula
  desc "Write, preview and publish Syntext docs from your terminal"
  homepage "https://syntext.dev"
  version "0.11.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/syntext-dev/syntext/releases/download/v0.11.3/stx-darwin-arm64.tar.gz"
      sha256 "69148afec86403aca03a222177114810cee6017efb5b2fc8e4a06e1a195eded8"
    else
      url "https://github.com/syntext-dev/syntext/releases/download/v0.11.3/stx-darwin-x64.tar.gz"
      sha256 "899f6dbabf16ec5b1c93fdda3897e84f388e0ad5a85102c1363d24a9cdf14984"
    end
  end

  on_linux do
    url "https://github.com/syntext-dev/syntext/releases/download/v0.11.3/stx-linux-x64.tar.gz"
    sha256 "29cad56f4d98cbb269111195407bc90276b8c210b792754353a74ea761d6daa0"
  end

  def install
    bin.install Dir["stx-*"].first => "stx"
  end

  test do
    assert_match "0.11.3", shell_output("#{bin}/stx --version")
  end
end
