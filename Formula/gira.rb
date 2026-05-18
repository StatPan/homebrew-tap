class Gira < Formula
  desc "Jira-style ticket workflow for GitHub issues and pull requests"
  homepage "https://github.com/StatPan/gira"
  version "1.15.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.15.0/gira_v1.15.0_darwin_arm64.tar.gz"
      sha256 "52746295c0878711bada8d6be696f5ecaf72f74d36d2e8bd3028b08664398cae"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.15.0/gira_v1.15.0_darwin_amd64.tar.gz"
      sha256 "942acd394b3fda05103fc2992cb88700b879ed82b5fd396bcad3f0368925e2a8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.15.0/gira_v1.15.0_linux_arm64.tar.gz"
      sha256 "67c0082f9cc9232fdfc36bde4e9da9fe0162faf4f6d7c69ef8a517229b5b85f6"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.15.0/gira_v1.15.0_linux_amd64.tar.gz"
      sha256 "f5df05c0061d79d7af20df06cac0231290f80744d3725f52927898bfa3d01530"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v1.15.0", shell_output("#{bin}/gira version")
  end
end
