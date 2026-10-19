cask "record" do
  version "0.3.1"

  on_intel do
    sha256 "384ecfb3f8c76269499763fab02452b57f92689de68a1a98d5cebd0703fe278a"
    url "https://github.com/Stoffbergie/record/releases/download/v#{version}/Record_#{version}_x64.dmg"
  end
  on_arm do
    sha256 "1bf47e23d3f36e6ba3e7b45ec3014f62c3935c4c57d5ec1c64a759f99f2ac6f5"
    url "https://github.com/Stoffbergie/record/releases/download/v#{version}/Record_#{version}_aarch64.dmg"
  end

  name "Record"
  desc "Track your apps and projects locally on macOS."
  homepage "https://github.com/Stoffbergie/record"

  app "Record.app"

  zap trash: [
    "~/Library/Application Support/dev.stoff.record",
  ]
end
