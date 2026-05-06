class Gira < Formula
  desc "Jira-style project flow on GitHub"
  homepage "https://github.com/StatPan/gira"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.2.0/gira_v1.2.0_darwin_arm64.tar.gz"
      sha256 "f2c37c989d10932880414e14c95b5b9f3f92b755d031d578a7fd0f59d1a4764c"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.2.0/gira_v1.2.0_darwin_amd64.tar.gz"
      sha256 "48864e3443b52f5f10441c8a51c82df91b1732a6702aa1c1c221197f95cd68bc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.2.0/gira_v1.2.0_linux_arm64.tar.gz"
      sha256 "bbcb9b2c2d4208797d9b675c205460d3ff02e721a16681a17b47f091893742ba"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.2.0/gira_v1.2.0_linux_amd64.tar.gz"
      sha256 "408076bb80905e5ddad803d7b507194c033020172b7edc3f4e684c656c7a135f"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v1.2.0", shell_output("#{bin}/gira version")
  end
end
