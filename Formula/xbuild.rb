class Xbuild < Formula
  desc "Interactive xcodebuild wrapper with persistent configuration"
  homepage "https://github.com/ashidiqidimas/xbuild"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ashidiqidimas/xbuild/releases/download/v0.4.0/xbuild-0.4.0-arm64-apple-macosx.tar.gz"
      sha256 "b58631f40ab8b8e9d9c27a0d085fd4d2733ee97bd2eed7b0dc2a4456772ddac6"
    end
  end

  def install
    bin.install "xbuild-arm64" => "xbuild"
  end

  test do
    system "#{bin}/xbuild", "--help" rescue nil
  end
end
