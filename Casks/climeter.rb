# frozen_string_literal: true

cask "climeter" do
  version "1.0.27"
  sha256 "f3c3c525026fe101c1f4dd1a0e82605425394b91d0ec250c898da05a06fe044d"

  url "https://github.com/bezlant/cliMeter/releases/download/v#{version}/Climeter.zip"
  name "cliMeter"
  desc "Menu bar app for tracking Claude Code and Codex usage"
  homepage "https://github.com/bezlant/cliMeter"

  depends_on macos: :sonoma
  depends_on formula: "jq"

  app "Climeter.app"

  zap trash: "~/Library/Logs/Climeter"
end
