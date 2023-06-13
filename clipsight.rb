class Clipsight < Formula
  desc 'Tools to share some QuickSight dashboards outside'
  version '0.2.5'
  homepage 'https://github.com/mashiike/clipsight'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/clipsight/releases/download/v0.2.5/clipsight_0.2.5_darwin_arm64.tar.gz'
      sha256 'b72c63e7dc7b37df87c6efcc66a30b415186044e16aa14e37ef10c0047ac1111'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/clipsight/releases/download/v0.2.5/clipsight_0.2.5_darwin_amd64.tar.gz'
      sha256 '339fe8145c90e6a7e541a828fdf0d1ae0b63bb4d952aafff8fac1558e53b7ae7'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/clipsight/releases/download/v0.2.5/clipsight_0.2.5_linux_arm64.tar.gz'
      sha256 'd1df1c742c22da1762e20559ae683a5a10a5b9c753074e1e221e8a5592c8e64e'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/clipsight/releases/download/v0.2.5/clipsight_0.2.5_linux_amd64.tar.gz'
      sha256 'b2a4871226efed776b72ab00c8eaaaca95669f6359e9092a5ddb66097fe50173'
    end
  end

  head do
    url 'https://github.com/mashiike/clipsight.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'clipsight'
  end
end
