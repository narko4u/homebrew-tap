class Aip < Formula
  desc "Agent Interaction Protocol (AIP) — autonomous agent commerce layer"
  homepage "https://github.com/narko4u/aip-spec"
  version "0.2.0"
  license "MIT"

  # ── macOS ──────────────────────────────────────────────
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/narko4u/aip-spec/releases/download/v0.2.0/aip_v0.2.0_darwin_arm64.tar.gz"
      sha256 "2ea9f2f4a0db9cb654d5c7c88633ba3ae62337f5429fa1eb950153d69160bef6"
    else
      url "https://github.com/narko4u/aip-spec/releases/download/v0.2.0/aip_v0.2.0_darwin_amd64.tar.gz"
      sha256 "5d2b927ccef36ef5b78b6e0da215c89e9f3dadc6bb9763a26b238b75dbf28cca"
    end
  end

  # ── Linux ──────────────────────────────────────────────
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/narko4u/aip-spec/releases/download/v0.2.0/aip_v0.2.0_linux_arm64.tar.gz"
      sha256 "884e4f3a59bb2d77f083625e31326161cb4e2734af3a86757cdc79ea34f37b99"
    else
      url "https://github.com/narko4u/aip-spec/releases/download/v0.2.0/aip_v0.2.0_linux_amd64.tar.gz"
      sha256 "6c6dea41da75b3bcad0daa7991825bdf3985f53cfb0bd88fb8fffa3ab5b0de03"
    end
  end

  def install
    bin.install "aip"
  end

  test do
    output = shell_output("#{bin}/aip 2>&1", 0)
    assert_match "AIP — Agent Interaction Protocol", output
  end
end
