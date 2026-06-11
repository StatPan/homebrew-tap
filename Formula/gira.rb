class Gira < Formula
  desc "Jira-style ticket workflow for GitHub issues and pull requests"
  homepage "https://github.com/StatPan/gira"
  version "2.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v2.1.0/gira_v2.1.0_darwin_arm64.tar.gz"
      sha256 "396ff0d0dbd6229bc781e9f8113eed2e2381f6396ef34ed0f562e70b67738060"
    else
      url "https://github.com/StatPan/gira/releases/download/v2.1.0/gira_v2.1.0_darwin_amd64.tar.gz"
      sha256 "52f0de37b99c6b0306c3de55e0dd4a6fcfdd654869f681d82b15cf75eaa60c47"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v2.1.0/gira_v2.1.0_linux_arm64.tar.gz"
      sha256 "c6d2d449f0529c26ca606004af2ff037fe60a9de35d603cd95d51b3915e5297c"
    else
      url "https://github.com/StatPan/gira/releases/download/v2.1.0/gira_v2.1.0_linux_amd64.tar.gz"
      sha256 "f908ab8a487517120ea788da12f5da4b367ef46d3bbb276844e96d2091aa6e5e"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v2.1.0", shell_output("#{bin}/gira version")
  end
end
