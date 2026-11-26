class Site < Formula
  desc "Deploy static files to a live URL in one command."
  homepage "https://github.com/Stoffbergie/site"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Stoffbergie/site/releases/download/v#{version}/site-x86_64-apple-darwin.tar.gz"
      sha256 "5361f19db4de8b110e1f2727934f7f96c8bb8643498b1df42d5b53ae907daba9"
    end
    on_arm do
      url "https://github.com/Stoffbergie/site/releases/download/v#{version}/site-aarch64-apple-darwin.tar.gz"
      sha256 "df44f0dff3d37fde851ff8030bb4b0cb2c749cdc7f886546cc8651749f39e285"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Stoffbergie/site/releases/download/v#{version}/site-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "77cdc566c1d674784ffca2f97996799430e63958237bffdb4bcb68836f942b71"
    end
    on_arm do
      url "https://github.com/Stoffbergie/site/releases/download/v#{version}/site-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "678fac67f0e4aa3bdc449089c45b7f69cc76f8f858176df9d141cf9eadd32d7e"
    end
  end

  def install
    bin.install "site"
  end

  test do
    assert_match "site", shell_output("#{bin}/site --version")
  end
end
