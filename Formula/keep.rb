class Keep < Formula
  desc "Files from your terminal, kept forever"
  homepage "https://github.com/Stoffbergie/keep"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Stoffbergie/keep/releases/download/v#{version}/keep-x86_64-apple-darwin.tar.gz"
      sha256 "738748e2ee3ed46eb89fa569594f23c8cf4a48cbd03c16c1d8b82f546f34ce43"
    end
    on_arm do
      url "https://github.com/Stoffbergie/keep/releases/download/v#{version}/keep-aarch64-apple-darwin.tar.gz"
      sha256 "364df6d526834ef10fa810eb4d95929d4df391a08b62b73210c568f17ab8f887"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Stoffbergie/keep/releases/download/v#{version}/keep-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f88b060152ad8dfd31993c7a374f9dab41c2dafdab1b2c2055157c68fa5d2565"
    end
    on_arm do
      url "https://github.com/Stoffbergie/keep/releases/download/v#{version}/keep-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "93f9b0486fbfaa50bef609b080d29f53e7d6fddcd613bcf7c23d6e7186f6bd59"
    end
  end

  def install
    bin.install "keep"
  end

  test do
    assert_match "keep", shell_output("#{bin}/keep --version")
  end
end
