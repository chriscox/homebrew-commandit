# This file is a template rendered to Casks/commandit.rb by the CommandIt
# release workflow on every stable tag. Version and checksum placeholders
# below are replaced with the real release values automatically. Do not
# edit Casks/commandit.rb directly — any manual changes are overwritten
# on the next release. To change the formula, edit this template instead.
cask "commandit" do
  version "1.0.2"
  sha256 "bc017cdb86d58b8125f6ec6c2d85978bb16e4fa9f85c8861f9b140cc8d4eca25"

  url "https://github.com/chriscox/commandit-releases/releases/download/v#{version}/CommandIt-#{version}.dmg",
      verified: "github.com/chriscox/commandit-releases/"
  name "CommandIt"
  desc "AI-powered command palette and snippet library"
  homepage "https://commandit.ai/"

  livecheck do
    url "https://github.com/chriscox/commandit-releases/releases/latest"
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "CommandIt.app"

  zap trash: [
    "~/Library/Application Support/CommandIt",
    "~/Library/Caches/ai.commandit.macos",
    "~/Library/Logs/CommandIt",
    "~/Library/Preferences/ai.commandit.macos.plist",
  ]
end
