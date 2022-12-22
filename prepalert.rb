class Prepalert < Formula
  desc 'Toil reduction tool to prepare before responding to Mackerel alerts'
  version '0.10.1'
  homepage 'https://github.com/mashiike/prepalert'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/prepalert/releases/download/v0.10.1/prepalert_0.10.1_darwin_arm64.tar.gz'
      sha256 'a8f48e5e16f09c9066a321fa0ff868d298294e53a50b7bd7afefd481098a9334'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/prepalert/releases/download/v0.10.1/prepalert_0.10.1_darwin_amd64.tar.gz'
      sha256 '30df5cb10385464f8cdb2d55c6cb8c330089238acb3c3535a9468ca36b81ea91'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/prepalert/releases/download/v0.10.1/prepalert_0.10.1_linux_arm64.tar.gz'
      sha256 '3d95804c56c37f3aef47b5236f84b11ca10ffe2249f02855e8099dba58505a36'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/prepalert/releases/download/v0.10.1/prepalert_0.10.1_linux_amd64.tar.gz'
      sha256 '92b4f833f7f442053e0b29184e43de89f3af20b73e5e39d1426a4e11d8ec2031'
    end
  end

  head do
    url 'https://github.com/mashiike/prepalert.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'prepalert'
  end
end
