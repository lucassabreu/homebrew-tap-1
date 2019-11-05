# This file was generated by GoReleaser. DO NOT EDIT.
class Nfpm < Formula
  desc "nFPM is not FPM"
  homepage "https://github.com/goreleaser/nfpm"
  version "1.1.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/goreleaser/nfpm/releases/download/v1.1.3/nfpm_1.1.3_Darwin_x86_64.tar.gz"
    sha256 "29f595a9679473f7544569f52206d1a6658db830f39d56e8fceeb40b814c9277"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/goreleaser/nfpm/releases/download/v1.1.3/nfpm_1.1.3_Linux_x86_64.tar.gz"
      sha256 "61a78711dd55dbf44589c7d00bb8f46666f7c33ad3c3413e46081902604c7ce4"
    end
  end

  def install
    bin.install "nfpm"
  end

  test do
    system "#{bin}/nfpm -v"
  end
end
