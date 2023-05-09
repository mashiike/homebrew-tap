class Prepalert < Formula
  desc 'Toil reduction tool to prepare before responding to Mackerel alerts'
  version '0.10.2'
  homepage 'https://github.com/mashiike/prepalert'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/prepalert/releases/download/v0.10.2/prepalert_0.10.2_darwin_arm64.tar.gz'
      sha256 'cc09ec94f99b9f9af1d043fa9d70bfa69f4255adb80c1caf9c88aa8dc78291ed'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/prepalert/releases/download/v0.10.2/prepalert_0.10.2_darwin_amd64.tar.gz'
      sha256 '0731d1d980be8810a254934ef8c062ae7b4d1eac9283d500ec261341fa095a78'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/prepalert/releases/download/v0.10.2/prepalert_0.10.2_linux_arm64.tar.gz'
      sha256 'a12adac774ab3efdec807dbf13c05f8a31db0c21930175de9d1d60765883428d'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/prepalert/releases/download/v0.10.2/prepalert_0.10.2_linux_amd64.tar.gz'
      sha256 '8fa97e9db3eea7a5da597248e9cad87c278258f21a806f271385dd9fa5c80b55'
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
