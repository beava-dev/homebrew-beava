class Beava < Formula
  desc "Real-time feature server for fraud, ad-tech, and behavioral analytics"
  homepage "https://beava.dev"
  version "0.0.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/beava-dev/beava/releases/download/v#{version}/beava-macos-arm64.tar.gz"
      sha256 "8ab9be1e294dbf62ee71261cbbee8d21095dfbc5bd9c62bdf6c9d4675ab3d1f7"
    end
    on_intel do
      url "https://github.com/beava-dev/beava/releases/download/v#{version}/beava-macos-x86_64.tar.gz"
      sha256 "0489fa863805781e2553db027e30471603c825274030499c518b5e98fd9574fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/beava-dev/beava/releases/download/v#{version}/beava-linux-arm64.tar.gz"
      sha256 "216be5d620b79baecac8d866f3f3371805b8b13ce085147c7e824709d5657f81"
    end
    on_intel do
      url "https://github.com/beava-dev/beava/releases/download/v#{version}/beava-linux-x86_64.tar.gz"
      sha256 "3f58fb821941addf9dfcdbc5d6859dfd0f779f8264dd436df8a706308ff9d475"
    end
  end

  def install
    bin.install "beava"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/beava --version")
  end
end
