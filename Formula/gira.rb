class Gira < Formula
  desc "Jira-style project flow on GitHub"
  homepage "https://github.com/StatPan/gira"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.1.0/gira_v1.1.0_darwin_arm64.tar.gz"
      sha256 "b8f8efa4715d35271b6cd9f02e13244185ecb8f7b97935db318f85c75bceeb52"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.1.0/gira_v1.1.0_darwin_amd64.tar.gz"
      sha256 "ec612dcec2539d8a8c1008eebb0d015b010de2773279c88fa40fa76a7a50dba6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.1.0/gira_v1.1.0_linux_arm64.tar.gz"
      sha256 "3714224b312f2bc2ac293d1f1254a410fe3717f6d11e11a8591da55310db2ca6"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.1.0/gira_v1.1.0_linux_amd64.tar.gz"
      sha256 "4d1eae0480a915301e7dbd7de56c9f955ac1a1a3aa2f077d195cbef632266363"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v1.1.0", shell_output("#{bin}/gira version")
  end
end
