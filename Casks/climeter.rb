# frozen_string_literal: true

cask "climeter" do
  version "1.0.24"
  sha256 "27d93319f8b51eed113c61c824b88a8fd18ba70a604b86f466b8bc0e4d9a6df0"

  url "https://github.com/bezlant/cliMeter/releases/download/v#{version}/Climeter.zip"
  name "cliMeter"
  desc "Menu bar app for tracking Claude Code and Codex usage"
  homepage "https://github.com/bezlant/cliMeter"

  depends_on macos: :sonoma

  app "Climeter.app"

  zap trash: "~/Library/Logs/Climeter"
end
