cask "multifactor" do
  arch arm: "aarch64", intel: "x64"

  version "1.4.0"
  sha256 arm:   "7ad2630f2a9e5d4eadf5f9cd352d6dc45c7681dd211cb47379a63b48bb294b56",
         intel: "df53a42b2d2cb23bb57ba6b70e8c49d7ea24283b7735bfcd93452cbfe2fcac58"

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
