cask "recents" do
  version "2.3.2"
  sha256 :no_check

  url "https://recentsapp.com/releases/Recents_latest.dmg"
  name "Recents"
  desc "File launcher"
  homepage "https://recentsapp.com/"

  livecheck do
    url "https://api.appcenter.ms/v0.1/public/sparkle/apps/74f5ee9e-bf2d-4be3-b92a-3e8766433b8b"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :monterey"

  app "Recents.app"

  zap trash: [
    "~/Library/Application Support/com.lapier.Recents",
    "~/Library/Caches/com.lapier.Recents",
    "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.lapier.Recents",
    "~/Library/HTTPStorages/com.lapier.Recents",
    "~/Library/Preferences/com.lapier.Recents.plist",
  ]
end
