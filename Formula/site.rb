class Site < Formula
  desc "Deploy static files to a live URL in one command."
  homepage "https://github.com/Stoffbergie/site"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Stoffbergie/site/releases/download/v#{version}/site-x86_64-apple-darwin.tar.gz"
      sha256 "a1ac0b16498ce6562ba850cdc99603046e3cdfb693fa327e6053e8a64d834030"
    end
    on_arm do
      url "https://github.com/Stoffbergie/site/releases/download/v#{version}/site-aarch64-apple-darwin.tar.gz"
      sha256 "a338b02fda79c42ad2202e6c59f1c7da6acfca88cec885e44310819873271e9d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Stoffbergie/site/releases/download/v#{version}/site-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6969687e8f73b8b412a51ff3a781351058b14cb12b5d14a16f5b97889d21943f"
    end
    on_arm do
      url "https://github.com/Stoffbergie/site/releases/download/v#{version}/site-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8142a5716ad876ea6ce4fedcaa480ed8ac7ee6d8b7a4500c2766ac500cbaf2e8"
    end
  end

  def install
    bin.install "site"
  end

  test do
    assert_match "site", shell_output("#{bin}/site --version")
  end
end
