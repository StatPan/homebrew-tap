class Gira < Formula
  desc "Jira-style ticket workflow for GitHub issues and pull requests"
  homepage "https://github.com/StatPan/gira"
  version "1.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.9.0/gira_v1.9.0_darwin_arm64.tar.gz"
      sha256 "663d8b770083924e7c85fc91ffea363f19529cd898c5154811cfe03ed4cd5276"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.9.0/gira_v1.9.0_darwin_amd64.tar.gz"
      sha256 "c04a94f79eb793791ce3145d4f50ec3086f8ee599eacfcbab60d480563c35b21"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.9.0/gira_v1.9.0_linux_arm64.tar.gz"
      sha256 "c068744bcfe8db612fcf2816b83cf3bb63aeba42e62f4ae060266b8b72de1ed2"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.9.0/gira_v1.9.0_linux_amd64.tar.gz"
      sha256 "0aeabb6a341bbb2471f8139faa8b7d6226341ce5f4ae3dcb537619c2ef05f1cd"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v1.9.0", shell_output("#{bin}/gira version")
  end
end
