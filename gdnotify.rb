class Gdnotify < Formula
  desc 'google drive change notifier for AWS'
  version '0.4.2'
  homepage 'https://github.com/mashiike/gdnotify'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/gdnotify/releases/download/v0.4.2/gdnotify_0.4.2_darwin_arm64.tar.gz'
      sha256 '25ad5d3ced6ae0c45a190e4e345f901fa299487162ee54245b477f077646697d'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/gdnotify/releases/download/v0.4.2/gdnotify_0.4.2_darwin_amd64.tar.gz'
      sha256 '6d2cd08deb0171045e557eed46ad3ad64f775d4dfcda82c0c9ed3d9b2cae1341'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/gdnotify/releases/download/v0.4.2/gdnotify_0.4.2_linux_arm64.tar.gz'
      sha256 '26d9492d4e6d71e8d6baf2704a3b0abf3755c981d5a90dc6ec7eb8924194e57a'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/gdnotify/releases/download/v0.4.2/gdnotify_0.4.2_linux_amd64.tar.gz'
      sha256 'e863b66d035377733a235d821247a422ff8a118520d3ab41cf0430abf539dd97'
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
