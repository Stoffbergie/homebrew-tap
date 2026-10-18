class Beam < Formula
  desc "Your localhost, on the internet"
  homepage "https://github.com/Stoffbergie/beam"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Stoffbergie/beam/releases/download/v#{version}/beam-x86_64-apple-darwin.tar.gz"
      sha256 "6c2bdddefcdb65c5a26362553df52f7ca59b1aef8d4e7430be9ef2ff73fbbd93"
    end
    on_arm do
      url "https://github.com/Stoffbergie/beam/releases/download/v#{version}/beam-aarch64-apple-darwin.tar.gz"
      sha256 "5cbed5037fc3067a052b8683caf8cb83d1b28dd2867fb328d5328097740a94bf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Stoffbergie/beam/releases/download/v#{version}/beam-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "71eebeaf0d75749e92a9cb023ac4713e879c1f2a439c0a907aa61cc617025524"
    end
    on_arm do
      url "https://github.com/Stoffbergie/beam/releases/download/v#{version}/beam-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fc6233cbc8b656175f021678319965fb63c22f409f9ee4bccd060cac2117c095"
    end
  end

  def install
    bin.install "beam"
  end

  test do
    assert_match "beam", shell_output("#{bin}/beam --version")
  end
end
