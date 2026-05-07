class Gira < Formula
  desc "Jira-style ticket workflow for GitHub issues and pull requests"
  homepage "https://github.com/StatPan/gira"
  version "1.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.4.0/gira_v1.4.0_darwin_arm64.tar.gz"
      sha256 "6990f1f1aea5ea03919a0f39129a9e378e8dfa94bd38dcc8b38b3977d2177086"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.4.0/gira_v1.4.0_darwin_amd64.tar.gz"
      sha256 "2a876bc9f8cd9775d6754ca5c535026255ede84ac8a5096f205e96cc9c407721"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.4.0/gira_v1.4.0_linux_arm64.tar.gz"
      sha256 "014c292f2711c9ccf2d9c641f0a577c889d0277823c0e1eff2a52530ce9d4d30"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.4.0/gira_v1.4.0_linux_amd64.tar.gz"
      sha256 "1656b6e1a8ef7c6185ccdbc4b3fb6d30a901f7cad21e21942ab7aee927984770"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v1.4.0", shell_output("#{bin}/gira version")
  end
end
