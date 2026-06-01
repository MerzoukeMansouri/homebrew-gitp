class Gitp < Formula
  desc "K9s-style TUI for managing git operations across multiple repositories"
  homepage "https://github.com/MerzoukeMansouri/gitp"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/gitp/releases/download/v0.2.0/gitp-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "c9de844b0286eeee6c77597935e0768aa02b2479279a807fbdd89f7d922c3563"
    else
      url "https://github.com/MerzoukeMansouri/gitp/releases/download/v0.2.0/gitp-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "8cc4e74e354bdf97d06e6ec71f40dd1143d0f239585b1878a8e0ba5062363fbe"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/gitp/releases/download/v0.2.0/gitp-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "cdd640aaae32eced86d3080bdfe47fe2df77b51dcc8c7df8c744f5112f0231da"
  end

  def install
    bin.install "gitp"
  end

  test do
    system "#{bin}/gitp", "--help"
  end
end
