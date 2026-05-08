class Gira < Formula
  desc "Jira-style ticket workflow for GitHub issues and pull requests"
  homepage "https://github.com/StatPan/gira"
  version "1.4.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.4.4/gira_v1.4.4_darwin_arm64.tar.gz"
      sha256 "d673fe86657e79ef5622d60ddd2be4117f659ed289db4107629af5470b8a4263"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.4.4/gira_v1.4.4_darwin_amd64.tar.gz"
      sha256 "c449449baaad3b91c1f9f5ca08d3fa45b99964763ece7f48e24d4fbc8c00e3cb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.4.4/gira_v1.4.4_linux_arm64.tar.gz"
      sha256 "dc69e3ed402ee563ff7343accb8df9720afa2107ef41cd3d6c20ce629522c2de"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.4.4/gira_v1.4.4_linux_amd64.tar.gz"
      sha256 "bd2f0256a1ae12738f58ca8eca9bc619b7cff3fa412cfeaf80ba9e1d487ff128"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v1.4.4", shell_output("#{bin}/gira version")
  end
end
