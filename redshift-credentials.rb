class RedshiftCredentials < Formula
  version '0.1.2'
  homepage 'https://github.com/mashiike/redshift-credentials'
  if OS.mac?
    url "https://github.com/mashiike/redshift-credentials/releases/download/v0.1.2/redshift-credentials_0.1.2_darwin_amd64.tar.gz"
    sha256 '2a0a570b905b8445f9915543950529670cd319604b7cd6a8ac57b001f56eb9c7'
  end
  if OS.linux?
    url "https://github.com/mashiike/redshift-credentials/releases/download/v0.1.2/redshift-credentials_0.1.2_linux_amd64.tar.gz"
    sha256 'b64b60205f92bf23c1d530a655f8a670a68798a008b97bf3ee86dbd8c2db44a9'
  end
  head 'https://github.com/mashiike/redshift-credentials.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'redshift-credentials'
  end
end
