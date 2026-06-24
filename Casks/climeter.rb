# frozen_string_literal: true

cask "climeter" do
  version "1.0.21"
  sha256 "9892039c714ede020caed32d3c6bdb284f14aa4985029dbf27b7178ed99d4277"

  url "https://github.com/bezlant/cliMeter/releases/download/v#{version}/Climeter.zip"
  name "cliMeter"
  desc "Menu bar app for tracking Claude Code and Codex usage"
  homepage "https://github.com/bezlant/cliMeter"

  depends_on macos: :sonoma

  app "Climeter.app"

  zap trash: "~/Library/Logs/Climeter"
end
