class Xbuild < Formula
  desc "Interactive xcodebuild wrapper with persistent configuration"
  homepage "https://github.com/ashidiqidimas/xbuild"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ashidiqidimas/xbuild/releases/download/v0.3.0/xbuild-0.3.0-arm64-apple-macosx.tar.gz"
      sha256 "ff951dccdf5ad2b9004fa07bb3544a6afe3beb4982077d8772eb60c3dc0d6407"
    end
  end

  def install
    bin.install "xbuild-arm64" => "xbuild"
  end

  test do
    system "#{bin}/xbuild", "--help" rescue nil
  end
end
