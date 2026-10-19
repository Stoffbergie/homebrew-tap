class Hook < Formula
  desc "Capture, inspect and replay webhooks to localhost."
  homepage "https://github.com/Stoffbergie/hook"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Stoffbergie/hook/releases/download/v#{version}/hook-x86_64-apple-darwin.tar.gz"
      sha256 "639911857d2a97ef34494e9804e10c2fb3f247cae78d9319e22c72103207f375"
    end
    on_arm do
      url "https://github.com/Stoffbergie/hook/releases/download/v#{version}/hook-aarch64-apple-darwin.tar.gz"
      sha256 "0d795b919913c3b1ae691d6b91c9ce294ab521ea6d8d0c3c3b3b3040e1dfdd8a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Stoffbergie/hook/releases/download/v#{version}/hook-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "12fdb4012ee4a68cbdd9b8ebc3102db9935cc20e806fe4ef30b990300e206233"
    end
    on_arm do
      url "https://github.com/Stoffbergie/hook/releases/download/v#{version}/hook-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cc0f7af9a7eeddb411f5da0ad0a13e85ff2a08efbbc199d05399be8b9b6f497b"
    end
  end

  def install
    bin.install "hook"
  end

  test do
    assert_match "hook", shell_output("#{bin}/hook --version")
  end
end
