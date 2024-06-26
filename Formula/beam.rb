# WARNING: This file is auto-generated by formula.py.
# Manual changes to this file will be overwritten the next time the file is generated.
# If you need to modify the contents, please update the source template or the generating script.

class Beam < Formula
  desc "The open-source serverless GPU container runtime."
  homepage "https://docs.beam.cloud/v2"
  license "AGPL-3.0"
  version "0.2.37"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/beam-cloud/beam-client/releases/download/cli-0.2.37/beam-0.2.37-darwin-amd64.tar.gz"
    sha256 "62a5688a2e3da42dbc658be781678346e471f520aaa1e86413f828f03d3c419b"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/beam-cloud/beam-client/releases/download/cli-0.2.37/beam-0.2.37-darwin-arm64.tar.gz"
    sha256 "26c90f6e7232a912a4241f7106b5505707c3b364e5264a4ad6e1463df46cdc85"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/beam-cloud/beam-client/releases/download/cli-0.2.37/beam-0.2.37-linux-amd64.tar.gz"
    sha256 "c9c16ab83ec606dd49fa7556a7cc687dccea31756978b00af4908c42e1ae57f7"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/beam-cloud/beam-client/releases/download/cli-0.2.37/beam-0.2.37-linux-arm64.tar.gz"
    sha256 "0e0ef669e9841c62f92119f884c6aa64e52a5cf345c7016b0fac4c0dc9bc6c85"
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
