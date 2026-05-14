class Beava < Formula
  desc "Real-time feature server for fraud, ad-tech, and behavioral analytics"
  homepage "https://beava.dev"
  version "0.0.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/beava-dev/beava/releases/download/v#{version}/beava-macos-arm64.tar.gz"
      sha256 "a9b6710e55827ce49ec2186e5bd381309b532e11e2b933b1df511f35c6135a6b"
    end
    on_intel do
      url "https://github.com/beava-dev/beava/releases/download/v#{version}/beava-macos-x86_64.tar.gz"
      sha256 "3b3e22ff70b0d1bf289c7fefee9395426cdb763aed23b3c160315a390cf7ec58"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/beava-dev/beava/releases/download/v#{version}/beava-linux-arm64.tar.gz"
      sha256 "46138f6fa725d6f35d7c6798b7cc2ab3e6882c7d3b7331157cd5be77df770ecd"
    end
    on_intel do
      url "https://github.com/beava-dev/beava/releases/download/v#{version}/beava-linux-x86_64.tar.gz"
      sha256 "b5e4800c0653e0285075cc60f674cb8dae700b7ed060446961f5e374918d64b0"
    end
  end

  def install
    bin.install "beava"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/beava --version")
  end
end
