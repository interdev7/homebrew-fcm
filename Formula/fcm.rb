class Fcm < Formula
  desc "Production-ready Firebase Cloud Messaging CLI for Go"
  homepage "https://github.com/interdev7/fcm-cli"
  version "v1.1.2"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/interdev7/fcm-cli/releases/download/v1.1.2/fcm-darwin-arm64"
      sha256 "4db8dbfaf69baa26980a10048b39063c8ef4ba6c3becbdddcd77fe60698498cb"
    else
      url "https://github.com/interdev7/fcm-cli/releases/download/v1.1.2/fcm-darwin-amd64"
      sha256 "2333f89dc5fc224dc29055e055d086cb610eb21b8b2ef4683ab6e0d01ff65cfd"
    end
  end

  def install
    bin.install Dir["fcm-*"].first => "fcm"
  end

  test do
    system "#{bin}/fcm", "-v"
  end
end
