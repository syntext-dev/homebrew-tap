class Stx < Formula
  desc "AI-powered developer documentation CLI"
  homepage "https://syntext.dev"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/syntext-dev/syntext/releases/download/v0.7.0/stx-darwin-arm64.tar.gz"
      sha256 "21b557dae919e4591b69875ac1baba3dbdf17094371eeebac22a6ae81df41db0"
    else
      url "https://github.com/syntext-dev/syntext/releases/download/v0.7.0/stx-darwin-x64.tar.gz"
      sha256 "9c3c56935ce45fa4a66670941b0cd7a57b7b0a18b753bb1ae4941d8128f340c2"
    end
  end

  on_linux do
    url "https://github.com/syntext-dev/syntext/releases/download/v0.7.0/stx-linux-x64.tar.gz"
    sha256 "d0f0683b72a3aab77ecf5f3874306a2cbfa289eb711aeeef6d9326eca476e3e3"
  end

  def install
    bin.install Dir["stx-*"].first => "stx"
  end

  test do
    assert_match "0.7.0", shell_output("#{bin}/stx --version")
  end
end
