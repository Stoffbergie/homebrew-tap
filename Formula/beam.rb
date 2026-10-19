class Beam < Formula
  desc "Share local servers through public HTTPS URLs."
  homepage "https://github.com/Stoffbergie/beam"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Stoffbergie/beam/releases/download/v#{version}/beam-x86_64-apple-darwin.tar.gz"
      sha256 "b13f989505e0537a4f3fb4634f58d350b3f409da3fdefe74539a6fc88e9147c0"
    end
    on_arm do
      url "https://github.com/Stoffbergie/beam/releases/download/v#{version}/beam-aarch64-apple-darwin.tar.gz"
      sha256 "75fd177d538cf0e15e10ca31b5ef3bfa49a88e3ab6e8d8a1220b20dd0caa2015"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Stoffbergie/beam/releases/download/v#{version}/beam-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9b4bf6c635bab0de1c88861da1db7461bb401f520ba327c8c389e330ec4a88e5"
    end
    on_arm do
      url "https://github.com/Stoffbergie/beam/releases/download/v#{version}/beam-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "72e14f0c1a8c4b10dcf0d5b15e6539ad7aa62fd06df598fd9211504bc2a10aa7"
    end
  end

  def install
    bin.install "beam"
  end

  test do
    assert_match "beam", shell_output("#{bin}/beam --version")
  end
end
