class Site < Formula
  desc "Deploy static files to a live URL in one command."
  homepage "https://github.com/Stoffbergie/site"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Stoffbergie/site/releases/download/v#{version}/site-x86_64-apple-darwin.tar.gz"
      sha256 "d0bf472bb0d6188d3ea8e367665f8cf7a7ca8dc1a87462d2839860e572018edf"
    end
    on_arm do
      url "https://github.com/Stoffbergie/site/releases/download/v#{version}/site-aarch64-apple-darwin.tar.gz"
      sha256 "c82954571ea217078759e3d34e60643c45b345f73e9d97a854934062cce1bf61"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Stoffbergie/site/releases/download/v#{version}/site-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7c5f30d87db395f9eebb3fa03c0710567402a2d8d5b0c1033dc3ce91a5474165"
    end
    on_arm do
      url "https://github.com/Stoffbergie/site/releases/download/v#{version}/site-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8aee5f6de27a1faa7bf59469a7b2081f6d326fbe6e478844d6356d1f933aff86"
    end
  end

  def install
    bin.install "site"
  end

  test do
    assert_match "site", shell_output("#{bin}/site --version")
  end
end
