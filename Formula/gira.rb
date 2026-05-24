class Gira < Formula
  desc "Jira-style ticket workflow for GitHub issues and pull requests"
  homepage "https://github.com/StatPan/gira"
  version "1.17.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.17.0/gira_v1.17.0_darwin_arm64.tar.gz"
      sha256 "443c2c6d4321d93c1dba2dcd1857c643eceb7008dd0439c997f831d8736a6376"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.17.0/gira_v1.17.0_darwin_amd64.tar.gz"
      sha256 "f7e2ed454dfc5850be10943034d1cf1c6b7f3d1fd7a724f01cd0c2f25fc4d352"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.17.0/gira_v1.17.0_linux_arm64.tar.gz"
      sha256 "14f05c481aefcc749ce6d2f2394aada21dd720a91865d02ee92c3bed11b77461"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.17.0/gira_v1.17.0_linux_amd64.tar.gz"
      sha256 "23a9a098d0ad8239f820b1b656b166b3509f087cfb9ebf14852abcf62584cd3c"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v1.17.0", shell_output("#{bin}/gira version")
  end
end
