class Bd < Formula
  desc "AI-supervised issue tracker for coding workflows"
  homepage "https://github.com/steveyegge/beads"
  version "0.45.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/steveyegge/beads/releases/download/v#{version}/beads_#{version}_darwin_arm64.tar.gz"
      sha256 "cb09f21c4658526a61eb53bb40ba9fc5657c77a1a6d0f56089e8e434dcc75849"
    else
      url "https://github.com/steveyegge/beads/releases/download/v#{version}/beads_#{version}_darwin_amd64.tar.gz"
      sha256 "b2a139bf923e2ee22c7c95bab0e0004811b1efb76ef59693679cfc427833991e"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/steveyegge/beads/releases/download/v#{version}/beads_#{version}_linux_arm64.tar.gz"
      sha256 "9966aa407633e085de0c6430fe6d1b9f8e2561660274d5c43f1342ed44abbde9"
    else
      url "https://github.com/steveyegge/beads/releases/download/v#{version}/beads_#{version}_linux_amd64.tar.gz"
      sha256 "2e31ace201774949374cd5e2871eb510fb2ad0709973ed9603f07daeda98de52"
    end
  end

  def install
    bin.install "bd"
  end

  test do
    system "#{bin}/bd", "version"
  end
end
