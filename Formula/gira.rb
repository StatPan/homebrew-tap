class Gira < Formula
  desc "Jira-style ticket workflow for GitHub issues and pull requests"
  homepage "https://github.com/StatPan/gira"
  version "3.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v3.1.2/gira_v3.1.2_darwin_arm64.tar.gz"
      sha256 "9f8325db0798d1b79371b42496bf943b41c92c524b7ce41b0b9f4050b4d0b39c"
    else
      url "https://github.com/StatPan/gira/releases/download/v3.1.2/gira_v3.1.2_darwin_amd64.tar.gz"
      sha256 "66c253bb9744ce901ef808670aec48908ef84d46c1b4b0394135597c2599bcd9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v3.1.2/gira_v3.1.2_linux_arm64.tar.gz"
      sha256 "4f0a8023b71a7e3c66d789265f52c57b4f09700f5f20614074e9185905916230"
    else
      url "https://github.com/StatPan/gira/releases/download/v3.1.2/gira_v3.1.2_linux_amd64.tar.gz"
      sha256 "01ef9a288160330487eab0044b0cc64eb2b6095dc2279cb183aac995da5cb88d"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v3.1.2", shell_output("#{bin}/gira version")
  end
end
