class S3Setlock < Formula
  desc 'Distributed locking using Amazon S3'
  version '0.2.0'
  homepage 'https://github.com/mashiike/s3-setlock'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/s3-setlock/releases/download/v0.2.0/s3-setlock_0.2.0_darwin_arm64.tar.gz'
      sha256 'f6f18a2df0308513a7d833c8ae353154b2f6009938ac9476793ed03a1c155657'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/s3-setlock/releases/download/v0.2.0/s3-setlock_0.2.0_darwin_amd64.tar.gz'
      sha256 '48944af4afa3e8374f9d986d35dc42639be19a7b1221f92a175134d51e3fd7a7'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/s3-setlock/releases/download/v0.2.0/s3-setlock_0.2.0_linux_arm64.tar.gz'
      sha256 'a81ec57ebc87f51ccdd2754c07d28cc3cd131d0d9ab046e9c79530d9a05ce54f'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/s3-setlock/releases/download/v0.2.0/s3-setlock_0.2.0_linux_amd64.tar.gz'
      sha256 'b5be2e57c4bf67a0132efb8a25f768e3418b53784a4d4a5e076be8e4fc819aca'
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
