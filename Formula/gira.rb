class Gira < Formula
  desc "Jira-style ticket workflow for GitHub issues and pull requests"
  homepage "https://github.com/StatPan/gira"
  version "3.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v3.2.0/gira_v3.2.0_darwin_arm64.tar.gz"
      sha256 "2ff8ea637153af045fbe7e6d9177ce01225f92e11f44af61529c0beb7e8c78b5"
    else
      url "https://github.com/StatPan/gira/releases/download/v3.2.0/gira_v3.2.0_darwin_amd64.tar.gz"
      sha256 "d645ed9eda5ddb452d5bb38395ac62c7014128ad63538e4af52ecb20397976d4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v3.2.0/gira_v3.2.0_linux_arm64.tar.gz"
      sha256 "fb77127d2d21d801e54b4967e8cb4ba5def5eb05b13498a8c231543046c610a4"
    else
      url "https://github.com/StatPan/gira/releases/download/v3.2.0/gira_v3.2.0_linux_amd64.tar.gz"
      sha256 "c7cb8fe713e9c97d76cca32ef10490bc9e17353c3871bbd3a8d62437eca88674"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v3.2.0", shell_output("#{bin}/gira version")
  end
end
