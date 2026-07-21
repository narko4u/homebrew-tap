class Aip < Formula
  desc "Agent Interaction Protocol (AIP) — autonomous agent commerce layer"
  homepage "https://github.com/narko4u/aip-spec"
  version "0.2.0"
  license "MIT"

  # ── macOS ──────────────────────────────────────────────
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/narko4u/aip-spec/releases/download/v0.2.0/aip_v0.2.0_darwin_arm64.tar.gz"
      sha256 "UPDATE_AFTER_RELEASE"  # sha256sum aip_v0.2.0_darwin_arm64.tar.gz
    else
      url "https://github.com/narko4u/aip-spec/releases/download/v0.2.0/aip_v0.2.0_darwin_amd64.tar.gz"
      sha256 "UPDATE_AFTER_RELEASE"  # sha256sum aip_v0.2.0_darwin_amd64.tar.gz
    end
  end

  # ── Linux ──────────────────────────────────────────────
  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/narko4u/aip-spec/releases/download/v0.2.0/aip_v0.2.0_linux_arm64.tar.gz"
      sha256 "UPDATE_AFTER_RELEASE"  # sha256sum aip_v0.2.0_linux_arm64.tar.gz
    else
      url "https://github.com/narko4u/aip-spec/releases/download/v0.2.0/aip_v0.2.0_linux_amd64.tar.gz"
      sha256 "UPDATE_AFTER_RELEASE"  # sha256sum aip_v0.2.0_linux_amd64.tar.gz
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
