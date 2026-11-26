class Site < Formula
  desc "Deploy static files to a live URL in one command."
  homepage "https://github.com/Stoffbergie/site"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Stoffbergie/site/releases/download/v#{version}/site-x86_64-apple-darwin.tar.gz"
      sha256 "7d8b43d805a8f4a3e62e690f240ca51209dabefbaae6dd802dc9d2e5639ba3d3"
    end
    on_arm do
      url "https://github.com/Stoffbergie/site/releases/download/v#{version}/site-aarch64-apple-darwin.tar.gz"
      sha256 "b2ca94ee444ab1d848ddb7468b89c981c0e91155afe8856f0b38a3b32ce83178"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Stoffbergie/site/releases/download/v#{version}/site-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e22f2c461c505ef8eeaf8ad0fa492a2b6088567261c605f7d39db3245707269e"
    end
    on_arm do
      url "https://github.com/Stoffbergie/site/releases/download/v#{version}/site-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "edf3bb98bb0418dbdbc4427a321eca3e2c0a3e1b1478af5e9ae943daa016825f"
    end
  end

  def install
    bin.install "site"
  end

  test do
    assert_match "site", shell_output("#{bin}/site --version")
  end
end
