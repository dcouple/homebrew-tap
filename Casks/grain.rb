cask "grain" do
  version "0.2.21"
  sha256 "e3793cab8fc27d4490650cf0ea4c66283a6420a55d237d469813f51f4e43a19f"

  url "https://updates.rungrain.com/grain/darwin/arm64/Grain-darwin-arm64-#{version}.zip"
  name "Grain"
  desc "Desktop workspace for building with AI agents"
  homepage "https://rungrain.com/"

  livecheck do
    url "https://updates.rungrain.com/grain/darwin/arm64/RELEASES.json"
    strategy :json do |json|
      json["currentRelease"]
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Grain.app"
  binary "#{appdir}/Grain.app/Contents/Resources/cli/bin/grain"
end
