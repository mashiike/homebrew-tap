class Setddblock < Formula
  version '0.3.0'
  homepage 'https://github.com/mashiike/setddblock'
  if OS.mac?
    url "https://github.com/mashiike/setddblock/releases/download/v0.3.0/setddblock_0.3.0_darwin_amd64.tar.gz"
    sha256 '27bf99cf4aa66d22c5ec2e5449fdfe1ee6bca401b85c716030abb08425c0c53e'
  end
  if OS.linux?
    url "https://github.com/mashiike/setddblock/releases/download/v0.3.0/setddblock_0.3.0_linux_amd64.tar.gz"
    sha256 'f8f91600d5ff5ef5b8bb34363945a71788f8b5bae89f730533b5a7426e76523f'
  end
  head 'https://github.com/mashiike/setddblock.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'setddblock'
  end
end
