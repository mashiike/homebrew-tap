class Stefunny < Formula
  version '0.4.3'
  homepage 'https://github.com/mashiike/stefunny'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/stefunny/releases/download/v0.4.3/stefunny_0.4.3_darwin_arm64.tar.gz'
      sha256 'd0fe77902974abb4f61fca8db7572e76384b206ee9df9df50f86ba494547808e'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/stefunny/releases/download/v0.4.3/stefunny_0.4.3_darwin_amd64.tar.gz'
      sha256 'd366d781d11d00094e2fc5d1925f9c2ac748b9bb580c2e5c9cd449bb98c7a9af'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/stefunny/releases/download/v0.4.3/stefunny_0.4.3_linux_arm64.tar.gz'
      sha256 'aa2adc4dccc09861cab8e32c47a5ca5a3c54f170c4be9dc3be62e6106574ac07'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/stefunny/releases/download/v0.4.3/stefunny_0.4.3_linux_amd64.tar.gz'
      sha256 '0c4bf299e65164bbc76abca51604d33b64f1a9b8a0142637465ac1696d78715a'
    end
  end

  head do
    url 'https://github.com/mashiike/stefunny.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'stefunny'
  end
end
