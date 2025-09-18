class Gdnotify < Formula
  desc 'google drive change notifier for AWS'
  version '0.5.3'
  homepage 'https://github.com/mashiike/gdnotify'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/gdnotify/releases/download/v0.5.3/gdnotify_0.5.3_darwin_arm64.tar.gz'
      sha256 '2e3e74d379ec98a2d353a8b886c99ec6a771dbaa4ccaae0953e05c83abe766dc'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/gdnotify/releases/download/v0.5.3/gdnotify_0.5.3_darwin_amd64.tar.gz'
      sha256 'f30f131bc49db21ff813fb7d2d6000f0f4eef85b2eccc6b4f21146996d138be6'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/gdnotify/releases/download/v0.5.3/gdnotify_0.5.3_linux_arm64.tar.gz'
      sha256 'df3b78a78b283e024ebe09d9712f014237937cd5303a91a5e71ca3203ed278e2'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/gdnotify/releases/download/v0.5.3/gdnotify_0.5.3_linux_amd64.tar.gz'
      sha256 'abb47bdbc407ba46d04837ca4dce3c985cf3ac85db416745721f320182142e08'
    end
  end

  head do
    url 'https://github.com/mashiike/gdnotify.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'gdnotify'
  end
end
