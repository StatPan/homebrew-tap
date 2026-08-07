class Gira < Formula
  desc "Jira-style ticket workflow for GitHub issues and pull requests"
  homepage "https://github.com/StatPan/gira"
  version "3.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v3.1.1/gira_v3.1.1_darwin_arm64.tar.gz"
      sha256 "512a21e56b13c73c84f3f5c59670da7dab1a9c6c1bfb4959f1bf1be114b3d195"
    else
      url "https://github.com/StatPan/gira/releases/download/v3.1.1/gira_v3.1.1_darwin_amd64.tar.gz"
      sha256 "dcc116c8ebe4a5a2a6bfdafa228bbb9db1adc7854a5c27342e696dcc203bf948"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v3.1.1/gira_v3.1.1_linux_arm64.tar.gz"
      sha256 "39d9198290ef46bdfc295e0921816c4887427413222d389a2c810c3a3704dff0"
    else
      url "https://github.com/StatPan/gira/releases/download/v3.1.1/gira_v3.1.1_linux_amd64.tar.gz"
      sha256 "c379cf9f1714c2770009d2f95cfacdfcf84dcea5758bed8067b6acc074044c87"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v3.1.1", shell_output("#{bin}/gira version")
  end
end
