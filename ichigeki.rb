class Ichigeki < Formula
  desc 'tool for container age one time script inspired by perl's Script::Ichigeki'
  version '0.3.0'
  homepage 'https://github.com/mashiike/ichigeki'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/ichigeki/releases/download/v0.3.0/ichigeki_0.3.0_darwin_arm64.tar.gz'
      sha256 'aa89d695119952d4b840ea3c4e53b344835a1e51288152c65c7f73f6e5e2fe04'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/ichigeki/releases/download/v0.3.0/ichigeki_0.3.0_darwin_amd64.tar.gz'
      sha256 '6e016a8dd94f55e9e0039d78057b82012a8c09769b2e1dff354edb2df0a8dba9'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/ichigeki/releases/download/v0.3.0/ichigeki_0.3.0_linux_arm64.tar.gz'
      sha256 '45bee0a4308f43b927c303e817b2023206a1a95ce758f78e7f83769f6b3448b5'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/ichigeki/releases/download/v0.3.0/ichigeki_0.3.0_linux_amd64.tar.gz'
      sha256 'c215ad4f9459dbe76db422254b20300bfd9a8467da0d038e7380dbb1265d1c78'
    end
  end

  head do
    url 'https://github.com/mashiike/ichigeki.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'ichigeki'
  end
end
