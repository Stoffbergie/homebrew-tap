#!/bin/sh
set -eu
formula=$1
version=$2
darwin_x64=$3
darwin_arm64=$4
linux_x64=$5
linux_arm64=$6

case "$formula" in
  keep) desc="Files from your terminal, kept forever" ;;
  beam) desc="Your localhost, on the internet" ;;
  *) echo "Unknown formula: $formula" >&2; exit 1 ;;
esac
class="$(printf '%s' "$formula" | cut -c1 | tr '[:lower:]' '[:upper:]')$(printf '%s' "$formula" | cut -c2-)"

cat > "Formula/$formula.rb" << EOF
class $class < Formula
  desc "$desc"
  homepage "https://github.com/Stoffbergie/$formula"
  version "$version"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/Stoffbergie/$formula/releases/download/v#{version}/$formula-x86_64-apple-darwin.tar.gz"
      sha256 "$darwin_x64"
    end
    on_arm do
      url "https://github.com/Stoffbergie/$formula/releases/download/v#{version}/$formula-aarch64-apple-darwin.tar.gz"
      sha256 "$darwin_arm64"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Stoffbergie/$formula/releases/download/v#{version}/$formula-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "$linux_x64"
    end
    on_arm do
      url "https://github.com/Stoffbergie/$formula/releases/download/v#{version}/$formula-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "$linux_arm64"
    end
  end

  def install
    bin.install "$formula"
  end

  test do
    assert_match "$formula", shell_output("#{bin}/$formula --version")
  end
end
EOF
