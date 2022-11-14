class MackerelNullBridge < Formula
  desc 'A command line tool for filling missing metric values on Mackerel.'
  version '0.0.0'
  homepage 'https://github.com/mashiike/mackerel-null-bridge'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/mackerel-null-bridge/releases/download/v0.0.0/mackerel-null-bridge_0.0.0_darwin_arm64.tar.gz'
      sha256 'ef6d7198af8ce45078d07a95376018239eb861a5611e05995ab5fe96b23bee81'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/mackerel-null-bridge/releases/download/v0.0.0/mackerel-null-bridge_0.0.0_darwin_amd64.tar.gz'
      sha256 '9edb787dda16d2c6d70ab014c0eebd14a9aac88ac10fe63d0a1c6baa52f1bf0d'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/mackerel-null-bridge/releases/download/v0.0.0/mackerel-null-bridge_0.0.0_linux_arm64.tar.gz'
      sha256 '5b952f4859f7ee9e183d11ab295a6123170c93e0b11ed30122d674fcc230d148'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/mackerel-null-bridge/releases/download/v0.0.0/mackerel-null-bridge_0.0.0_linux_amd64.tar.gz'
      sha256 'fdd7594c3c47f80f9453572f8d449758200da4344413bec35d64ce48b74b8f84'
    end
  end

  head do
    url 'https://github.com/mashiike/mackerel-null-bridge.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'mackerel-null-bridge'
  end
end
