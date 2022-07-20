class Gdnotify < Formula
  version '0.2.0'
  homepage 'https://github.com/mashiike/gdnotify'
  if OS.mac?
    url "https://github.com/mashiike/gdnotify/releases/download/v0.2.0/gdnotify_0.2.0_darwin_amd64.tar.gz"
    sha256 '40ce96da3e08666b70d29ba8567f6897e364798ca6027f1e5b20cc5961a78ff5'
  end
  if OS.linux?
    url "https://github.com/mashiike/gdnotify/releases/download/v0.2.0/gdnotify_0.2.0_linux_amd64.tar.gz"
    sha256 'a34d0416cd7e85919f1fd4035482108544ae0f92f5b6fad33a148eebbe2d2783'
  end
  head 'https://github.com/mashiike/gdnotify.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'gdnotify'
  end
end
