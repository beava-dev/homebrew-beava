class Beava < Formula
  desc "Real-time feature server for fraud, ad-tech, and behavioral analytics"
  homepage "https://beava.dev"
  version "0.0.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/beava-dev/beava/releases/download/v#{version}/beava-macos-arm64.tar.gz"
      sha256 "0c482a1027641c9718e860e9d2babf9f9a85c0910c6143d247d07a2d7ff9a0c2"
    end
    on_intel do
      url "https://github.com/beava-dev/beava/releases/download/v#{version}/beava-macos-x86_64.tar.gz"
      sha256 "418861c0cb1d370e819a536fa19e07aea2fece9ae67382118d9ace22d9c89bd6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/beava-dev/beava/releases/download/v#{version}/beava-linux-arm64.tar.gz"
      sha256 "f62736f761ab7aa5aeaae22b4a75757c0e45cb756602cbd5aa1eb7a9f0a9f233"
    end
    on_intel do
      url "https://github.com/beava-dev/beava/releases/download/v#{version}/beava-linux-x86_64.tar.gz"
      sha256 "2e8b66a6b1cc9cf279d5a0366320cda7b48d35c942ecac230e38c170b2347776"
    end
  end

  def install
    bin.install "beava"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/beava --version")
  end
end
