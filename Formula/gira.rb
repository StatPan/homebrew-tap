class Gira < Formula
  desc "Jira-style ticket workflow for GitHub issues and pull requests"
  homepage "https://github.com/StatPan/gira"
  version "3.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v3.0.0/gira_v3.0.0_darwin_arm64.tar.gz"
      sha256 "6bb4b033965e8f8d6ab3ed55f765c2f31ab463bb66dd2181405ba23dbf075c7e"
    else
      url "https://github.com/StatPan/gira/releases/download/v3.0.0/gira_v3.0.0_darwin_amd64.tar.gz"
      sha256 "4f81796ff28a3c8731e98f3b246f2bc1b75d902d82aaf3e7419868a968ec6f0c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v3.0.0/gira_v3.0.0_linux_arm64.tar.gz"
      sha256 "6a94788f0007c497357709f0e352604fa55e27c3aef7faac03fee5544cb7f04a"
    else
      url "https://github.com/StatPan/gira/releases/download/v3.0.0/gira_v3.0.0_linux_amd64.tar.gz"
      sha256 "62975ac308b4538301292b9fdfbc18d05c486a933b03e8430fa0074b177dc82d"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v3.0.0", shell_output("#{bin}/gira version")
  end
end
