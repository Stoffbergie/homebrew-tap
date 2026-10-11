cask "record" do
  version "0.3.0"

  on_intel do
    sha256 "1014219aff6978d0b20d757516e373e73b73fc839c78fd8c4f30558afd13c80a"
    url "https://github.com/Stoffbergie/record/releases/download/v#{version}/Record_#{version}_x64.dmg"
  end
  on_arm do
    sha256 "b85f978139103dc977d3e486f2962a714ffdbd3a398824b8c794f0bd62d1bbe4"
    url "https://github.com/Stoffbergie/record/releases/download/v#{version}/Record_#{version}_aarch64.dmg"
  end

  name "Record"
  desc "Privacy-first activity tracker for macOS"
  homepage "https://github.com/Stoffbergie/record"

  app "Record.app"

  zap trash: [
    "~/Library/Application Support/dev.stoff.record",
  ]
end
