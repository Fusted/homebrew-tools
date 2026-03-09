class FlacToAlac < Formula
  desc "Convert FLAC to ALAC (Apple Lossless) with metadata preservation"
  homepage "https://github.com/fusted/flac-to-alac"
  url "https://github.com/fusted/flac-to-alac/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "b1ebfba3b0a29604e733e5aa2c02e8ad1297da4733218a2ef0d42c9812fba3da"
  license "MIT"

  depends_on "ffmpeg"
  depends_on "python@3"

  def install
    bin.install "flac-to-alac"
  end

  test do
    system "#{bin}/flac-to-alac", "--help"
    system "#{bin}/flac-to-alac", "--version"
  end
end
