class Gira < Formula
  desc "Jira-style ticket workflow for GitHub issues and pull requests"
  homepage "https://github.com/StatPan/gira"
  version "1.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.8.0/gira_v1.8.0_darwin_arm64.tar.gz"
      sha256 "0f982fc7ffe19468761075695ead75e48ab9a67cff07c7c9d5e0555bbdf7a5de"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.8.0/gira_v1.8.0_darwin_amd64.tar.gz"
      sha256 "2ce8831c128eea0c52200996004bdbaf360aa0f0a8571e87a0561ac91dc83900"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.8.0/gira_v1.8.0_linux_arm64.tar.gz"
      sha256 "970e3174dc9853ce0bbafd74464aa37e6b5fec89023ff782d72fcdc4441f64fb"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.8.0/gira_v1.8.0_linux_amd64.tar.gz"
      sha256 "4aa62f681aed5d36f2e31e48409f252c14cc336b5c3e4ea482f87240479ce37f"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v1.8.0", shell_output("#{bin}/gira version")
  end
end
