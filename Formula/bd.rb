class Bd < Formula
  desc "AI-supervised issue tracker for coding workflows"
  homepage "https://github.com/steveyegge/beads"
  version "0.42.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/steveyegge/beads/releases/download/v#{version}/beads_#{version}_darwin_arm64.tar.gz"
      sha256 "45b72abbbaad12a4a4ec9329437b11b9c053b543d3244e11c57c09ec8a00f272"
    else
      url "https://github.com/steveyegge/beads/releases/download/v#{version}/beads_#{version}_darwin_amd64.tar.gz"
      sha256 "4ae393dd3709cfabf3f9aeb3114d924a3fa295c58b961189b1dd3e98f8e1d7d5"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/steveyegge/beads/releases/download/v#{version}/beads_#{version}_linux_arm64.tar.gz"
      sha256 "8b8044e904c4a3b3456c85a40bb6667334ca235ec18ce1e5b145c38494de7eba"
    else
      url "https://github.com/steveyegge/beads/releases/download/v#{version}/beads_#{version}_linux_amd64.tar.gz"
      sha256 "b1721b8a5a311f10d3f9ff372f27337037279964a0252001b8c7590f9a1d35df"
    end
  end

  def install
    bin.install "bd"
  end

  test do
    system "#{bin}/bd", "version"
  end
end
