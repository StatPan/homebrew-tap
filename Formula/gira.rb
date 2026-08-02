class Gira < Formula
  desc "Jira-style ticket workflow for GitHub issues and pull requests"
  homepage "https://github.com/StatPan/gira"
  version "3.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v3.1.0/gira_v3.1.0_darwin_arm64.tar.gz"
      sha256 "47ca4bf737acc29e9436e88324075a21eea9d718f09f48b0c9430f83d8b647fe"
    else
      url "https://github.com/StatPan/gira/releases/download/v3.1.0/gira_v3.1.0_darwin_amd64.tar.gz"
      sha256 "8e8ed33297d5b760d28d49fcc6465ea126e9a34b9da84ee2e65353907398130c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v3.1.0/gira_v3.1.0_linux_arm64.tar.gz"
      sha256 "ae8176ed93f6fd21c1eb4ce679b40795b58747409ab30e3df7e63e609c55a6f6"
    else
      url "https://github.com/StatPan/gira/releases/download/v3.1.0/gira_v3.1.0_linux_amd64.tar.gz"
      sha256 "18e04c1189f3292ebe1ec4a4244d93ae5b723f9d8abfd9b182b9fd6cd3e2e4de"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v3.1.0", shell_output("#{bin}/gira version")
  end
end
