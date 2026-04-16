# This file is a template rendered to Casks/commandit.rb by the CommandIt
# release workflow on every stable tag. Version and checksum placeholders
# below are replaced with the real release values automatically. Do not
# edit Casks/commandit.rb directly — any manual changes are overwritten
# on the next release. To change the formula, edit this template instead.
cask "commandit" do
  version "1.1.2"
  sha256 "3f3f9ee60f1af7f1e2694099c661376ec321d84b8660420dd1e32d63203f4a5b"

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
