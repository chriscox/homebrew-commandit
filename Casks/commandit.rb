# This file is a template rendered to Casks/commandit.rb by the CommandIt
# release workflow on every stable tag. Version and checksum placeholders
# below are replaced with the real release values automatically. Do not
# edit Casks/commandit.rb directly — any manual changes are overwritten
# on the next release. To change the formula, edit this template instead.
cask "commandit" do
  version "1.1.0"
  sha256 "1413c1cee5f85aaefecec0fb3866afa1ed9e24e1b134c2aa1439697bfa14ebba"

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
