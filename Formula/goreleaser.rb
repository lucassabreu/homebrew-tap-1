# This file was generated by GoReleaser. DO NOT EDIT.
class Goreleaser < Formula
  desc "Deliver Go binaries as fast and easily as possible"
  homepage "https://goreleaser.com"
  version "0.118.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/goreleaser/goreleaser/releases/download/v0.118.1/goreleaser_Darwin_x86_64.tar.gz"
    sha256 "d8984b4f7fce02692b8924f6410538946e99e604b0585fc23c84365b6c835fa5"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/goreleaser/goreleaser/releases/download/v0.118.1/goreleaser_Linux_x86_64.tar.gz"
      sha256 "bc590a1ca5f93ef1693727469771580d944fcce50f5683e9c4e7802ef5505b6a"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/goreleaser/goreleaser/releases/download/v0.118.1/goreleaser_Linux_arm64.tar.gz"
        sha256 "0552f57db742551603de155ab6b3549a28219d2878323997097aa4348735e5bc"
      else
        url "https://github.com/goreleaser/goreleaser/releases/download/v0.118.1/goreleaser_Linux_armv6.tar.gz"
        sha256 "b149ded9cc97b2f818c6adb8255c8f6f4c527c7d05e151c0b8767f5fe01040e6"
      end
    end
  end

  def install
    bin.install "goreleaser"
  end

  test do
    system "#{bin}/goreleaser -v"
  end
end
