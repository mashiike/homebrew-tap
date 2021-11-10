class Mysqlbatch < Formula
  version '0.3.0'
  homepage 'https://github.com/mashiike/mysqlbatch'
  url "https://github.com/mashiike/mysqlbatch/releases/download/v0.3.0/mysqlbatch_0.3.0_darwin_amd64.tar.gz"
  sha256 '170fc1862e42dd37fba1d8ea0713bdf58999bb7f69a735f588054defc5a011b1'
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
