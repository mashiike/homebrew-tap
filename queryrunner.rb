class Queryrunner < Formula
  version '0.1.1'
  homepage 'https://github.com/mashiike/queryrunner'
  if OS.mac?
    url "https://github.com/mashiike/queryrunner/releases/download/v0.1.1/queryrunner_0.1.1_darwin_amd64.tar.gz"
    sha256 '3864220bb904d9fcb5dc94157d1823cca1b0246be646985d66c6933929c90873'
  end
  if OS.linux?
    url "https://github.com/mashiike/queryrunner/releases/download/v0.1.1/queryrunner_0.1.1_linux_amd64.tar.gz"
    sha256 'f67af57235b9136e3dafbbbc4667f2509e3ce09c89fb8b92a38a98355a9fc86c'
  end
  head 'https://github.com/mashiike/queryrunner.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'query-runner'
  end
end
