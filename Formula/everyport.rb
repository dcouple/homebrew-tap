class Everyport < Formula
  desc "See every dev server on your machine, or any box you can reach"
  homepage "https://github.com/greenfield-inc/everyport"
  version "0.1.0"
  license "MIT"

  base = "https://github.com/greenfield-inc/everyport/releases/download/v#{version}"

  on_macos do
    on_arm do
      url "#{base}/everyport-aarch64-apple-darwin"
      sha256 "8bee6745a061e774aad1545655ca92ff1cfecbaceeeffc0f64503c7018659c17"
    end
    on_intel do
      url "#{base}/everyport-x86_64-apple-darwin"
      sha256 "25a9e6eabfc88f0f2c12540298b8d64320994c43a7d1028d9cdf481e82b30edc"
    end
  end

  on_linux do
    on_arm do
      url "#{base}/everyport-aarch64-unknown-linux-musl"
      sha256 "19d9d545fc9d90e066ced2b478139b005c2948c9246b49a5d0b7716df3efaa7c"
    end
    on_intel do
      url "#{base}/everyport-x86_64-unknown-linux-musl"
      sha256 "7fc97b6a773796dd2c6e787abe69bd0b2b6027c1cf401b7df6fb593236739c61"
    end
  end

  def install
    bin.install Dir["everyport-*"].first => "everyport"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/everyport --version")
  end
end
