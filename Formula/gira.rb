class Gira < Formula
  desc "Jira-style ticket workflow for GitHub issues and pull requests"
  homepage "https://github.com/StatPan/gira"
  version "2.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v2.7.0/gira_v2.7.0_darwin_arm64.tar.gz"
      sha256 "51a5d02120a6a944ccf6ce161860d78ee1340c8074f192a5c61f8d58cb9610ef"
    else
      url "https://github.com/StatPan/gira/releases/download/v2.7.0/gira_v2.7.0_darwin_amd64.tar.gz"
      sha256 "2111b25174835208a45365b785b5e6ccfbbe5f1160e3fd14de7d5966f1060628"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v2.7.0/gira_v2.7.0_linux_arm64.tar.gz"
      sha256 "edb2e5c7acc372727435ab24534fb044256f2d9cf0571d3ca3000db9e5f906ba"
    else
      url "https://github.com/StatPan/gira/releases/download/v2.7.0/gira_v2.7.0_linux_amd64.tar.gz"
      sha256 "68e2852c1cd37c4cba4b56cc72247c1935ce50ac31a10847475431b9e698961a"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v2.7.0", shell_output("#{bin}/gira version")
  end
end
