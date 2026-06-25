# frozen_string_literal: true

cask "climeter" do
  version "1.0.22"
  sha256 "80694ddce22a4741ed6057a4dde3193b21e04206aea4e0c130fce829ce78cd0d"

  url "https://github.com/bezlant/cliMeter/releases/download/v#{version}/Climeter.zip"
  name "cliMeter"
  desc "Menu bar app for tracking Claude Code and Codex usage"
  homepage "https://github.com/bezlant/cliMeter"

  depends_on macos: :sonoma

  app "Climeter.app"

  zap trash: "~/Library/Logs/Climeter"
end
