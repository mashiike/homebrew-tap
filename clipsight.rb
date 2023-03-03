class Clipsight < Formula
  desc 'Tools to share some QuickSight dashboards outside'
  version '0.1.3'
  homepage 'https://github.com/mashiike/clipsight'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/clipsight/releases/download/v0.1.3/clipsight_0.1.3_darwin_arm64.tar.gz'
      sha256 'b43a236add316fae16896b1faece62abc913e20a7b7126da3cc38db9adedb8f2'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/clipsight/releases/download/v0.1.3/clipsight_0.1.3_darwin_amd64.tar.gz'
      sha256 'd0d4277de2fbce32a8ae0ed2c026a9176746f10aea81213c331e30ed515ea329'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/clipsight/releases/download/v0.1.3/clipsight_0.1.3_linux_arm64.tar.gz'
      sha256 '81351619f1498edf34b9b2a4ea897ef310dae8e4299c25da8ef6b2ef8fcaca74'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/clipsight/releases/download/v0.1.3/clipsight_0.1.3_linux_amd64.tar.gz'
      sha256 '2d356ef49882491bd20077b89fbbd8f6f79d08d212704b08bd0fa298213b48ac'
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
