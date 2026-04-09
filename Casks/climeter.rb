cask "climeter" do
  version "1.0.9"
  sha256 "934dc499611970ec9bdb1ff964e9e7fc4ad9c3d9a930b2335a335c5ecf1ca40a"

  url "https://github.com/bezlant/cliMeter/releases/download/v#{version}/Climeter.zip"
  name "cliMeter"
  desc "macOS menu bar app for tracking Claude Code API usage"
  homepage "https://github.com/bezlant/cliMeter"

  depends_on macos: ">= :sonoma"

  app "Climeter.app"

  postflight do
    system_command "/usr/bin/xattr",
         args: ["-d", "com.apple.quarantine", "#{appdir}/Climeter.app"],
         sudo: false
  end

  zap trash: [
    "~/Library/Logs/Climeter",
  ]
end
