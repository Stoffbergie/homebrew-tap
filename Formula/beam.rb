class Beam < Formula
  desc "Share local servers through public HTTPS URLs."
  homepage "https://github.com/Stoffbergie/beam"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Stoffbergie/beam/releases/download/v#{version}/beam-x86_64-apple-darwin.tar.gz"
      sha256 "d2561d9205e1bbc509592b8bcace9ecb718295efe7f1cfb8640381e5b151e1c9"
    end
    on_arm do
      url "https://github.com/Stoffbergie/beam/releases/download/v#{version}/beam-aarch64-apple-darwin.tar.gz"
      sha256 "71b56be392b3384517b1d80487991585bab3dfc1e03afc3397ee50af1058be99"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Stoffbergie/beam/releases/download/v#{version}/beam-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f4085593edb6fef29434e229223c2728a2d26a6f4b8fa6e61fdf9339cd20a9d9"
    end
    on_arm do
      url "https://github.com/Stoffbergie/beam/releases/download/v#{version}/beam-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "369358f92e11b97ca6d8a0c27c39636ae83283d6ba9ec86014130fdd950d9044"
    end
  end

  def install
    bin.install "beam"
  end

  test do
    assert_match "beam", shell_output("#{bin}/beam --version")
  end
end
