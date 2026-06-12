class Gira < Formula
  desc "Jira-style ticket workflow for GitHub issues and pull requests"
  homepage "https://github.com/StatPan/gira"
  version "2.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v2.4.0/gira_v2.4.0_darwin_arm64.tar.gz"
      sha256 "f06be2149f9373f417a58421a8222c56a87c36d404e8f5f16f919d3373642e44"
    else
      url "https://github.com/StatPan/gira/releases/download/v2.4.0/gira_v2.4.0_darwin_amd64.tar.gz"
      sha256 "a57bedfb844a755e27caed124fde2426ece03acf5f555a4d36781a91a3e31635"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v2.4.0/gira_v2.4.0_linux_arm64.tar.gz"
      sha256 "8adde4dcf57717c886b7e2345917fdcda8b75de6da02a22270721ff1a13f588c"
    else
      url "https://github.com/StatPan/gira/releases/download/v2.4.0/gira_v2.4.0_linux_amd64.tar.gz"
      sha256 "c615b9fa4de5037fc94beb7b1d5093eaefbcb1e7800af41575cfc43587104eb1"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v2.4.0", shell_output("#{bin}/gira version")
  end
end
