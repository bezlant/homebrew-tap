cask "climeter" do
  version "1.0.8"
  sha256 "c3cee119df325e9cfe0c47cd868031c6dfaf6d19a2411a88691606ab03d06f13"

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
