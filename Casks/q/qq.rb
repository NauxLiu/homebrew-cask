cask "qq" do
  version "6.9.61_241118_01"
  sha256 "3afa6918ad227607e5550d1d24bf53e8e2123eccb3408cffe71de7207d1b2e66"

  url "https://dldir1.qq.com/qqfile/qq/QQNT/Mac/QQ_#{version}.dmg"
  name "QQ"
  desc "Instant messaging tool"
  homepage "https://im.qq.com/macqq/index.shtml"

  livecheck do
    url "https://im.qq.com/rainbow/ntQQDownload/"
    regex(/QQ[._-]v?(\d+(?:[._]\d+)+)\.dmg/i)
  end

  auto_updates true

  app "QQ.app"

  uninstall quit: "com.tencent.qq"

  zap trash: [
    "~/Library/Application Scripts/com.tencent.qq",
    "~/Library/Application Scripts/FN2V63AD2J.com.tencent.localserver2",
    "~/Library/Application Scripts/FN2V63AD2J.com.tencent.ScreenCapture2",
    "~/Library/Caches/com.tencent.qq",
    "~/Library/Containers/com.tencent.qq",
    "~/Library/Containers/FN2V63AD2J.com.tencent.localserver2",
    "~/Library/Containers/FN2V63AD2J.com.tencent.ScreenCapture2",
    "~/Library/Group Containers/FN2V63AD2J.com.tencent",
    "~/Library/Preferences/com.tencent.qq.plist",
    "~/Library/Saved Application State/com.tencent.qq.savedState",
    "~/Library/WebKit/com.tencent.qq",
  ]
end
