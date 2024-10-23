# WARNING: This file is auto-generated by formula.py.
# Manual changes to this file will be overwritten the next time the file is generated.
# If you need to modify the contents, please update the source template or the generating script.

class Beam < Formula
  desc "The open-source serverless GPU container runtime."
  homepage "https://docs.beam.cloud/v2"
  license "AGPL-3.0"
  version "0.2.95"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/beam-cloud/beam-client/releases/download/cli-0.2.95/beam-0.2.95-darwin-amd64.tar.gz"
    sha256 "da164a66732957d5523e11389a673812c8ac28b3c5d2dc36fb776126de37ed60"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/beam-cloud/beam-client/releases/download/cli-0.2.95/beam-0.2.95-darwin-arm64.tar.gz"
    sha256 "1c77baedaa0d08105f0dcb80c762a4d096ee5ef18648927d590367429b1f9560"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/beam-cloud/beam-client/releases/download/cli-0.2.95/beam-0.2.95-linux-amd64.tar.gz"
    sha256 "2b9479a42db35f6a23de19fb01187de1854b8bafd1ad999517746baf1a372c38"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/beam-cloud/beam-client/releases/download/cli-0.2.95/beam-0.2.95-linux-arm64.tar.gz"
    sha256 "512341dfa42936272301d1665221fc00fe7ec3db96ab3cde9bd89aa151133378"
  else
    odie "Unsupported platform or architecture"
  end

  def install
    bin.install "beam"
  end

  test do
    system "#{bin}/beam", "--version"
  end
end
