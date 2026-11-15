class Stx < Formula
  desc "Write, preview and publish Syntext docs from your terminal"
  homepage "https://syntext.dev"
  version "0.11.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/syntext-dev/syntext/releases/download/v0.11.1/stx-darwin-arm64.tar.gz"
      sha256 "44ad1f5c620470eca21204d93a33ed4f2b17425d4357f1a1f2c52968405634e1"
    else
      url "https://github.com/syntext-dev/syntext/releases/download/v0.11.1/stx-darwin-x64.tar.gz"
      sha256 "e62406d36fd61a3e6bae3b8390cb3891fd5e62b5aca161219e058cd49be5a768"
    end
  end

  on_linux do
    url "https://github.com/syntext-dev/syntext/releases/download/v0.11.1/stx-linux-x64.tar.gz"
    sha256 "5099f71a831a01d0df460729152f2415a0e7718e42eaa1a1545e3a4e2d168f91"
  end

  def install
    bin.install Dir["stx-*"].first => "stx"
  end

  test do
    assert_match "0.11.1", shell_output("#{bin}/stx --version")
  end
end
