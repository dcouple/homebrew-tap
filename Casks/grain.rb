cask "grain" do
  arch arm: "arm64", intel: "x64"

  version "0.4.0"
  sha256 arm:   "b4c1069a744d124f64f294297b30b3580eaca12ad9e7a924e26cc926a12d38ba",
         intel: "a5fad4407694e30198e70fc6a229d55f50237d641a77a7f649259cc924b56eec"

  url "https://updates.rungrain.com/grain/darwin/#{arch}/Grain-darwin-#{arch}-#{version}.zip"
  name "Grain"
  desc "Desktop workspace for building with AI agents"
  homepage "https://rungrain.com/"

  livecheck do
    url "https://updates.rungrain.com/grain/darwin/#{arch}/RELEASES.json"
    strategy :json do |json|
      json["currentRelease"]
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Grain.app"
  binary "#{appdir}/Grain.app/Contents/Resources/cli/bin/grain"
end
