class Gira < Formula
  desc "Jira-style ticket workflow for GitHub issues and pull requests"
  homepage "https://github.com/StatPan/gira"
  version "1.4.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.4.6/gira_v1.4.6_darwin_arm64.tar.gz"
      sha256 "9cd7d1c62f75cb07da6065840e3ee972b510686f3a2c5941469c22fe28551520"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.4.6/gira_v1.4.6_darwin_amd64.tar.gz"
      sha256 "69eaa49a3976b1bce9d1ae1efd0cd8ee3dc41b492b1fc454c8715c08ff5b2a0c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.4.6/gira_v1.4.6_linux_arm64.tar.gz"
      sha256 "ecf6f03602f62f028b8036771b3ea240244f284bb23a6a07e03bf0436e7bea26"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.4.6/gira_v1.4.6_linux_amd64.tar.gz"
      sha256 "5f5de3356d14c458e7a4c5f915f56eb34e5adbd7cb208dd3faee54aec118dde9"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v1.4.6", shell_output("#{bin}/gira version")
  end
end
