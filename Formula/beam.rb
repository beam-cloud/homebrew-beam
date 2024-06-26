# WARNING: This file is auto-generated by formula.py.
# Manual changes to this file will be overwritten the next time the file is generated.
# If you need to modify the contents, please update the source template or the generating script.

class Beam < Formula
  desc "The open-source serverless GPU container runtime."
  homepage "https://docs.beam.cloud/v2"
  license "AGPL-3.0"
  version "0.2.42"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/beam-cloud/beam-client/releases/download/cli-0.2.42/beam-0.2.42-darwin-amd64.tar.gz"
    sha256 "006a900c73e7ac45fd8ef61c7fc24b1e96adb319ef39e39cf5eda002159fe7f7"
  elsif OS.mac? && Hardware::CPU.arm?
    url "https://github.com/beam-cloud/beam-client/releases/download/cli-0.2.42/beam-0.2.42-darwin-arm64.tar.gz"
    sha256 "1413bd55971aa7e3acb94e54592b778d8767c4acaf461d6f525228864866f210"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/beam-cloud/beam-client/releases/download/cli-0.2.42/beam-0.2.42-linux-amd64.tar.gz"
    sha256 "4ff5200b514a926335463ed4e68e70a21fde6e4142377ed15a93a263977bd134"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/beam-cloud/beam-client/releases/download/cli-0.2.42/beam-0.2.42-linux-arm64.tar.gz"
    sha256 "81ff446380466f0680d03a4e2127e3ac1c09c7923dcee4a87a85b5c068f41d2e"
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
