class Bd < Formula
  desc "AI-supervised issue tracker for coding workflows"
  homepage "https://github.com/steveyegge/beads"
  version "0.32.0"
  license "MIT"

      url "https://github.com/steveyegge/beads/releases/download/v#{version}/beads_#{version}_darwin_arm64.tar.gz"
      sha256 "00b343381df5e43676f207a873c602cff12d7c5b68ec259b09357c8cdbe2c211"
      url "https://github.com/steveyegge/beads/releases/download/v#{version}/beads_#{version}_darwin_amd64.tar.gz"
      sha256 "b8fbf7e83ecc170372b8bf1da693e05636cb1ce5406a8a43f48e5618d6d6f462"
    end
  end

      url "https://github.com/steveyegge/beads/releases/download/v#{version}/beads_#{version}_linux_arm64.tar.gz"
      sha256 "d50886c33dfb39fff39226d1b6a8e6ebd7eea02d03b800d87a50bd502a28ba88"
      url "https://github.com/steveyegge/beads/releases/download/v#{version}/beads_#{version}_linux_amd64.tar.gz"
      sha256 "903542eeedc306230b70d2a01ba8539488af72b8b79b92bff1e88a7e6ac8f4d2"
    end
  end

  def install
    bin.install "bd"
  end

  test do
    system "#{bin}/bd", "version"
  end
end
