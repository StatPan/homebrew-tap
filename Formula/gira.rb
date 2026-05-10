class Gira < Formula
  desc "Jira-style ticket workflow for GitHub issues and pull requests"
  homepage "https://github.com/StatPan/gira"
  version "1.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.10.0/gira_v1.10.0_darwin_arm64.tar.gz"
      sha256 "19daf7827598a4cd0644025968915c39819e72e0cc1f9cfc541b18b3ff8c0daa"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.10.0/gira_v1.10.0_darwin_amd64.tar.gz"
      sha256 "1644fd8ed4dff0cd6cca946b03f51b1fe212fee5b25796e1b8b9fc37c882ffa0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.10.0/gira_v1.10.0_linux_arm64.tar.gz"
      sha256 "f3458d43f4f9f83edb8e023c2e326ebf54c1952a4183dad428de375ce8ceab13"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.10.0/gira_v1.10.0_linux_amd64.tar.gz"
      sha256 "acd571ce38c92d9c8aa98381555f7592ba282a04d624bd3c270e8d676c06fd9a"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v1.10.0", shell_output("#{bin}/gira version")
  end
end
