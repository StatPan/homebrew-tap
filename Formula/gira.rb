class Gira < Formula
  desc "Jira-style ticket workflow for GitHub issues and pull requests"
  homepage "https://github.com/StatPan/gira"
  version "1.16.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.16.0/gira_v1.16.0_darwin_arm64.tar.gz"
      sha256 "fc5457ab8eecefe3e8428166292255d0c85fd40c36b9ed3b2880b1e141bc9ea7"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.16.0/gira_v1.16.0_darwin_amd64.tar.gz"
      sha256 "9ef58a36ea1816230ffb5253e6acdf65076cbb02c07d93f3b2d6b535f46266b0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.16.0/gira_v1.16.0_linux_arm64.tar.gz"
      sha256 "edc3f72d7593f9a157a06e2183101e945ee7039ece3b37089cf95f757c23398f"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.16.0/gira_v1.16.0_linux_amd64.tar.gz"
      sha256 "14d80d456b9a4f6578a7624bd6ac1958da7885813bc1d26d7d3ec25fbeded0b7"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v1.16.0", shell_output("#{bin}/gira version")
  end
end
