class Prepalert < Formula
  desc 'Toil reduction tool to prepare before responding to Mackerel alerts'
  version '0.8.0'
  homepage 'https://github.com/mashiike/prepalert'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/prepalert/releases/download/v0.8.0/prepalert_0.8.0_darwin_arm64.tar.gz'
      sha256 '4f4f5e64c015e4b361bf2178ef50603e9ee3f25dba49bdcde54366c4b504c90c'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/prepalert/releases/download/v0.8.0/prepalert_0.8.0_darwin_amd64.tar.gz'
      sha256 'cf75e7cdfc07a7029c173ad5726958c3af932f6077c695a763f4dc85504d1bec'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/prepalert/releases/download/v0.8.0/prepalert_0.8.0_linux_arm64.tar.gz'
      sha256 'd9e03670fea8fc67c8f11de41e1849a6eb7592effde86260e72d80a17e392527'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/prepalert/releases/download/v0.8.0/prepalert_0.8.0_linux_amd64.tar.gz'
      sha256 '015fccad3d264660098778e1b5b20b0e3ba5e022d99d18278810f13c8c3e2f64'
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
