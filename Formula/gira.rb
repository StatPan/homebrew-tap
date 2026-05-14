class Gira < Formula
  desc "Jira-style ticket workflow for GitHub issues and pull requests"
  homepage "https://github.com/StatPan/gira"
  version "1.12.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.12.0/gira_v1.12.0_darwin_arm64.tar.gz"
      sha256 "4c5e41f7da24ae697b0f316663d65c5bdd0fc7f55db85a189606238da9f9bfe3"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.12.0/gira_v1.12.0_darwin_amd64.tar.gz"
      sha256 "f5d7bf91488f2e41e409772cf8c166114a8d262bca75bd61cb2656e675ca45da"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.12.0/gira_v1.12.0_linux_arm64.tar.gz"
      sha256 "87f1d8eedfae79ea9ff1997fd836d1a351709ceb487128da214ef7a2cee20778"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.12.0/gira_v1.12.0_linux_amd64.tar.gz"
      sha256 "3951c1eceed9a415eefd18ac7d6a9ec0a99dc5ca2b8e3c804b6b2e2c3490cfa2"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v1.12.0", shell_output("#{bin}/gira version")
  end
end
