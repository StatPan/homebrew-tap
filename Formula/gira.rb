class Gira < Formula
  desc "Jira-style ticket workflow for GitHub issues and pull requests"
  homepage "https://github.com/StatPan/gira"
  version "1.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.6.0/gira_v1.6.0_darwin_arm64.tar.gz"
      sha256 "f473a37a6275b5d9ceaacbef9653aa0f72a814ed623a7150a509285e99baaae7"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.6.0/gira_v1.6.0_darwin_amd64.tar.gz"
      sha256 "e0af7a48569fe5c0cc3a37352de7238ae18f2b790e9d58553070a7cc6038b23a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.6.0/gira_v1.6.0_linux_arm64.tar.gz"
      sha256 "f55f5933b3d2e8cd4ab2bd219d516aa0eb5e6f3ab52d9cf367b5939fec92471a"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.6.0/gira_v1.6.0_linux_amd64.tar.gz"
      sha256 "030d9d7acda15702937550aa897da9a5c8bcc055200c4869729a8b6386f3b0a7"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v1.6.0", shell_output("#{bin}/gira version")
  end
end
