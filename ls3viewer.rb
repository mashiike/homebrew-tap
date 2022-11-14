class Ls3viewer < Formula
  desc 'lambda s3 viewer'
  version '0.2.0'
  homepage 'https://github.com/mashiike/ls3viewer'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/ls3viewer/releases/download/v0.2.0/ls3viewer_0.2.0_darwin_arm64.tar.gz'
      sha256 'abf4505eea95aed0160339d47828608aba36030160322e7fe1785302f8903e38'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/ls3viewer/releases/download/v0.2.0/ls3viewer_0.2.0_darwin_amd64.tar.gz'
      sha256 '5863a9cfccb5b6f86e1cc9ae602d623b21973a4ea756bb681c59dd3ff66f53b7'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/ls3viewer/releases/download/v0.2.0/ls3viewer_0.2.0_linux_arm64.tar.gz'
      sha256 '1cc621f078a6c6fcfc25a233d774f1e9746b81fea08386098548baa20f9e0a0b'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/ls3viewer/releases/download/v0.2.0/ls3viewer_0.2.0_linux_amd64.tar.gz'
      sha256 '5255dc964768ff57d31b3fb8db7ba8f509cb6ae984a8ab1d1e0dfc89a9695417'
    end
  end

  head do
    url 'https://github.com/mashiike/ls3viewer.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'ls3viewer'
  end
end
