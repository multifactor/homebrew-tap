cask "multifactor" do
  arch arm: "aarch64", intel: "x64"

  version "1.4.1"
  sha256 arm:   "c6862772da86fa4a252f5d768886d6d98574de62d8f2bde3115c4eda52386b34",
         intel: "3d1ad368b98d1edbb9bda50f84568a51a271f2d8873d1ac1a85b0d58a387fc8a"

  url "https://downloads.multifactor.com/files/#{version}/Multifactor_#{version}_#{arch}.dmg"
  name "Multifactor"
  desc "Account Manager for the Agentic Era"
  homepage "https://multifactor.com/"

  livecheck do
    url "https://downloads.multifactor.com/latest/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :big_sur

  app "Multifactor.app"

  zap trash: [
    "~/Library/Application Support/com.multifactor.app",
    "~/Library/Caches/com.multifactor.app",
    "~/Library/Containers/com.multifactor.app.SafariExtension",
    "~/Library/HTTPStorages/com.multifactor.app",
    "~/Library/Logs/com.multifactor.app",
    "~/Library/Preferences/com.multifactor.app.plist",
    "~/Library/Saved Application State/com.multifactor.app.savedState",
    "~/Library/WebKit/com.multifactor.app",
  ]
end
