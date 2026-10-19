class Beam < Formula
  desc "Share local servers through public HTTPS URLs."
  homepage "https://github.com/Stoffbergie/beam"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Stoffbergie/beam/releases/download/v#{version}/beam-x86_64-apple-darwin.tar.gz"
      sha256 "3815122426f17489f5403e8cf4fcfe64152a6305d74cea071e5735dccdaae97a"
    end
    on_arm do
      url "https://github.com/Stoffbergie/beam/releases/download/v#{version}/beam-aarch64-apple-darwin.tar.gz"
      sha256 "d16750fa5d3b008ec902e021b995f6c8fe2f81ba6b6511e9ece3d441be9c6815"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Stoffbergie/beam/releases/download/v#{version}/beam-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dd40b20e8bac81b5bfbb95e75d46aa076a1406cb5d40222ae3dd81b4133b7406"
    end
    on_arm do
      url "https://github.com/Stoffbergie/beam/releases/download/v#{version}/beam-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "96ca139bc25f3ec67d46126de86331cbe9bc19e9a1ae198e83ae7ceda49fb1a8"
    end
  end

  def install
    bin.install "beam"
  end

  test do
    assert_match "beam", shell_output("#{bin}/beam --version")
  end
end
