class Stefunny < Formula
  version '0.6.0'
  homepage 'https://github.com/mashiike/stefunny'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/stefunny/releases/download/v0.6.0/stefunny_0.6.0_darwin_arm64.tar.gz'
      sha256 'd76e8600c7066566d9c6900a8b2ab7d7b96acb4b0e2036ae1886273b0f20d72f'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/stefunny/releases/download/v0.6.0/stefunny_0.6.0_darwin_amd64.tar.gz'
      sha256 '8057ef4755606e6fc35933b37f2b635c8c8e933cc101fbfb79c5c3a640de0013'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/stefunny/releases/download/v0.6.0/stefunny_0.6.0_linux_arm64.tar.gz'
      sha256 '43e65572d17cad746d452d8108bafe52c1d5e611115fb93c83f254269296cde2'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/stefunny/releases/download/v0.6.0/stefunny_0.6.0_linux_amd64.tar.gz'
      sha256 '3c2da52fe16b0ddfaeaeaa1d9654439173b9182b3d7aec49826ca0b8411d52f5'
    end
  end

  head do
    url 'https://github.com/mashiike/stefunny.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'stefunny'
  end
end
