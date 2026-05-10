class Gira < Formula
  desc "Jira-style ticket workflow for GitHub issues and pull requests"
  homepage "https://github.com/StatPan/gira"
  version "1.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.7.0/gira_v1.7.0_darwin_arm64.tar.gz"
      sha256 "da4a72e9a17c8ec827b643628088ca9c575cea8d6320750eb0292d1dee8d79ba"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.7.0/gira_v1.7.0_darwin_amd64.tar.gz"
      sha256 "e7f3a4a922b1bc9c3793678c386468057ab9a30bf483fde25523d0e528c1642f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.7.0/gira_v1.7.0_linux_arm64.tar.gz"
      sha256 "b94cf46db256faf5b3c598ac4d5b9b54440c2a2a228b0c3f82bc3163ae0168f8"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.7.0/gira_v1.7.0_linux_amd64.tar.gz"
      sha256 "4ae7b353dd40b13fb16e651cf9b537f524c83bc85720a244c0f855c37d478194"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v1.7.0", shell_output("#{bin}/gira version")
  end
end
