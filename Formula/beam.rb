class Beam < Formula
  desc "Share local servers through public HTTPS URLs."
  homepage "https://github.com/Stoffbergie/beam"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Stoffbergie/beam/releases/download/v#{version}/beam-x86_64-apple-darwin.tar.gz"
      sha256 "152477e4bc26393af11889726cc6ae19d0227ee61d3405318d70aa841ff537b3"
    end
    on_arm do
      url "https://github.com/Stoffbergie/beam/releases/download/v#{version}/beam-aarch64-apple-darwin.tar.gz"
      sha256 "f92c607219146767c4959cdbaa9d6b4462cb50d770629cf8b0b2e0ed719a26bf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Stoffbergie/beam/releases/download/v#{version}/beam-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fe2f967f00e48eaa7762b37dfaf5ab2a491828e221619a494f9260bee90d5e33"
    end
    on_arm do
      url "https://github.com/Stoffbergie/beam/releases/download/v#{version}/beam-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1e95707370cd8bbb0f4b474dfd4170ce6d4c145255c422ebd500213ccb3dfa77"
    end
  end

  def install
    bin.install "beam"
  end

  test do
    assert_match "beam", shell_output("#{bin}/beam --version")
  end
end
