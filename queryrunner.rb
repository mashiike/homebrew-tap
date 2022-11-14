class Queryrunner < Formula
  version '0.2.3'
  homepage 'https://github.com/mashiike/queryrunner'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/queryrunner/releases/download/v0.2.3/queryrunner_0.2.3_darwin_arm64.tar.gz'
      sha256 'c56724d5159ff16ec395bb384fe03db424266453be4b8653a8a1cad9cf0b40fd'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/queryrunner/releases/download/v0.2.3/queryrunner_0.2.3_darwin_amd64.tar.gz'
      sha256 '41efa1a4597efe7323e8b24ba42ee235c221ce45839da07661e100e92e9396ce'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/queryrunner/releases/download/v0.2.3/queryrunner_0.2.3_linux_arm64.tar.gz'
      sha256 '6e00db7a2d77ba0a62afbac19682f1f3a78247a4a9681e7f1563f285759a311b'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/queryrunner/releases/download/v0.2.3/queryrunner_0.2.3_linux_amd64.tar.gz'
      sha256 '83fee13bc49743dab1403ea91e66dae71507602170e119d4fb3c566f15fcb19d'
    end
  end

  head do
    url 'https://github.com/mashiike/queryrunner.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'queryrunner'
  end
end
