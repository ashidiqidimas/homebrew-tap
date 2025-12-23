class Xbuild < Formula
  desc "Interactive xcodebuild wrapper with persistent configuration"
  homepage "https://github.com/ashidiqidimas/xbuild"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ashidiqidimas/xbuild/releases/download/v0.1.0/xbuild-0.1.0-arm64-apple-macosx.tar.gz"
      sha256 "e299ffbe53825faba6e538880673add837ce1922917bc427463b1ad88b371299"
    end
  end

  def install
    bin.install "xbuild-arm64" => "xbuild"
  end

  test do
    system "#{bin}/xbuild", "--help" rescue nil
  end
end
