class Actionspin < Formula
  desc 'Bulk replace GitHub Actions references from version tags to commit hashes for locked, reproducible workflows.'
  version '0.2.0'
  homepage 'https://github.com/mashiike/actionspin'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/actionspin/releases/download/v0.2.0/actionspin_0.2.0_darwin_arm64.tar.gz'
      sha256 '7587966df630ad98c5f174032fbe903273ee85823fe539e10ae9afa6c3d44b4c'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/actionspin/releases/download/v0.2.0/actionspin_0.2.0_darwin_amd64.tar.gz'
      sha256 'cd53c5f1367d665f01dc5f20fbe25b5fb9e956192897f85b65ef90b17ac0066f'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/actionspin/releases/download/v0.2.0/actionspin_0.2.0_linux_arm64.tar.gz'
      sha256 '3880f1105e7302f4c6b9d467da7a5c48a01c13f5fa1024c045bd5cdee6f9ec9e'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/actionspin/releases/download/v0.2.0/actionspin_0.2.0_linux_amd64.tar.gz'
      sha256 'a20f763830e23ad2186b9273b6df069ef00dbfb8d080cc22b71cd07a07439947'
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
