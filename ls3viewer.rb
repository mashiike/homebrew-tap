class Ls3viewer < Formula
  version '0.1.0'
  homepage 'https://github.com/mashiike/ls3viewer'
  if OS.mac?
    url "https://github.com/mashiike/ls3viewer/releases/download/v0.1.0/ls3viewer_0.1.0_darwin_amd64.tar.gz"
    sha256 '987a40178d93367b727607dcd2dc3a81a232aa566e965b395c8a8df25b81a722'
  end
  if OS.linux?
    url "https://github.com/mashiike/ls3viewer/releases/download/v0.1.0/ls3viewer_0.1.0_linux_amd64.tar.gz"
    sha256 'c1fb682e11125c10f06a4dcc8402eaaa9a5809e105c2b4a863d738bf69e12013'
  end
  head 'https://github.com/mashiike/ls3viewer.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'ls3viewer'
  end
end
