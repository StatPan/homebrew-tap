class Gira < Formula
  desc "Jira-style ticket workflow for GitHub issues and pull requests"
  homepage "https://github.com/StatPan/gira"
  version "1.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.11.0/gira_v1.11.0_darwin_arm64.tar.gz"
      sha256 "642912463d224fa1d7f483730d7d4ee5abfe4a8a5f6a3d10d618ad1c75c10823"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.11.0/gira_v1.11.0_darwin_amd64.tar.gz"
      sha256 "057e8cb51ed1d54ba36e3fcd6fb8821c337c442f3bf397b2665d706dc670b8f5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.11.0/gira_v1.11.0_linux_arm64.tar.gz"
      sha256 "57f6cbd8572cd06bc2a5b02a8b0045c758ad24a7a8c97ba3c417290ea4a34f82"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.11.0/gira_v1.11.0_linux_amd64.tar.gz"
      sha256 "1344a89b6e1b7b9f8bd6bd25b7a0dcc28a94832f087dac73b4b1c30b245dfd82"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v1.11.0", shell_output("#{bin}/gira version")
  end
end
