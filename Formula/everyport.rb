class Everyport < Formula
  desc "See every dev server on your machine, or any box you can reach"
  homepage "https://github.com/greenfield-inc/everyport"
  version "0.1.3"
  license "MIT"

  base = "https://github.com/greenfield-inc/everyport/releases/download/v#{version}"

  on_macos do
    on_arm do
      url "#{base}/everyport-aarch64-apple-darwin"
      sha256 "1ff31a4c9bdf8299a794d64fb2ba3a30bfccb46a4f4fc5e395df97410da4dc30"
    end
    on_intel do
      url "#{base}/everyport-x86_64-apple-darwin"
      sha256 "ca1ae091062721c2a3d7ce3850f682fcc9d177a106edb074c8c064a5cac5c911"
    end
  end

  on_linux do
    on_arm do
      url "#{base}/everyport-aarch64-unknown-linux-musl"
      sha256 "e24cf664d51d1831daa0cbaad157ac9df76418dffc3a4fe81b83b8411b7adc78"
    end
    on_intel do
      url "#{base}/everyport-x86_64-unknown-linux-musl"
      sha256 "802da69fe7990319c4bcc80489e3b77457136a54b680fffb33a86a1c83825e22"
    end
  end

  def install
    bin.install Dir["everyport-*"].first => "everyport"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/everyport --version")
  end
end
