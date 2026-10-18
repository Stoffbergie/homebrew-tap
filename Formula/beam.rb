class Beam < Formula
  desc "Your localhost, on the internet"
  homepage "https://github.com/Stoffbergie/beam"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Stoffbergie/beam/releases/download/v#{version}/beam-x86_64-apple-darwin.tar.gz"
      sha256 "4580af4c928fdf9acf923eb4fd1971f7c9040dc8a2f41aa60e5107e5c674e7b9"
    end
    on_arm do
      url "https://github.com/Stoffbergie/beam/releases/download/v#{version}/beam-aarch64-apple-darwin.tar.gz"
      sha256 "18e12ab0c620f304ecabaf27b050bc884373f569905584065e0523aa24e77fd5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Stoffbergie/beam/releases/download/v#{version}/beam-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "59fe0ae8dd7919291486c30a26121d37e7795a1351ce2cb997de6c72cc7f0d83"
    end
    on_arm do
      url "https://github.com/Stoffbergie/beam/releases/download/v#{version}/beam-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "45a5d8abd338fa1cffd1d4312a5153c04d24955496968989bc9376a6d37c3268"
    end
  end

  def install
    bin.install "beam"
  end

  test do
    assert_match "beam", shell_output("#{bin}/beam --version")
  end
end
