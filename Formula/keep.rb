class Keep < Formula
  desc "Share files from your terminal with a link."
  homepage "https://github.com/Stoffbergie/keep"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Stoffbergie/keep/releases/download/v#{version}/keep-x86_64-apple-darwin.tar.gz"
      sha256 "9acf9a1c5c86cb857bef2bd1b2421e03cfdd8fbc0f690f0ab8f1b171fba937de"
    end
    on_arm do
      url "https://github.com/Stoffbergie/keep/releases/download/v#{version}/keep-aarch64-apple-darwin.tar.gz"
      sha256 "749206eda5e00d75c49bc4d17f8b868cb0b895f3687490ef65cc622d3d57648a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Stoffbergie/keep/releases/download/v#{version}/keep-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b6f14c910a0f9961395db097f02500bd80d18b5b741cea41ac03fa0fe7c96b07"
    end
    on_arm do
      url "https://github.com/Stoffbergie/keep/releases/download/v#{version}/keep-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f87a0696e438ad304012d28ecc05623acb084e90c7bf8d4dc0e00521c76b059d"
    end
  end

  def install
    bin.install "keep"
  end

  test do
    assert_match "keep", shell_output("#{bin}/keep --version")
  end
end
