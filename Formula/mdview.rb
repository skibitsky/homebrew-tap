class Mdview < Formula
  desc "A terminal markdown viewer"
  homepage "https://github.com/skibitsky/mdview"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/skibitsky/mdview/releases/download/v0.1.2/mdview-aarch64-apple-darwin.tar.gz"
      sha256 "d796bbf1070ed4ab803f8664cc51fcbefe03adee37fb98f91dbf1f46c0951558"
    else
      url "https://github.com/skibitsky/mdview/releases/download/v0.1.2/mdview-x86_64-apple-darwin.tar.gz"
      sha256 "495e58fda53da9cb37b8a24624902e970331798cc6c7c65486674c93ae4fdd65"
    end
  end

  on_linux do
    url "https://github.com/skibitsky/mdview/releases/download/v0.1.2/mdview-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "01e085ee25ebd993b53ce8f85e0f9a0d48752fb2c198ad977789582048ebf664"
  end

  def install
    bin.install "mdview"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdview --version")
  end
end
