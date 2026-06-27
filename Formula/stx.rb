class Stx < Formula
  desc "AI-powered developer documentation CLI"
  homepage "https://syntext.dev"
  version "0.5.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/syntext-dev/syntext/releases/download/v0.5.2/stx-darwin-arm64.tar.gz"
      sha256 "9a9b1b63bfac26247db8efdc00b8bbd6ddf5d1d2ae7ff36fe8506c62a9f0ca59"
    else
      url "https://github.com/syntext-dev/syntext/releases/download/v0.5.2/stx-darwin-x64.tar.gz"
      sha256 "dba80fde172684f6b03ba381496d6bf7470f963d5c9a6b00f70d5db9cdc9feb6"
    end
  end

  on_linux do
    url "https://github.com/syntext-dev/syntext/releases/download/v0.5.2/stx-linux-x64.tar.gz"
    sha256 "28a480d318070301565ca099bfc08ebc76464af3300e8309dc130b444dad5816"
  end

  def install
    bin.install Dir["stx-*"].first => "stx"
  end

  test do
    assert_match "0.5.2", shell_output("#{bin}/stx --version")
  end
end
