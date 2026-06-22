class Gira < Formula
  desc "Jira-style ticket workflow for GitHub issues and pull requests"
  homepage "https://github.com/StatPan/gira"
  version "2.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v2.6.0/gira_v2.6.0_darwin_arm64.tar.gz"
      sha256 "5eeb0f20344127ed742719a4cc70533faefcc1f266b8ddd8bc6f628b17a6d588"
    else
      url "https://github.com/StatPan/gira/releases/download/v2.6.0/gira_v2.6.0_darwin_amd64.tar.gz"
      sha256 "08a4bd1f2d9e0b859be894fee3abbb770d71288fb9fb31767307cff2da58c6e0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v2.6.0/gira_v2.6.0_linux_arm64.tar.gz"
      sha256 "4736dad7a9a61038162567c9f109ef359ee043daba43f61de2235d5e283d5859"
    else
      url "https://github.com/StatPan/gira/releases/download/v2.6.0/gira_v2.6.0_linux_amd64.tar.gz"
      sha256 "b39d2017f0002c49c22181cb329f29886c9d1df07a483fdb8897c8e71eb61303"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v2.6.0", shell_output("#{bin}/gira version")
  end
end
