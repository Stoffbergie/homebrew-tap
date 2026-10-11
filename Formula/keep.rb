class Keep < Formula
  desc "Files from your terminal, kept forever"
  homepage "https://github.com/Stoffbergie/keep"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Stoffbergie/keep/releases/download/v#{version}/keep-x86_64-apple-darwin.tar.gz"
      sha256 "b3c2d09757948825a6bde1f2101827b93a317ac7b41ab6fa5b4e5ea9d5485c17"
    end
    on_arm do
      url "https://github.com/Stoffbergie/keep/releases/download/v#{version}/keep-aarch64-apple-darwin.tar.gz"
      sha256 "9ed16f978dec7b4091abf807af350247e1765d893d1a3e9e244e759eef095729"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Stoffbergie/keep/releases/download/v#{version}/keep-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4961ed887cf3c7e7811881927ce8b9eab930b6a104bf74aa5855e2f676356256"
    end
    on_arm do
      url "https://github.com/Stoffbergie/keep/releases/download/v#{version}/keep-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7b531d7f09fccb36511f07c3ea5190272c7ffb1cd777e6385520bcfc085a1f05"
    end
  end

  def install
    bin.install "keep"
  end

  test do
    assert_match "keep", shell_output("#{bin}/keep --version")
  end
end
