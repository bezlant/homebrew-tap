cask "climeter" do
  version "1.0.13"
  sha256 "852f59d3bd6ab7ca6e0677b98bb2843f612b1a1b87a68f3b3deee90066ccd5d1"

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
