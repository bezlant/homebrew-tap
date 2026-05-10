cask "climeter" do
  version "1.0.18"
  sha256 "bd00aead2881010594efc34e84360e353a28566447c9984ee01a713d983f3693"

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
