class Bd < Formula
  desc "AI-supervised issue tracker for coding workflows"
  homepage "https://github.com/steveyegge/beads"
  version "0.32.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/steveyegge/beads/releases/download/v#{version}/beads_#{version}_darwin_arm64.tar.gz"
      sha256 "9ea191fb4579b8d229f7c28c2c50d1c3ad7cd7f8006ffebf423f844128d36e71"
    else
      url "https://github.com/steveyegge/beads/releases/download/v#{version}/beads_#{version}_darwin_amd64.tar.gz"
      sha256 "ff75ac54b5fea2527cb2634fb874ddc88bbe21c58c3b8e9db97e8c3fe6ea4321"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/steveyegge/beads/releases/download/v#{version}/beads_#{version}_linux_arm64.tar.gz"
      sha256 "a2e75ea9861d5ac364a234f4d826b4ae13d896cc01af8e8c7fedea5e93612c42"
    else
      url "https://github.com/steveyegge/beads/releases/download/v#{version}/beads_#{version}_linux_amd64.tar.gz"
      sha256 "6e809906b4bd64108ed68dc4b68c8d1a22376892e090eaa44f77ef3d4391bd9f"
    end
  end

  def install
    bin.install "bd"
  end

  test do
    system "#{bin}/bd", "version"
  end
end
