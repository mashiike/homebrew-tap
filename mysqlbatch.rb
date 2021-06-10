class Mysqlbatch < Formula
  version '0.2.1'
  homepage 'https://github.com/mashiike/mysqlbatch'
  url "https://github.com/mashiike/mysqlbatch/releases/download/v0.2.1/mysqlbatch_v0.2.1_darwin_amd64.zip"
  sha256 '16f7812e869f706efedf5257e9282cbf4f662e564fe7d325e8e97a80327b084e'
  head 'https://github.com/mashiike/mysqlbatch.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'mysqlbatch'
  end
end
