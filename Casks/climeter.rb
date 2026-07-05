# frozen_string_literal: true

cask "climeter" do
  version "1.0.23"
  sha256 "b6683b8e39fd6ee39c43bac9d1c65d4a9ef57d7d7cf9280bc131d77c881290ce"

  url "https://github.com/bezlant/cliMeter/releases/download/v#{version}/Climeter.zip"
  name "cliMeter"
  desc "Menu bar app for tracking Claude Code and Codex usage"
  homepage "https://github.com/bezlant/cliMeter"

  depends_on macos: :sonoma

  app "Climeter.app"

  zap trash: "~/Library/Logs/Climeter"
end
