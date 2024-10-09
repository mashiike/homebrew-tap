class S3Setlock < Formula
  desc 'Distributed locking using Amazon S3'
  version '0.1.0'
  homepage 'https://github.com/mashiike/s3-setlock'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/s3-setlock/releases/download/v0.1.0/s3-setlock_0.1.0_darwin_arm64.tar.gz'
      sha256 '41efb1becf97517e8282028caf7ca25e7ebbb8fa6ad7b35adca10fcdc0c29253'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/s3-setlock/releases/download/v0.1.0/s3-setlock_0.1.0_darwin_amd64.tar.gz'
      sha256 'b9e8a4206d723a8d32df4c619922c71cccdcfaa4f944f35b546377991dc2d2e0'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/s3-setlock/releases/download/v0.1.0/s3-setlock_0.1.0_linux_arm64.tar.gz'
      sha256 'fe001917068231f47a1334a8d1b8e3c08b7f04cf4fabba91433b45c053c6dc61'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/s3-setlock/releases/download/v0.1.0/s3-setlock_0.1.0_linux_amd64.tar.gz'
      sha256 '33fc751e2858791c543b794c83f8decde273b7e4165f3891616424ea8e56a572'
    end
  end

  head do
    url 'https://github.com/mashiike/s3-setlock.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 's3-setlock'
  end
end
