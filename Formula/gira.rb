class Gira < Formula
  desc "Jira-style ticket workflow for GitHub issues and pull requests"
  homepage "https://github.com/StatPan/gira"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.3.0/gira_v1.3.0_darwin_arm64.tar.gz"
      sha256 "d866d5311772f57738327cd2179d5f4545a789a67fc8134f374b4d546f27ff48"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.3.0/gira_v1.3.0_darwin_amd64.tar.gz"
      sha256 "9810ea6d95ce825635e2912bbb4c27302e20ec5b41f2a0ac54c445627815b5fb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.3.0/gira_v1.3.0_linux_arm64.tar.gz"
      sha256 "3e2346ab0edc9ed1f4a1ee5be9a0e7fb084ed182e7b4d16e50f2237cc5229a12"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.3.0/gira_v1.3.0_linux_amd64.tar.gz"
      sha256 "1147066fcfaf399a70a3106ccfbd0ec781e33c65f4451ea9ac3708a17a278048"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v1.3.0", shell_output("#{bin}/gira version")
  end
end
