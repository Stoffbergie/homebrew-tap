class Shrd < Formula
  desc "Share anything instantly - CLI-first content sharing"
  homepage "https://github.com/Stoffberg/shrd.sh"
  version "0.1.13"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Stoffberg/shrd.sh/releases/download/cli-v#{version}/shrd-x86_64-apple-darwin.tar.gz"
      sha256 "e9886b6b06484cb240251754d3333581fe3b7365164c6c80a227055164a00f80"
    end
    on_arm do
      url "https://github.com/Stoffberg/shrd.sh/releases/download/cli-v#{version}/shrd-aarch64-apple-darwin.tar.gz"
      sha256 "e62c89645c51d40c757da4ffcd36fdaf44d9a923d161ed8aeb4aeb80e2addecf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Stoffberg/shrd.sh/releases/download/cli-v#{version}/shrd-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "33fc7c70c2036e947626736d745dfdcd09d4ce6b904ed07549be4c06eda4c564"
    end
    on_arm do
      url "https://github.com/Stoffberg/shrd.sh/releases/download/cli-v#{version}/shrd-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a0da2372c8ffc982f639f853485c3165ad79a63341c1527c53f0df929769cd28"
    end
  end

  def install
    bin.install "shrd"
  end

  test do
    assert_match "shrd", shell_output("#{bin}/shrd --version")
  end
end
