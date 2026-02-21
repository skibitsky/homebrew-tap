class Mdview < Formula
  desc "A terminal markdown viewer"
  homepage "https://github.com/skibitsky/mdview"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/skibitsky/mdview/releases/download/v0.1.0/mdview-aarch64-apple-darwin.tar.gz"
      sha256 "da69ee06403a58867033a28defa49abf1d09911c6d2f2793d5736a14dfb13641"
    else
      url "https://github.com/skibitsky/mdview/releases/download/v0.1.0/mdview-x86_64-apple-darwin.tar.gz"
      sha256 "3ef85705db32ed7c757daebf70a78fea250f1cd341efaf297dbd071ea0cad4cc"
    end
  end

  on_linux do
    url "https://github.com/skibitsky/mdview/releases/download/v0.1.0/mdview-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "85d0475d0599d96461a52affacdfeefdec110aa8b9cf9a33a8da863d501045b6"
  end

  def install
    bin.install "mdview"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdview --version")
  end
end
