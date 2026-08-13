class Gira < Formula
  desc "Jira-style ticket workflow for GitHub issues and pull requests"
  homepage "https://github.com/StatPan/gira"
  version "3.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v3.1.3/gira_v3.1.3_darwin_arm64.tar.gz"
      sha256 "93e7ccd27ce80399cf3e710d402e6acc958420562489b9f8df7835039e74cb2f"
    else
      url "https://github.com/StatPan/gira/releases/download/v3.1.3/gira_v3.1.3_darwin_amd64.tar.gz"
      sha256 "e1457beed46abe684b6048a89f4bd3092d0002884231259fb3334ebd204444ad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v3.1.3/gira_v3.1.3_linux_arm64.tar.gz"
      sha256 "e301a635f4aa9751bb4532f9daeabd5b14fddefc07e8b387ad3242f2d60f9bda"
    else
      url "https://github.com/StatPan/gira/releases/download/v3.1.3/gira_v3.1.3_linux_amd64.tar.gz"
      sha256 "171d40e56ce39e1428ff0cca697ebc39fe67942ac112ccdfe98a5c4d161d1971"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v3.1.3", shell_output("#{bin}/gira version")
  end
end
