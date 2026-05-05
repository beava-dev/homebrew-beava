class Beava < Formula
  desc "Real-time feature server for fraud, ad-tech, and behavioral analytics"
  homepage "https://beava.dev"
  version "0.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/beava-dev/beava/releases/download/v#{version}/beava-macos-arm64.tar.gz"
      sha256 "PLACEHOLDER_macos_arm64_SHA256"
    end
    on_intel do
      url "https://github.com/beava-dev/beava/releases/download/v#{version}/beava-macos-x86_64.tar.gz"
      sha256 "PLACEHOLDER_macos_x86_64_SHA256"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/beava-dev/beava/releases/download/v#{version}/beava-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER_linux_arm64_SHA256"
    end
    on_intel do
      url "https://github.com/beava-dev/beava/releases/download/v#{version}/beava-linux-x86_64.tar.gz"
      sha256 "PLACEHOLDER_linux_x86_64_SHA256"
    end
  end

  def install
    bin.install "beava"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/beava --version")
  end
end
