class Queryrunner < Formula
  version '0.1.0'
  homepage 'https://github.com/mashiike/queryrunner'
  if OS.mac?
    url "https://github.com/mashiike/queryrunner/releases/download/v0.1.0/queryrunner_0.1.0_darwin_amd64.tar.gz"
    sha256 '4a2ce3072446ce70973a71b6c88db5cb73d9bec427ff25532d0359915157b9c6'
  end
  if OS.linux?
    url "https://github.com/mashiike/queryrunner/releases/download/v0.1.0/queryrunner_0.1.0_linux_amd64.tar.gz"
    sha256 '5c1f7da4df31f665c9880269e6c0a9b37cc4f97802cebe30c3a245c92264fe42'
  end
  head 'https://github.com/mashiike/queryrunner.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'queryrunner'
  end
end
