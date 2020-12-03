class Mysqlbatch < Formula
  version '0.1.1'
  homepage 'https://github.com/mashiike/mysqlbatch'
  url "https://github.com/mashiike/mysqlbatch/releases/download/v0.1.1/mysqlbatch_v0.1.1_darwin_amd64.zip"
  sha256 'e5dd33499e2a7de71efc9dfb6a1c85010bce175049b7c85104c3774c7f5f0e36'
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
