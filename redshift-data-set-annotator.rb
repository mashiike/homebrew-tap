class RedshiftDataSetAnnotator < Formula
  desc 'Annotator for QuickSight datasets with Redshift as the data source'
  version '0.0.1'
  homepage 'https://github.com/mashiike/redshift-data-set-annotator'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/mashiike/redshift-data-set-annotator/releases/download/v0.0.1/redshift-data-set-annotator_0.0.1_darwin_arm64.tar.gz'
      sha256 '43a76ca784bd446bbfbc1a7c1be1291908675497544f4b4f5f94fc57db5e5a0c'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/redshift-data-set-annotator/releases/download/v0.0.1/redshift-data-set-annotator_0.0.1_darwin_amd64.tar.gz'
      sha256 'ff1d816a783daf70e780966feb99f7fceb6f628c6bc92bc7a3f1651d0cd707f8'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/mashiike/redshift-data-set-annotator/releases/download/v0.0.1/redshift-data-set-annotator_0.0.1_linux_arm64.tar.gz'
      sha256 '6bc7fa69a484fae4c1e45d89e94bab9df48a1ece699db4fdbec42f8220bb49b2'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/mashiike/redshift-data-set-annotator/releases/download/v0.0.1/redshift-data-set-annotator_0.0.1_linux_amd64.tar.gz'
      sha256 'df38a0593235cc348475a3cf306c0cb4036d6abb2460ca078ec6109c9d8103bf'
    end
  end

  head do
    url 'https://github.com/mashiike/redshift-data-set-annotator.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'redshift-data-set-annotator'
  end
end
