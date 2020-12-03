class Mysqlbatch < Formula
  version '0.1.2'
  homepage 'https://github.com/mashiike/mysqlbatch'
  url "https://github.com/mashiike/mysqlbatch/releases/download/v0.1.2/mysqlbatch_v0.1.2_darwin_amd64.zip"
  sha256 '8c49f083b0f30c941ea7956c1d7178497addcf6d761503089ac2a8e53ecb323a'
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
