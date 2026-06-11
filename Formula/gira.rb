class Gira < Formula
  desc "Jira-style ticket workflow for GitHub issues and pull requests"
  homepage "https://github.com/StatPan/gira"
  version "2.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v2.1.1/gira_v2.1.1_darwin_arm64.tar.gz"
      sha256 "9f9cdb513210b55cf25d6a5fcabe98db692b755e9a5e27bff46d75a54f3b0164"
    else
      url "https://github.com/StatPan/gira/releases/download/v2.1.1/gira_v2.1.1_darwin_amd64.tar.gz"
      sha256 "73c00f4fc03b7cfef0658a34dab441386d2bc32a1517042ef5aa78786bafbafc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v2.1.1/gira_v2.1.1_linux_arm64.tar.gz"
      sha256 "64b1549a0655e1d3d410b8c680c9ab40d1109fbed18b494ac7c3e3b42f6b7b3e"
    else
      url "https://github.com/StatPan/gira/releases/download/v2.1.1/gira_v2.1.1_linux_amd64.tar.gz"
      sha256 "bfb86621fa618129a9189ad4965c84813f7cf331fa5d6d0bd1c1fa029bd95f38"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v2.1.1", shell_output("#{bin}/gira version")
  end
end
