class MackerelNullBridge < Formula
  version '0.0.0'
  homepage 'https://github.com/mashiike/mackerel-null-bridge'
  if OS.mac?
    url "https://github.com/mashiike/mackerel-null-bridge/releases/download/v0.0.0/mackerel-null-bridge_0.0.0_darwin_amd64.tar.gz"
    sha256 '9edb787dda16d2c6d70ab014c0eebd14a9aac88ac10fe63d0a1c6baa52f1bf0d'
  end
  if OS.linux?
    url "https://github.com/mashiike/mackerel-null-bridge/releases/download/v0.0.0/mackerel-null-bridge_0.0.0_linux_amd64.tar.gz"
    sha256 'fdd7594c3c47f80f9453572f8d449758200da4344413bec35d64ce48b74b8f84'
  end
  head 'https://github.com/mashiike/mackerel-null-bridge.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'mackerel-null-bridge'
  end
end
