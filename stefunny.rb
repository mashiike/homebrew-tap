class Stefunny < Formula
  version '0.4.1'
  homepage 'https://github.com/mashiike/stefunny'
  if OS.mac?
    url "https://github.com/mashiike/stefunny/releases/download/v0.4.1/stefunny_0.4.1_darwin_amd64.tar.gz"
    sha256 '2f98edc980df4f2e3b29488fe9e705407a8ea8836e8a4975ec090d46953b1561'
  end
  if OS.linux?
    url "https://github.com/mashiike/stefunny/releases/download/v0.4.1/stefunny_0.4.1_linux_amd64.tar.gz"
    sha256 '1dc97591047f12ed0263eef0245a51fe340554084949ee34a4f31d5ed1675c0c'
  end
  head 'https://github.com/mashiike/stefunny.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'stefunny'
  end
end
