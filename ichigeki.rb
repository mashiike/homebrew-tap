class Ichigeki < Formula
  version '0.2.0'
  homepage 'https://github.com/mashiike/ichigeki'
  if OS.mac?
    url "https://github.com/mashiike/ichigeki/releases/download/v0.2.0/ichigeki_0.2.0_darwin_amd64.tar.gz"
    sha256 '87bba74fb85cd9461b8609aa26da2a225500797eb339267372fb532c20ae5275'
  end
  if OS.linux?
    url "https://github.com/mashiike/ichigeki/releases/download/v0.2.0/ichigeki_0.2.0_linux_amd64.tar.gz"
    sha256 '5879e191e53ac9b0a5124ebd6af4e90d1f219240dbf2eab3c71402f644e8355a'
  end
  head 'https://github.com/mashiike/ichigeki.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'ichigeki'
  end
end
