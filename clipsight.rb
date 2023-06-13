class Clipsight < Formula
  desc 'Tools to share some QuickSight dashboards outside'
  version '0.2.3'
  homepage 'https://github.com/mashiike/clipsight'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/clipsight/releases/download/v0.2.3/clipsight_0.2.3_darwin_arm64.tar.gz'
      sha256 'd844b02eba6f05823d2c604ee057cd54a345665943f10a37d2a166047a2b82c3'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/clipsight/releases/download/v0.2.3/clipsight_0.2.3_darwin_amd64.tar.gz'
      sha256 '6dfe1f5aa8c300909ad45d1b104fced6e3d6aea11258361e50d1f88d38d899f4'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/clipsight/releases/download/v0.2.3/clipsight_0.2.3_linux_arm64.tar.gz'
      sha256 '4c083e19a8277c5f9866ac038d81a19a5eb08b28a4689c5d1a6bdceab2cf3448'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/clipsight/releases/download/v0.2.3/clipsight_0.2.3_linux_amd64.tar.gz'
      sha256 '3cda33172fd91063c6781f040a1e753075848c0e8adf1aa6a4c44775caf424ed'
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
