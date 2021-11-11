class Shimesaba < Formula
  version '0.2.3'
  homepage 'https://github.com/mashiike/shimesaba'
  url "https://github.com/mashiike/shimesaba/releases/download/v0.2.3/shimesaba_0.2.3_darwin_amd64.tar.gz"
  sha256 'f4de9ab48938bcbf275189b4201c65aa67faa97ef4c9dbe90f924ffd7d37a34a'
  head 'https://github.com/mashiike/shimesaba.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'shimesaba'
  end
end
