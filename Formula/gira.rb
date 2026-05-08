class Gira < Formula
  desc "Jira-style ticket workflow for GitHub issues and pull requests"
  homepage "https://github.com/StatPan/gira"
  version "1.4.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.4.5/gira_v1.4.5_darwin_arm64.tar.gz"
      sha256 "86a112282bd5a0371757082bf0e4b172012c947a9bea30efa31d5d5abcf19cdc"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.4.5/gira_v1.4.5_darwin_amd64.tar.gz"
      sha256 "1cd550d8a51a13dfb2a7a6c7f18468fcc42637d4e1dee23e2baf511d8a0854c8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.4.5/gira_v1.4.5_linux_arm64.tar.gz"
      sha256 "6d6659fd87cd78998e137595fb156de969060371dfcb128fcdb6b0cdd17f0e3f"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.4.5/gira_v1.4.5_linux_amd64.tar.gz"
      sha256 "f27377bd6033a067be337251408c8f7bc6b73bb01501546ec74b4fb9c6b75008"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v1.4.5", shell_output("#{bin}/gira version")
  end
end
