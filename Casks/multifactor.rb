cask "multifactor" do
  arch arm: "aarch64", intel: "x64"

  version "1.5.0"
  sha256 arm:   "d67ca7770f44462390afade981c03a577aa6b2bb96bc71afd453ba19adb88d9e",
         intel: "285952fdcd4bcc117f3d5a33f28869b3647337e7567a2fa9e23df5983c55f076"

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
