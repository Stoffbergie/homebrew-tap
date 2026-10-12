class Keep < Formula
  desc "Files from your terminal, kept forever"
  homepage "https://github.com/Stoffbergie/keep"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Stoffbergie/keep/releases/download/v#{version}/keep-x86_64-apple-darwin.tar.gz"
      sha256 "37194f86a05bb6f5ec4109746c5c349f5c2d9e6e5c671d0e3074875f51c8c392"
    end
    on_arm do
      url "https://github.com/Stoffbergie/keep/releases/download/v#{version}/keep-aarch64-apple-darwin.tar.gz"
      sha256 "a66436a95eca3241c908da5aeabde551dafa5650662d99d9ebe595ea366af48b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Stoffbergie/keep/releases/download/v#{version}/keep-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4359f6cc0757859f8abbd1c8591a33cfa15486cc936793209883e2445ce1a1c5"
    end
    on_arm do
      url "https://github.com/Stoffbergie/keep/releases/download/v#{version}/keep-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f079b2a579f69a73c0c19a246af325df2b6f3e7a311edf1e92b02d792067c095"
    end
  end

  def install
    bin.install "keep"
  end

  test do
    assert_match "keep", shell_output("#{bin}/keep --version")
  end
end
