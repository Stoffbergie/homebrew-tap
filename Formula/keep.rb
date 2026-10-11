class Keep < Formula
  desc "Files from your terminal, kept forever"
  homepage "https://github.com/Stoffbergie/keep"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Stoffbergie/keep/releases/download/v#{version}/keep-x86_64-apple-darwin.tar.gz"
      sha256 "afa704ef7a4c0c1a779bbb37f4b3d8b5781433c24ea1af700c97cdc59e5305b7"
    end
    on_arm do
      url "https://github.com/Stoffbergie/keep/releases/download/v#{version}/keep-aarch64-apple-darwin.tar.gz"
      sha256 "a171cc57bc3b19196d209022fd877a9c2b694be44fc5a4bf93276aa56c7aaf74"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Stoffbergie/keep/releases/download/v#{version}/keep-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2948e706d39f4564e1198edb351344cbdf1d60577d584a9ec0597c548fcfb9bc"
    end
    on_arm do
      url "https://github.com/Stoffbergie/keep/releases/download/v#{version}/keep-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4bc66ba59494810c1b1ff0f75aa606b2109486ae449d7c4b9f78aef6a7c4ce9a"
    end
  end

  def install
    bin.install "keep"
  end

  test do
    assert_match "keep", shell_output("#{bin}/keep --version")
  end
end
