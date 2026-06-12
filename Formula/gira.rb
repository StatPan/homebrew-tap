class Gira < Formula
  desc "Jira-style ticket workflow for GitHub issues and pull requests"
  homepage "https://github.com/StatPan/gira"
  version "2.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v2.4.1/gira_v2.4.1_darwin_arm64.tar.gz"
      sha256 "dbb57fdc28d4bbb5b2a91c0f1f7b26e73fdfeb56aea55c562c106a9b1f543ae7"
    else
      url "https://github.com/StatPan/gira/releases/download/v2.4.1/gira_v2.4.1_darwin_amd64.tar.gz"
      sha256 "80ac586dd654b625c36e8deb28235b368757b9b5489ad156474699310bfabb49"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v2.4.1/gira_v2.4.1_linux_arm64.tar.gz"
      sha256 "f735276f95ad1369f672740ccf15dc610b164b8c77c0a77aadb35a2ee10bd9c9"
    else
      url "https://github.com/StatPan/gira/releases/download/v2.4.1/gira_v2.4.1_linux_amd64.tar.gz"
      sha256 "85bab4e5e3d75f002a07fd814a28dd97e56d888038899b4c4e2a45da989331f3"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v2.4.1", shell_output("#{bin}/gira version")
  end
end
