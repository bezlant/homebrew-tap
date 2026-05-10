cask "climeter" do
  version "1.0.17"
  sha256 "e635f439fc16262cfd122cd0a7c87f8c9bbff1fcc676a25d9d992c1b41387610"

  url "https://github.com/bezlant/cliMeter/releases/download/v#{version}/Climeter.zip"
  name "cliMeter"
  desc "macOS menu bar app for tracking Claude Code and Codex usage"
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
