class Queryrunner < Formula
  version '0.2.1'
  homepage 'https://github.com/mashiike/queryrunner'
  if OS.mac?
    url "https://github.com/mashiike/queryrunner/releases/download/v0.2.1/queryrunner_0.2.1_darwin_amd64.tar.gz"
    sha256 '3c6f71fa5b130b96e7ea896f5b2c6f16bde062b84af53e721741bac5fae3faa5'
  end
  if OS.linux?
    url "https://github.com/mashiike/queryrunner/releases/download/v0.2.1/queryrunner_0.2.1_linux_amd64.tar.gz"
    sha256 'e84ea2ab100b6f730865a6a3da7d98f9e8d181f478107de862f9ac744f6187de'
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
