class GoWatch < Formula
  desc "Portable Go replacement for GNU watch"
  homepage "https://github.com/ostera/watch"

  url "https://github.com/ostera/watch/archive/0.3.1.tar.gz"

  version "0.3.1"
  sha256 "f2b723f3dbfb5d904249a6b6dedbc6c2a941a346d27269ce5d384aa08a525ed1"

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
