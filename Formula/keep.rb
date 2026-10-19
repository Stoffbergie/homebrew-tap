class Keep < Formula
  desc "Share files from your terminal with a link."
  homepage "https://github.com/Stoffbergie/keep"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Stoffbergie/keep/releases/download/v#{version}/keep-x86_64-apple-darwin.tar.gz"
      sha256 "6eb4af0a6ba1011acd61bee1999ee1c7f1cb4a6d95fad5b1a3f183a6272e1288"
    end
    on_arm do
      url "https://github.com/Stoffbergie/keep/releases/download/v#{version}/keep-aarch64-apple-darwin.tar.gz"
      sha256 "488b1f370fb2e4a048b703a6bb572ae8d444f6e89eb129b67064f42e49e97be8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Stoffbergie/keep/releases/download/v#{version}/keep-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0931b666482e046c1e299ab194666e36b5616168e65baee8d09d2e4e0a456519"
    end
    on_arm do
      url "https://github.com/Stoffbergie/keep/releases/download/v#{version}/keep-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "615beb0bd17fb3ea15f249c2ea20f9ecac75a7a7d6388b9b417115f7def20254"
    end
  end

  def install
    bin.install "keep"
  end

  test do
    assert_match "keep", shell_output("#{bin}/keep --version")
  end
end
