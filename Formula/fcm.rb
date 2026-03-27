class Fcm < Formula
  desc "Production-ready Firebase Cloud Messaging CLI for Go"
  homepage "https://github.com/interdev7/fcm-cli"
  version "v1.0.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/interdev7/fcm-cli/releases/download/v1.0.0/fcm-darwin-arm64"
      sha256 "f0dec4f195203e1e90c50cc884d7707a33adb06439d870a5cdf44c64a80c4ac2"
    else
      url "https://github.com/interdev7/fcm-cli/releases/download/v1.0.0/fcm-darwin-amd64"
      sha256 "2c40f31b8c54b49120fe6568253cea8a0021103397a420934505a1ed2ba5b152"
    end
  end

  def install
    bin.install Dir["fcm-*"].first => "fcm"
  end

  test do
    system "#{bin}/fcm", "-v"
  end
end
