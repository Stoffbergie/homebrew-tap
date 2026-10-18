class Hook < Formula
  desc "Webhooks, caught and replayed"
  homepage "https://github.com/Stoffbergie/hook"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Stoffbergie/hook/releases/download/v#{version}/hook-x86_64-apple-darwin.tar.gz"
      sha256 "44ebfecf136fdc26d95b988ff9f9f316297f34c51a48ce258ac255a0c5b7c42d"
    end
    on_arm do
      url "https://github.com/Stoffbergie/hook/releases/download/v#{version}/hook-aarch64-apple-darwin.tar.gz"
      sha256 "3cdd4cd73cb55a89aa8b8ac36da318dc788af7107f696642b5e3bb7957d9ac01"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Stoffbergie/hook/releases/download/v#{version}/hook-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4c1b2f57c8c2a26b6f8e74930251acf1812ce0f5ccece43b64558f49f9d15cb3"
    end
    on_arm do
      url "https://github.com/Stoffbergie/hook/releases/download/v#{version}/hook-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "02d16926382cb0da09742d2728bbf9026c3aa37863b2f6dfe6b9282cf79539aa"
    end
  end

  def install
    bin.install "hook"
  end

  test do
    assert_match "hook", shell_output("#{bin}/hook --version")
  end
end
