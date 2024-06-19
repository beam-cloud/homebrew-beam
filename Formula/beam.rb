# WARNING: This file is auto-generated by formula.py.
# Manual changes to this file will be overwritten the next time the file is generated.
# If you need to modify the contents, please update the source template or the generating script.

class Beam < Formula
  desc "The open-source serverless GPU container runtime."
  homepage "https://docs.beam.cloud/v2"
  license "AGPL-3.0"
  version "0.2.31"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/beam-cloud/beam-client/releases/download/cli-0.2.31/beam-0.2.31-darwin-amd64.tar.gz"
    sha256 "a43d55719a10782f58309fa618f02e0979284a36aa0d3c30c92b24dc7405f25e"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/beam-cloud/beam-client/releases/download/cli-0.2.31/beam-0.2.31-darwin-arm64.tar.gz"
    sha256 "e8318d358f04756794f747f314c6cbf0ac85447e37bc3cd433787e982c9342db"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/beam-cloud/beam-client/releases/download/cli-0.2.31/beam-0.2.31-linux-amd64.tar.gz"
    sha256 "780e6d935d40c74d453f680a962f29b932d396f06efb3825b4da0a701709e1e1"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/beam-cloud/beam-client/releases/download/cli-0.2.31/beam-0.2.31-linux-arm64.tar.gz"
    sha256 "7d2bb3415999b379c390b1afbe291220e470ac360edebb887c7ea76d15b49cb0"
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