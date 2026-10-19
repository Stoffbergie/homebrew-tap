class Keep < Formula
  desc "Share files from your terminal with a link."
  homepage "https://github.com/Stoffbergie/keep"
  version "0.7.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Stoffbergie/keep/releases/download/v#{version}/keep-x86_64-apple-darwin.tar.gz"
      sha256 "f2d19d053fe351778cc31c22137fa83515ed7deef97f3d0f1c22473ca60a3bd2"
    end
    on_arm do
      url "https://github.com/Stoffbergie/keep/releases/download/v#{version}/keep-aarch64-apple-darwin.tar.gz"
      sha256 "b16758a773e1f0a1e08df2b2531ee706f5143cf7bcd8665ccc20fdf9d76f4d79"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Stoffbergie/keep/releases/download/v#{version}/keep-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "51258735dd443e94fc3569507f98dddd4ce159f89d1740c7ad0a8bb3df037ec7"
    end
    on_arm do
      url "https://github.com/Stoffbergie/keep/releases/download/v#{version}/keep-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "045f0b097f66f5d6e65f02c2d88263629052da9807b848fd7c49412895838c7a"
    end
  end

  def install
    bin.install "keep"
  end

  test do
    assert_match "keep", shell_output("#{bin}/keep --version")
  end
end
