class Gira < Formula
  desc "Jira-style ticket workflow for GitHub issues and pull requests"
  homepage "https://github.com/StatPan/gira"
  version "1.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.4.3/gira_v1.4.3_darwin_arm64.tar.gz"
      sha256 "c42c5596004676b80c9b9fc3d7bd2051fb25f995378c641d205af25b341f18f2"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.4.3/gira_v1.4.3_darwin_amd64.tar.gz"
      sha256 "95739231bc030b5a3da9c4ab1711a67603f8c67d231235687fb1259f92be2027"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.4.3/gira_v1.4.3_linux_arm64.tar.gz"
      sha256 "27a8785399b2c4217f609eee794259401b472e3e13ea25a3bbf423df1816401f"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.4.3/gira_v1.4.3_linux_amd64.tar.gz"
      sha256 "d8b1f10c1695bb07d7135498970bf9cc1706400848a2c56ea5a98744716d8535"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v1.4.3", shell_output("#{bin}/gira version")
  end
end
