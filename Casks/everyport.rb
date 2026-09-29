cask "everyport" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.1"
  sha256 arm:   "0eea4d24c072b30fde62fa2b7b45385494bcbc7cef1c1649cec790d96819cf32",
         intel: "2e9e6c715a97636615f7ec6f4ab90f07bfdf498a9c521d71099a9d95ec9375a4"

  url "https://github.com/greenfield-inc/everyport/releases/download/v#{version}/everyport-#{version}-#{arch}.dmg"
  name "Everyport"
  desc "Menu bar app that shows every dev server on your machine"
  homepage "https://github.com/greenfield-inc/everyport"

  depends_on macos: :ventura

  app "Everyport.app"

  zap trash: [
    "~/Library/Application Support/everyport",
    "~/Library/Application Support/dev.everyport.desktop",
    "~/Library/Caches/dev.everyport.desktop",
    "~/Library/WebKit/dev.everyport.desktop",
  ]
end
