class Queryrunner < Formula
  version '0.2.2'
  homepage 'https://github.com/mashiike/queryrunner'
  if OS.mac?
    url "https://github.com/mashiike/queryrunner/releases/download/v0.2.2/queryrunner_0.2.2_darwin_amd64.tar.gz"
    sha256 '8f562c8de935d91dcafd58d13f7bbf001c962420051950705945a068f84fffb0'
  end
  if OS.linux?
    url "https://github.com/mashiike/queryrunner/releases/download/v0.2.2/queryrunner_0.2.2_linux_amd64.tar.gz"
    sha256 '06d5ebca508320f1cc99b123ecec7e61b23e7867899dcb9c31bfd1d44b08f55e'
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
