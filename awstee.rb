class Awstee < Formula
  desc 'awstee is a tee command-like tool with AWS as the output destination.'
  version '0.3.0'
  homepage 'https://github.com/mashiike/awstee'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/awstee/releases/download/v0.3.0/awstee_0.3.0_darwin_arm64.tar.gz'
      sha256 '783b7c65bcf1d66c896e5e326755bbb63835aaf298c7ee9b1f0e652f1ceed635'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/awstee/releases/download/v0.3.0/awstee_0.3.0_darwin_amd64.tar.gz'
      sha256 '315dc989747d7e415561f2c2f3a18b67167937c53eb7c780f30d8754783c2c42'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/awstee/releases/download/v0.3.0/awstee_0.3.0_linux_arm64.tar.gz'
      sha256 'da2345d019c4d80640d1e1e322aff0b794b8355554ca95ac9d5d2c8a9e299a03'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/awstee/releases/download/v0.3.0/awstee_0.3.0_linux_amd64.tar.gz'
      sha256 '06d2fc9829a968b5f00167079445cf638fd204528a7a1f235db862f7530768c3'
    end
  end

  head do
    url 'https://github.com/mashiike/awstee.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'awstee'
  end
end
