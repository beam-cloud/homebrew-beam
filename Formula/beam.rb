# WARNING: This file is auto-generated by formula.py.
# Manual changes to this file will be overwritten the next time the file is generated.
# If you need to modify the contents, please update the source template or the generating script.

class Beam < Formula
  desc "The open-source serverless GPU container runtime."
  homepage "https://docs.beam.cloud/v2"
  license "AGPL-3.0"
  version "0.2.84"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/beam-cloud/beam-client/releases/download/cli-0.2.84/beam-0.2.84-darwin-amd64.tar.gz"
    sha256 "d0fbce966bb18d4067bb507d12395f8ea608d11f0b3b2187a092631dec8ba3e1"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/beam-cloud/beam-client/releases/download/cli-0.2.84/beam-0.2.84-darwin-arm64.tar.gz"
    sha256 "d2d66a7c072a6ec9c1e40d5b82a4872c5df74ff7400594586059f30a189fa4cb"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/beam-cloud/beam-client/releases/download/cli-0.2.84/beam-0.2.84-linux-amd64.tar.gz"
    sha256 "c7e05bfcb73daf0044158345db6d4fae2699f2e89faf3e0aad6bd5645ccbaaa3"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/beam-cloud/beam-client/releases/download/cli-0.2.84/beam-0.2.84-linux-arm64.tar.gz"
    sha256 "96836ae676d7938cafa8d9005ad6f7bc178fbea02a76d9a95beaebdf98c0b300"
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
