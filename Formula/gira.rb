class Gira < Formula
  desc "Jira-style ticket workflow for GitHub issues and pull requests"
  homepage "https://github.com/StatPan/gira"
  version "2.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v2.5.0/gira_v2.5.0_darwin_arm64.tar.gz"
      sha256 "eb36abf960689d88cd6644ce4c93642693ec994fbc725bc02b04f60109d2cc4f"
    else
      url "https://github.com/StatPan/gira/releases/download/v2.5.0/gira_v2.5.0_darwin_amd64.tar.gz"
      sha256 "65a519eabf2d999133b6205de9c0f0fc5737fc58fe70dbfc20f8d71d1266c3d3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v2.5.0/gira_v2.5.0_linux_arm64.tar.gz"
      sha256 "0ceb855b93d1b1c9b1149c1faebf29caea60b66d4732fabbe9c19b3f0f0c95a9"
    else
      url "https://github.com/StatPan/gira/releases/download/v2.5.0/gira_v2.5.0_linux_amd64.tar.gz"
      sha256 "d0122ba7a686511ae29f43baf3d56c439b0afb42be7057f347172ac86540ce36"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v2.5.0", shell_output("#{bin}/gira version")
  end
end
