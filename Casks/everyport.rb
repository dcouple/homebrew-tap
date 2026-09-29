cask "everyport" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.1.2"
  sha256 arm:   "64a1ef74c5ddb1cd2b65e14f64890092fc57fd03c5a6e81c2bb3ecc3b8a9a429",
         intel: "cfd902eeba0bb2c845bbb954d0088300dfd7c3a7146283da26d4f64b13cf0b2b"

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
