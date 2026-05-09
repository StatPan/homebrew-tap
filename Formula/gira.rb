class Gira < Formula
  desc "Jira-style ticket workflow for GitHub issues and pull requests"
  homepage "https://github.com/StatPan/gira"
  version "1.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.5.1/gira_v1.5.1_darwin_arm64.tar.gz"
      sha256 "1c3dd4a10b939cf127f235ffa6d8dcd3058e26e82c55a620f1ef2fdd40b65523"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.5.1/gira_v1.5.1_darwin_amd64.tar.gz"
      sha256 "021768f1941f60ab14e18acb9f2ce648c8efe828b7de4417861a425e0d8140d5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/StatPan/gira/releases/download/v1.5.1/gira_v1.5.1_linux_arm64.tar.gz"
      sha256 "52e35d75b008b1a2fb885572d1e1d9116be6ee9661a15cd8bc481875159b24b9"
    else
      url "https://github.com/StatPan/gira/releases/download/v1.5.1/gira_v1.5.1_linux_amd64.tar.gz"
      sha256 "f8f64f4eb9de2cbca2c43fa92d382c80a38b8dc89bdf589373f2890c049f3c29"
    end
  end

  def install
    bin.install Dir["gira_*/gira"].first => "gira"
  end

  test do
    assert_match "v1.5.1", shell_output("#{bin}/gira version")
  end
end
