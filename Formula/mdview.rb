class Mdview < Formula
  desc "A terminal markdown viewer"
  homepage "https://github.com/skibitsky/mdview"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/skibitsky/mdview/releases/download/v0.1.1/mdview-aarch64-apple-darwin.tar.gz"
      sha256 "d71a9d34bfd2fc640a8c52e9a46e526cdbe1061a9efd6ba023cb9e71a588bf96"
    else
      url "https://github.com/skibitsky/mdview/releases/download/v0.1.1/mdview-x86_64-apple-darwin.tar.gz"
      sha256 "c32dd1906e2fc8b43b2a4195c09e8d8611443b1fa71574d9f501b873aaadf3a1"
    end
  end

  on_linux do
    url "https://github.com/skibitsky/mdview/releases/download/v0.1.1/mdview-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c97baa85a71cf231d76935ced8f31f47310c90a255c034666e3d3d2956e1854e"
  end

  def install
    bin.install "mdview"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mdview --version")
  end
end
