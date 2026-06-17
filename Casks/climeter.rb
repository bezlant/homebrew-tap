# frozen_string_literal: true

cask "climeter" do
  version "1.0.20"
  sha256 "f55b03c0d48834d6d493d55e24d87c7baded94978472af5831cf0c9b7d139775"

  url "https://github.com/bezlant/cliMeter/releases/download/v#{version}/Climeter.zip"
  name "cliMeter"
  desc "Menu bar app for tracking Claude Code and Codex usage"
  homepage "https://github.com/bezlant/cliMeter"

  depends_on macos: :sonoma

  app "Climeter.app"

  zap trash: "~/Library/Logs/Climeter"
end
