cask "climeter" do
  version "1.0.11"
  sha256 "df7d14a02019c49b3046fa65f391544ba00d99f84de769d6544f85ad1cc13ce1"

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
