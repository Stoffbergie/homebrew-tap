class Beam < Formula
  desc "Your localhost, on the internet"
  homepage "https://github.com/Stoffbergie/beam"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Stoffbergie/beam/releases/download/v#{version}/beam-x86_64-apple-darwin.tar.gz"
      sha256 "e412a3073b8919ebb06231551321384fd8a9d65c7e06eb34efa8de3bc3fa82e4"
    end
    on_arm do
      url "https://github.com/Stoffbergie/beam/releases/download/v#{version}/beam-aarch64-apple-darwin.tar.gz"
      sha256 "1595b6c3edb3033a3c9efd221d29b95f8f437f8314ee7989a284ab7b38a3c142"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Stoffbergie/beam/releases/download/v#{version}/beam-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e1a3c79ae5613ff224542accbd41a5dfa1a6e2ab03bc47a1256b4fec9eb74f03"
    end
    on_arm do
      url "https://github.com/Stoffbergie/beam/releases/download/v#{version}/beam-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cc9e1c75c89fa85ee77c5ed0bc2fa1dd9e4e1a43d4b3ad7759a8ee9525f80ad6"
    end
  end

  def install
    bin.install "beam"
  end

  test do
    assert_match "beam", shell_output("#{bin}/beam --version")
  end
end
