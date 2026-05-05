class Gira < Formula
  desc "Jira-style project flow on GitHub"
  homepage "https://github.com/StatPan/gira"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.0.0/gira_v1.0.0_darwin_arm64.tar.gz"
      sha256 "2fd6d462b741ff73c40966930a0a4e837825dcdafbd83d09eea09a93d7d42cde"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.0.0/gira_v1.0.0_darwin_amd64.tar.gz"
      sha256 "c6ba520723a1bf228b4267a7e0cb9ae3fbe733196b71b5a5553b1fdde5dbf837"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.0.0/gira_v1.0.0_linux_arm64.tar.gz"
      sha256 "78104f66bd81d31eb5ebdf8e4bd2c46ec6390bb38cc23f877ce0b80cf82d7e1d"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.0.0/gira_v1.0.0_linux_amd64.tar.gz"
      sha256 "be2f29be2aebac14d49f2cb3260a54435e57d5e86f8758d83f2422c863ec256e"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v1.0.0", shell_output("#{bin}/gira version")
  end
end
