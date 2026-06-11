class Gira < Formula
  desc "Jira-style ticket workflow for GitHub issues and pull requests"
  homepage "https://github.com/StatPan/gira"
  version "2.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v2.3.0/gira_v2.3.0_darwin_arm64.tar.gz"
      sha256 "a80c0b7e8d1775bccd2d29e228c32ae8d99d3cf7a1e24fca36dc351e56835a6a"
    else
      url "https://github.com/StatPan/gira/releases/download/v2.3.0/gira_v2.3.0_darwin_amd64.tar.gz"
      sha256 "af90a0931222729ca6cd953ac8451fe763c8311420337ea0bbc5c6bf9a2ca230"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v2.3.0/gira_v2.3.0_linux_arm64.tar.gz"
      sha256 "6e0ed87e113b6f4339121dd39f9509cb6ac8083616d7d4bf04ccca76ef049f99"
    else
      url "https://github.com/StatPan/gira/releases/download/v2.3.0/gira_v2.3.0_linux_amd64.tar.gz"
      sha256 "d10cda470bc30e06b53636aa3946b5dbcd8684cc2c60acc61502e069b070ab0c"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v2.3.0", shell_output("#{bin}/gira version")
  end
end
