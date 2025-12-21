class Bd < Formula
  desc "AI-supervised issue tracker for coding workflows"
  homepage "https://github.com/steveyegge/beads"
  version "0.33.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/steveyegge/beads/releases/download/v#{version}/beads_#{version}_darwin_arm64.tar.gz"
      sha256 "87593c2dca00018e2477b2f6a64ac0aa2fc60ef4be1cb0d87a820a2df636b9ea"
    else
      url "https://github.com/steveyegge/beads/releases/download/v#{version}/beads_#{version}_darwin_amd64.tar.gz"
      sha256 "16522e3a098d378a8f35e2ef54d56ccbb7f6380afc0ce9509f8c82a38d6a5d3e"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/steveyegge/beads/releases/download/v#{version}/beads_#{version}_linux_arm64.tar.gz"
      sha256 "1258c49b7c6b4c34dc4c18c7ea46fa79c5d0853cc7b240f91e28454fa374677d"
    else
      url "https://github.com/steveyegge/beads/releases/download/v#{version}/beads_#{version}_linux_amd64.tar.gz"
      sha256 "a4d388d25834fd65df83dc3f41c72bd0290752adaba6c9f4581101a5639f0d26"
    end
  end

  def install
    bin.install "bd"
  end

  test do
    system "#{bin}/bd", "version"
  end
end
