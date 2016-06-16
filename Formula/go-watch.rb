class GoWatch < Formula
  desc "Portable Go replacement for GNU watch"
  homepage "https://github.com/ostera/watch"

  url "https://github.com/ostera/watch/archive/0.3.0.tar.gz"

  version "0.3.0"
  sha256 "ffa6f20d0b22df93754dcf3897f38ec1c2e1bf7e59f945e4ddc901113a4cb946"

  head "https://github.com/ostera/watch.git"

  depends_on "go"

  conflicts_with "watch"

  def install
    bin.mkdir
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    system "watch", "-v"
  end
end
