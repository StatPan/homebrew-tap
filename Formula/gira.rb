class Gira < Formula
  desc "Jira-style ticket workflow for GitHub issues and pull requests"
  homepage "https://github.com/StatPan/gira"
  version "2.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v2.2.0/gira_v2.2.0_darwin_arm64.tar.gz"
      sha256 "ade935a48f924bdb2a65f4a30b138227b6aca2bc3d98b23beca1f83a49ce1c73"
    else
      url "https://github.com/StatPan/gira/releases/download/v2.2.0/gira_v2.2.0_darwin_amd64.tar.gz"
      sha256 "f3b2e801dfc45ce3548fd21109e8f524fb7dcbaaf0ddd809b2b77420f4a022ed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v2.2.0/gira_v2.2.0_linux_arm64.tar.gz"
      sha256 "b4433355506ccc986bbb7a4889889f20f4ff6c2ee8cf4476fd9f3e0f18bfd2a3"
    else
      url "https://github.com/StatPan/gira/releases/download/v2.2.0/gira_v2.2.0_linux_amd64.tar.gz"
      sha256 "b587dbd3859e139026c386cbfcf4498fc6eff092186056507d4bc26d856ba333"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v2.2.0", shell_output("#{bin}/gira version")
  end
end
