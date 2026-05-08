class Gira < Formula
  desc "Jira-style ticket workflow for GitHub issues and pull requests"
  homepage "https://github.com/StatPan/gira"
  version "1.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.5.0/gira_v1.5.0_darwin_arm64.tar.gz"
      sha256 "083b066093b2e60c1ab4807e31e4fb8092a74eb77c9b2023589105dced8631b4"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.5.0/gira_v1.5.0_darwin_amd64.tar.gz"
      sha256 "75214acb67cb23849daefca989419d9795a9eabf7653bf1be3e5866ddde9499c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.5.0/gira_v1.5.0_linux_arm64.tar.gz"
      sha256 "b9a7f5595663c117683ea9e7460055c9acdbf10d914cf30dcec9ca67b335daa2"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.5.0/gira_v1.5.0_linux_amd64.tar.gz"
      sha256 "2ff711c204a9682e56e547a40649e0493ccf22df034a9c3265f41a53a8b87665"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v1.5.0", shell_output("#{bin}/gira version")
  end
end
