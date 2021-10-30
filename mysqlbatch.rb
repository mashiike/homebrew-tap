class Mysqlbatch < Formula
  version '0.2.2'
  homepage 'https://github.com/mashiike/mysqlbatch'
  url "https://github.com/mashiike/mysqlbatch/releases/download/v0.2.2/mysqlbatch_v0.2.2_darwin_amd64.zip"
  sha256 'a2b7ff501f7d59d298c6acd658d615bd1683813f727e86e17d3f422900ac0477'
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
