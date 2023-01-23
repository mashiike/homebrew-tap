class Clipsight < Formula
  desc 'Tools to share some QuickSight dashboards outside'
  version '0.1.2'
  homepage 'https://github.com/mashiike/clipsight'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/clipsight/releases/download/v0.1.2/clipsight_0.1.2_darwin_arm64.tar.gz'
      sha256 '8c09213d192b1458fae4f04739f0e554b7f78f5ff780a9d354398df3a3c5d3ed'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/clipsight/releases/download/v0.1.2/clipsight_0.1.2_darwin_amd64.tar.gz'
      sha256 '35d17114176aa59cb3d9b8f78efc5eceeb9a8488262ee6613cc768780a3d56ef'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/clipsight/releases/download/v0.1.2/clipsight_0.1.2_linux_arm64.tar.gz'
      sha256 'c8a33b327204d552235929d273776dcd112d04ee86635b73954aa9e796d08a65'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/clipsight/releases/download/v0.1.2/clipsight_0.1.2_linux_amd64.tar.gz'
      sha256 'f119e9ebd06d22fe2a0a9d6a2c5052b01b92bd12af950eeb54083b287003dde7'
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
