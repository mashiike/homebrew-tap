class Shimesaba < Formula
  version '0.4.1'
  homepage 'https://github.com/mashiike/shimesaba'
  url "https://github.com/mashiike/shimesaba/releases/download/v0.4.1/shimesaba_0.4.1_darwin_amd64.tar.gz"
  sha256 '71cab15c12ae4c943e37df186d0132563a51ea8631df8a326aeb1cfae02c187a'
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
