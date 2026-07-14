# frozen_string_literal: true

cask "climeter" do
  version "1.0.25"
  sha256 "e760d4ce7be8bcc387b709c325041e00135d5c18b875cad87ea987acc6b52919"

  url "https://github.com/bezlant/cliMeter/releases/download/v#{version}/Climeter.zip"
  name "cliMeter"
  desc "Menu bar app for tracking Claude Code and Codex usage"
  homepage "https://github.com/bezlant/cliMeter"

  depends_on macos: :sonoma

  app "Climeter.app"

  zap trash: "~/Library/Logs/Climeter"
end
