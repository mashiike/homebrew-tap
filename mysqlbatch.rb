class Mysqlbatch < Formula
  version '0.0.0'
  homepage 'https://github.com/mashiike/mysqlbatch'
  url "https://github.com/mashiike/mysqlbatch/releases/download/v0.0.0/mysqlbatch_v0.0.0_darwin_amd64.zip"
  sha256 '19fe01a44d425eff5ec580d31e45ad0dec7afd32ac490977b8d689c439642a40'
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
