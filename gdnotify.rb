class Gdnotify < Formula
  desc 'google drive change notifier for AWS'
  version '0.2.0'
  homepage 'https://github.com/mashiike/gdnotify'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/gdnotify/releases/download/v0.2.0/gdnotify_0.2.0_darwin_arm64.tar.gz'
      sha256 '01e1f0f91561cce0d77f1e8aeffa850cbfb2ebe4f681e6e4c95510378bea4be3'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/gdnotify/releases/download/v0.2.0/gdnotify_0.2.0_darwin_amd64.tar.gz'
      sha256 '40ce96da3e08666b70d29ba8567f6897e364798ca6027f1e5b20cc5961a78ff5'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/gdnotify/releases/download/v0.2.0/gdnotify_0.2.0_linux_arm64.tar.gz'
      sha256 '4a07e6d36a63ea3a605f6e0f54e5e0ac75bfabf1b72b98e7aa547bbe198f0514'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/gdnotify/releases/download/v0.2.0/gdnotify_0.2.0_linux_amd64.tar.gz'
      sha256 'a34d0416cd7e85919f1fd4035482108544ae0f92f5b6fad33a148eebbe2d2783'
    end
  end

  head do
    url 'https://github.com/mashiike/gdnotify.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'gdnotify'
  end
end
