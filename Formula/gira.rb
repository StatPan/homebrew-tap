class Gira < Formula
  desc "Jira-style ticket workflow for GitHub issues and pull requests"
  homepage "https://github.com/StatPan/gira"
  version "2.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v2.8.0/gira_v2.8.0_darwin_arm64.tar.gz"
      sha256 "b0d93d2ffd064bad2f892599886b734a7d8846cb9d3243a4e4899a2fa9e5205c"
    else
      url "https://github.com/StatPan/gira/releases/download/v2.8.0/gira_v2.8.0_darwin_amd64.tar.gz"
      sha256 "b8b38ed6624ecc4b65bc4fc5246f81a13f137ad9680b7e76c5359c2b95db5fb5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v2.8.0/gira_v2.8.0_linux_arm64.tar.gz"
      sha256 "8885d83865869fe226667b110fbdca5eddffe03cff611282aefc8c3af7872f30"
    else
      url "https://github.com/StatPan/gira/releases/download/v2.8.0/gira_v2.8.0_linux_amd64.tar.gz"
      sha256 "8e43440c0a4c2e6c94f8109137ce6af2204fe14667bb3aa87aacff854d1ff3bb"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v2.8.0", shell_output("#{bin}/gira version")
  end
end
