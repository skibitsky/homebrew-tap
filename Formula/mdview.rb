class Mdview < Formula
  desc "A terminal markdown viewer"
  homepage "https://github.com/skibitsky/mdview"
  url "https://github.com/skibitsky/mdview/archive/refs/tags/v0.1.0.tar.gz"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdview --version")
  end
end
