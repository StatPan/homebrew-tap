class Gira < Formula
  desc "Jira-style ticket workflow for GitHub issues and pull requests"
  homepage "https://github.com/StatPan/gira"
  version "1.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.4.1/gira_v1.4.1_darwin_arm64.tar.gz"
      sha256 "59f2cdb978dcc6b4a18b42f75077b0b09b0cb304d69132148a26cecf6105c4c7"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.4.1/gira_v1.4.1_darwin_amd64.tar.gz"
      sha256 "06b032da4dc1120a18c7b90180b76433646fb45d893f4938e9b633d375d4fd86"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.4.1/gira_v1.4.1_linux_arm64.tar.gz"
      sha256 "b8a524d436bb11f911f784f3b53f4f00590f1f0c36c244f59e39a8e196626a3c"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.4.1/gira_v1.4.1_linux_amd64.tar.gz"
      sha256 "941f44d0682ce0037752e99aab5cdfffff0fb325f7cbd68f972f0a9f5f6bd542"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v1.4.1", shell_output("#{bin}/gira version")
  end
end
