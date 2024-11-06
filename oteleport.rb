class Oteleport < Formula
  version '0.2.3'
  homepage 'https://github.com/mashiike/oteleport'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/oteleport/releases/download/v0.2.3/oteleport_0.2.3_darwin_arm64.tar.gz'
      sha256 'd22202247420fc7c6a7535247e5a2e64860fdc04fd0dc858ac22e1b364ccdc82'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/oteleport/releases/download/v0.2.3/oteleport_0.2.3_darwin_amd64.tar.gz'
      sha256 'f48c8f48415f24325c3e4f08f0d18ed72b92cd81412bd526beb834ac8783e8c8'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/oteleport/releases/download/v0.2.3/oteleport_0.2.3_linux_arm64.tar.gz'
      sha256 'b110f83aa31c82b2dc045c2635782ab687a0d5a93844132033f110bcabbd61e6'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/oteleport/releases/download/v0.2.3/oteleport_0.2.3_linux_amd64.tar.gz'
      sha256 '7805d0a75cc10cd5505654e4b093c0d6229af4270bfd4a2f8efb36478814fd82'
    end
  end

  head do
    url 'https://github.com/mashiike/oteleport.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'oteleport'
  end
end
