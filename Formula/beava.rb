class Beava < Formula
  desc "Real-time feature server for fraud, ad-tech, and behavioral analytics"
  homepage "https://beava.dev"
  version "0.0.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/beava-dev/beava/releases/download/v#{version}/beava-macos-arm64.tar.gz"
      sha256 "307acdb54d272551d7d1f68255a724b2b80e8f7c43c93a3a5295efcc4f7b6eb6"
    end
    on_intel do
      url "https://github.com/beava-dev/beava/releases/download/v#{version}/beava-macos-x86_64.tar.gz"
      sha256 "2fdee540924aa8c790ba71f23a8315005314868f288c88cb708b11b1b1e09867"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/beava-dev/beava/releases/download/v#{version}/beava-linux-arm64.tar.gz"
      sha256 "3d46520bd78eb5c8483ffcfa843bc4d865c42a853e16f92b61a671ab5e062fa5"
    end
    on_intel do
      url "https://github.com/beava-dev/beava/releases/download/v#{version}/beava-linux-x86_64.tar.gz"
      sha256 "ffe4663aad5a40ec2b2a013c3d46854aff63919780b4d052a8e33ec08a3e8de6"
    end
  end

  def install
    bin.install "beava"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/beava --version")
  end
end
