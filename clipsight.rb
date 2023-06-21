class Clipsight < Formula
  desc 'Tools to share some QuickSight dashboards outside'
  version '0.4.2'
  homepage 'https://github.com/mashiike/clipsight'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/clipsight/releases/download/v0.4.2/clipsight_0.4.2_darwin_arm64.tar.gz'
      sha256 '5eece2b4639cfb5f40e4209321664c0027d50af0c285518bab60e07283a960c5'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/clipsight/releases/download/v0.4.2/clipsight_0.4.2_darwin_amd64.tar.gz'
      sha256 '624c6aadec7052f610e92e3a2d040d00b58f8db47d5bc4bec15d4d093dbf8977'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/clipsight/releases/download/v0.4.2/clipsight_0.4.2_linux_arm64.tar.gz'
      sha256 '0af7293020cdcb543a690f80702bc336e27086db623ff8c06316fc1f1adf093c'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/clipsight/releases/download/v0.4.2/clipsight_0.4.2_linux_amd64.tar.gz'
      sha256 'e1f861a05c02cdecb77f694bf0652eefb2366e0524ec2bf6a4508a8aae1255dd'
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
