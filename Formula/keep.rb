class Keep < Formula
  desc "Files from your terminal, kept forever"
  homepage "https://github.com/Stoffbergie/keep"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Stoffbergie/keep/releases/download/v#{version}/keep-x86_64-apple-darwin.tar.gz"
      sha256 "ef2301a06eb8fa2f7516be1f78d9d191e870548e86b3c587b06cdf39e1e86b6b"
    end
    on_arm do
      url "https://github.com/Stoffbergie/keep/releases/download/v#{version}/keep-aarch64-apple-darwin.tar.gz"
      sha256 "419ba0f6cb8fa101283774ea0370cf69a196c282934ae86320fdbd709fc05710"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Stoffbergie/keep/releases/download/v#{version}/keep-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f1ad03102654f81108addf5877af89e65c38a9ec6380766a81a4ce5bab89e87e"
    end
    on_arm do
      url "https://github.com/Stoffbergie/keep/releases/download/v#{version}/keep-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b347a2b162aeca59e9d7df57f911e211575b4fbfd5a7caf9b3eb3ab1d39cdbec"
    end
  end

  def install
    bin.install "keep"
  end

  test do
    assert_match "keep", shell_output("#{bin}/keep --version")
  end
end
