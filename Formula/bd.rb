class Bd < Formula
  desc "AI-supervised issue tracker for coding workflows"
  homepage "https://github.com/steveyegge/beads"
  version "0.49.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/steveyegge/beads/releases/download/v#{version}/beads_#{version}_darwin_arm64.tar.gz"
      sha256 "eb127b85e85e79a2960fe12a9066558bfce7439efdc6c6696ded8bce3a33c3e0"
    else
      url "https://github.com/steveyegge/beads/releases/download/v#{version}/beads_#{version}_darwin_amd64.tar.gz"
      sha256 "67e3af9bc42c9d871b9e9ef3a1c9b3627a02db0b994714f84439e5aa510d7311"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/steveyegge/beads/releases/download/v#{version}/beads_#{version}_linux_arm64.tar.gz"
      sha256 "339a36baac2d6b4f8605e6a65cda4a5190fd20c06dabc9dc16b5d294e87b77ee"
    else
      url "https://github.com/steveyegge/beads/releases/download/v#{version}/beads_#{version}_linux_amd64.tar.gz"
      sha256 "04e25d118b287a17738b347e1c84b4a5698eb5ccfd84a802ed1cd48b220cc1ed"
    end
  end

  def install
    bin.install "bd"
  end

  test do
    system "#{bin}/bd", "version"
  end
end
