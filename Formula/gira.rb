class Gira < Formula
  desc "Jira-style ticket workflow for GitHub issues and pull requests"
  homepage "https://github.com/StatPan/gira"
  version "2.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v2.0.0/gira_v2.0.0_darwin_arm64.tar.gz"
      sha256 "c9735b1c648913ec6c2d29c016eaf60f0d688b2e23a095175d40ec8c3d7a5895"
    else
      url "https://github.com/StatPan/gira/releases/download/v2.0.0/gira_v2.0.0_darwin_amd64.tar.gz"
      sha256 "94dc820e58d348b2206a1be83bb7af2198c504dc6a4938ce296896db90e4a8c0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v2.0.0/gira_v2.0.0_linux_arm64.tar.gz"
      sha256 "cd9f25375c22cb079a59b967df17479f3b23ab3290bb84e2892d410cca572480"
    else
      url "https://github.com/StatPan/gira/releases/download/v2.0.0/gira_v2.0.0_linux_amd64.tar.gz"
      sha256 "e017290a5d937498da0a3ecbaac1928ecb13b684ee7653aed9671acdf08881a1"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v2.0.0", shell_output("#{bin}/gira version")
  end
end
