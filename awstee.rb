class Awstee < Formula
  version '0.2.0'
  homepage 'https://github.com/mashiike/awstee'
  if OS.mac?
    url "https://github.com/mashiike/awstee/releases/download/v0.2.0/awstee_0.2.0_darwin_amd64.tar.gz"
    sha256 'c70b69fd93c8edb4b3c44c4e923824bfb43f157acbffe6411708123e978d72fd'
  end
  if OS.linux?
    url "https://github.com/mashiike/awstee/releases/download/v0.2.0/awstee_0.2.0_linux_amd64.tar.gz"
    sha256 '17fc6eab695696561d6936b4364860c8f36c3e19e56d59f59b464929edd1e48f'
  end
  head 'https://github.com/mashiike/awstee.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'awstee'
  end
end
