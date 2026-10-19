class Hook < Formula
  desc "Capture, inspect and replay webhooks to localhost."
  homepage "https://github.com/Stoffbergie/hook"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Stoffbergie/hook/releases/download/v#{version}/hook-x86_64-apple-darwin.tar.gz"
      sha256 "a785ef528d30d1abbdae4e123b3f1da733be00bf8fa33aa1dda9d97d6c42018b"
    end
    on_arm do
      url "https://github.com/Stoffbergie/hook/releases/download/v#{version}/hook-aarch64-apple-darwin.tar.gz"
      sha256 "3064078ebafc9866da192c3845e237639ad8c98ad3fa4b065629a4d09b77f692"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Stoffbergie/hook/releases/download/v#{version}/hook-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0fc15d694d2be4a5dc1a2f69813747e797c0c967c7b574df29090841a9a83bc3"
    end
    on_arm do
      url "https://github.com/Stoffbergie/hook/releases/download/v#{version}/hook-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0b0d326219ed545f0fe8110749e5a278901a822c165281e1a3cd6e3473dfdab1"
    end
  end

  def install
    bin.install "hook"
  end

  test do
    assert_match "hook", shell_output("#{bin}/hook --version")
  end
end
