class Xbuild < Formula
  desc "Interactive xcodebuild wrapper with persistent configuration"
  homepage "https://github.com/ashidiqidimas/xbuild"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ashidiqidimas/xbuild/releases/download/v0.2.0/xbuild-0.2.0-arm64-apple-macosx.tar.gz"
      sha256 "8d0558810d0dbb93ebb306c5b4f8b36f6c136160019b87688204973cdf6d69ae"
    end
  end

  def install
    bin.install "xbuild-arm64" => "xbuild"
  end

  test do
    system "#{bin}/xbuild", "--help" rescue nil
  end
end
