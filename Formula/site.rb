class Site < Formula
  desc "Deploy static files to a live URL in one command."
  homepage "https://github.com/Stoffbergie/site"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Stoffbergie/site/releases/download/v#{version}/site-x86_64-apple-darwin.tar.gz"
      sha256 "e9e044332a68dd933033d89007137f52e5625288cbd2fd974566765b6d639355"
    end
    on_arm do
      url "https://github.com/Stoffbergie/site/releases/download/v#{version}/site-aarch64-apple-darwin.tar.gz"
      sha256 "806ccd5d90f1c1a11d74128ae4c28f852f8fd9f27cef9710d24feeea49b3d80f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Stoffbergie/site/releases/download/v#{version}/site-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d4e13aa5b0e72e3c4820b957dfb888b0a4983c2430872990ce499409f64f90f7"
    end
    on_arm do
      url "https://github.com/Stoffbergie/site/releases/download/v#{version}/site-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1a6811370315636a7550b143ed70efaef956324ca65bb072cef5437bc85bde27"
    end
  end

  def install
    bin.install "site"
  end

  test do
    assert_match "site", shell_output("#{bin}/site --version")
  end
end
