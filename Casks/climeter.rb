# frozen_string_literal: true

cask "climeter" do
  version "1.0.26"
  sha256 "c0b8d8d6f3b591a2aff4c0c6ff47c19c2022f590b6b2853487e4df1d1170f3ce"

  url "https://github.com/bezlant/cliMeter/releases/download/v#{version}/Climeter.zip"
  name "cliMeter"
  desc "Menu bar app for tracking Claude Code and Codex usage"
  homepage "https://github.com/bezlant/cliMeter"

  depends_on macos: :sonoma
  depends_on formula: "jq"

  app "Climeter.app"

  zap trash: "~/Library/Logs/Climeter"
end
