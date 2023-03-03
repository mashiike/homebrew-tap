class Gdnotify < Formula
  desc 'google drive change notifier for AWS'
  version '0.3.0'
  homepage 'https://github.com/mashiike/gdnotify'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/gdnotify/releases/download/v0.3.0/gdnotify_0.3.0_darwin_arm64.tar.gz'
      sha256 'e0793c7a3088e8b496424058c966738ff4c041625cf37351d204a540f989c31a'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/gdnotify/releases/download/v0.3.0/gdnotify_0.3.0_darwin_amd64.tar.gz'
      sha256 'c7dd63b962b6113ffa7a3dade591ff9fb2f69f7e31fd3e55cfab9b4397cc91d5'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/gdnotify/releases/download/v0.3.0/gdnotify_0.3.0_linux_arm64.tar.gz'
      sha256 '20290b9b9f7d564a5d7e2c169e40db82360c5004794d67b9fae795fa35cf3f92'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/gdnotify/releases/download/v0.3.0/gdnotify_0.3.0_linux_amd64.tar.gz'
      sha256 'b469f1b3f93f149041136b8e0342747fcf47b539928b685367d6684023e7958b'
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
