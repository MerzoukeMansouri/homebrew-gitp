class Gitp < Formula
  desc "K9s-style TUI for managing git operations across multiple repositories"
  homepage "https://github.com/MerzoukeMansouri/gitp"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/MerzoukeMansouri/gitp/releases/download/v0.1.0/gitp-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "1bf0495829d36ca34daa6b0c6999498818c7531134d36dd6585ce1f20ec42463"
    else
      url "https://github.com/MerzoukeMansouri/gitp/releases/download/v0.1.0/gitp-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "acd6762d8bccccfd0ec7586358a255c5e67063f16449551643ce901630968554"
    end
  end

  on_linux do
    url "https://github.com/MerzoukeMansouri/gitp/releases/download/v0.1.0/gitp-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "df40c4e7f2bbb174f4e78ae207e47943d132a680a3e86173becbb633b4671199"
  end

  def install
    bin.install "gitp"
  end

  test do
    system "#{bin}/gitp", "--help"
  end
end
