class Bd < Formula
  desc "AI-supervised issue tracker for coding workflows"
  homepage "https://github.com/steveyegge/beads"
  version "0.34.0"
  license "MIT"

      url "https://github.com/steveyegge/beads/releases/download/v#{version}/beads_#{version}_darwin_arm64.tar.gz"
      sha256 "80055e274db264eb43dcaa4cd68e4e87c920960aca781be35054fa603f0ca17d"
      url "https://github.com/steveyegge/beads/releases/download/v#{version}/beads_#{version}_darwin_amd64.tar.gz"
      sha256 "e249e9894af648db3b3880527d691a3daa49dd2cbf4d89851e1a698cf59439d8"
    end
  end

      url "https://github.com/steveyegge/beads/releases/download/v#{version}/beads_#{version}_linux_arm64.tar.gz"
      sha256 "3fa864402201bffc9dc97cb4569225a6ce4a2dd39bee0f6834d7459dfea76639"
      url "https://github.com/steveyegge/beads/releases/download/v#{version}/beads_#{version}_linux_amd64.tar.gz"
      sha256 "2499fb6e580274909c1b5690fbdb0108302d932109a9002c143ae799ff403500"
    end
  end

  def install
    bin.install "bd"
  end

  test do
    system "#{bin}/bd", "version"
  end
end
