class Ls3viewer < Formula
  desc 'lambda s3 viewer'
  version '0.3.0'
  homepage 'https://github.com/mashiike/ls3viewer'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/ls3viewer/releases/download/v0.3.0/ls3viewer_0.3.0_darwin_arm64.tar.gz'
      sha256 'd6546ac1b09782c13f64e2efedb480f541c9389d8c31e0ba380cf8adfa711a60'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/ls3viewer/releases/download/v0.3.0/ls3viewer_0.3.0_darwin_amd64.tar.gz'
      sha256 'c39385752d09fb643ce4dbf52d7b2a2a769bbeab547e8b3b58cf0e7297591e42'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/ls3viewer/releases/download/v0.3.0/ls3viewer_0.3.0_linux_arm64.tar.gz'
      sha256 '6e3223e3f90a1c6e8f2d368d2dce3bb1b7c643e8bc4ece5d500fd5b0d36fe41e'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/ls3viewer/releases/download/v0.3.0/ls3viewer_0.3.0_linux_amd64.tar.gz'
      sha256 '0ddf14ab29025d20578040f7107a130da1367acedbf719c7aa6ccbce43eac633'
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
