class Gdnotify < Formula
  desc 'google drive change notifier for AWS'
  version '0.4.0'
  homepage 'https://github.com/mashiike/gdnotify'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/gdnotify/releases/download/v0.4.0/gdnotify_0.4.0_darwin_arm64.tar.gz'
      sha256 'fd5ff3babbd23db48b0506b25013f8fc673ffe5bc29ddee0a119d37f8236999a'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/gdnotify/releases/download/v0.4.0/gdnotify_0.4.0_darwin_amd64.tar.gz'
      sha256 '3bcdae739ef9fab688853f2a5349c35a1b766fb0a88a435c607ceab4df853fd5'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/gdnotify/releases/download/v0.4.0/gdnotify_0.4.0_linux_arm64.tar.gz'
      sha256 'bc2be6a5b464ccea5f2886057a5924901fa9a3448564e45ea3d6fc022878465f'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/gdnotify/releases/download/v0.4.0/gdnotify_0.4.0_linux_amd64.tar.gz'
      sha256 '8f07fce567cd35853ab4949f351cee6d2b47b827213c2dc602be69cdeff2149c'
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
