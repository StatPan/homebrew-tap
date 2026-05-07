class Gira < Formula
  desc "Jira-style ticket workflow for GitHub issues and pull requests"
  homepage "https://github.com/StatPan/gira"
  version "1.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.4.2/gira_v1.4.2_darwin_arm64.tar.gz"
      sha256 "55a5630b5890a3e3fedea10e1de03180e616e8853105f2fb4a371391f0cbd786"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.4.2/gira_v1.4.2_darwin_amd64.tar.gz"
      sha256 "49472a95bf12571bfb415f0636644cbd3269cb19c03e79842530a51fe85a5ebe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.4.2/gira_v1.4.2_linux_arm64.tar.gz"
      sha256 "31134dfa3920758d152c677c23ee1442a3435c0faf24405fb0c38117f6a14306"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.4.2/gira_v1.4.2_linux_amd64.tar.gz"
      sha256 "38827aa68ede8f795b2dd196e49f85ded67abee9df8e9dbfa3a46d4367d4ac69"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v1.4.2", shell_output("#{bin}/gira version")
  end
end
