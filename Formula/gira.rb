class Gira < Formula
  desc "Jira-style ticket workflow for GitHub issues and pull requests"
  homepage "https://github.com/StatPan/gira"
  version "1.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.3.1/gira_v1.3.1_darwin_arm64.tar.gz"
      sha256 "9cd24d72df6d32cdd6174c33310d7ebaa5029ef879cbdec9071954a808b53590"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.3.1/gira_v1.3.1_darwin_amd64.tar.gz"
      sha256 "ab06ec9bb3149a9a39a5a9c539cb53d89d3b1962226d316487d18136e1234872"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.3.1/gira_v1.3.1_linux_arm64.tar.gz"
      sha256 "a5dd5e576c886a712e6a2503b42b2e844a5121eccb1b239be1f139cb4079eb8e"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.3.1/gira_v1.3.1_linux_amd64.tar.gz"
      sha256 "ed9423aeafc0ac5887e9a1f1d0f5df7cb0832aa2fdf4b473a6b69233c19cef33"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v1.3.1", shell_output("#{bin}/gira version")
  end
end
