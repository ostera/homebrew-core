class GoWatch < Formula
  desc "Portable Go replacement for GNU watch"
  homepage "https://github.com/ostera/watch"

  url "https://github.com/ostera/watch/archive/0.2.3.tar.gz"

  version "0.2.3"
  sha256 "256bed90ae8d5a11bf8e5d27b13ec56937668509391109916ee1ceb40c01bc51"

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
