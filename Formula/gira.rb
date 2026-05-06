class Gira < Formula
  desc "Jira-style project flow on GitHub"
  homepage "https://github.com/StatPan/gira"
  version "1.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.1.1/gira_v1.1.1_darwin_arm64.tar.gz"
      sha256 "186a808bbdf58f9e2e43fcf3034ffe6c6276023e3ca1e9f556f6faadba8556d1"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.1.1/gira_v1.1.1_darwin_amd64.tar.gz"
      sha256 "698667d984e270f4f4334bdc4299b479d2bbe238199a020a06010b753f2bde59"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.1.1/gira_v1.1.1_linux_arm64.tar.gz"
      sha256 "b14cb5eb8e7ee0cf9a576f26d2f999e544d484d889de58c8a74d99435cb3e99f"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.1.1/gira_v1.1.1_linux_amd64.tar.gz"
      sha256 "dfae1366f0753801afa52eafa5659fa2e8a7fdb92d6b643657dd0dcccd069d3b"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v1.1.1", shell_output("#{bin}/gira version")
  end
end
