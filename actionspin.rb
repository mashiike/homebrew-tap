class Actionspin < Formula
  desc 'Bulk replace GitHub Actions references from version tags to commit hashes for locked, reproducible workflows.'
  version '0.1.2'
  homepage 'https://github.com/mashiike/actionspin'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/actionspin/releases/download/v0.1.2/actionspin_0.1.2_darwin_arm64.tar.gz'
      sha256 '72bda8b116b86ea6d23791b8f0ede147e36e24cbba3f7de94d502317ec091b36'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/actionspin/releases/download/v0.1.2/actionspin_0.1.2_darwin_amd64.tar.gz'
      sha256 '2190ed408104583a75fd5209375e57cd0cbc00cf51aadfce22f53b813a9c8b14'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/actionspin/releases/download/v0.1.2/actionspin_0.1.2_linux_arm64.tar.gz'
      sha256 '23b1b32d0c57961c58ae58ef0b744596799c2d573ac3c42112479677ead07491'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/actionspin/releases/download/v0.1.2/actionspin_0.1.2_linux_amd64.tar.gz'
      sha256 '8075587d2ff0ecdb49af5608d441a96ec27f58eb46650b08c5691a4d1dd964c3'
    end
  end

  head do
    url 'https://github.com/mashiike/actionspin.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'actionspin'
  end
end
