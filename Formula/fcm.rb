class Fcm < Formula
  desc "Production-ready Firebase Cloud Messaging CLI for Go"
  homepage "https://github.com/interdev7/fcm-cli"
  version "v1.0.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/interdev7/fcm-cli/releases/download/v1.0.0/fcm-darwin-arm64"
      sha256 "6d6611def2baa55e20ccbc061019cad0b94d66aa1ef5a9996fda74d19c376bb6"
    else
      url "https://github.com/interdev7/fcm-cli/releases/download/v1.0.0/fcm-darwin-amd64"
      sha256 "c01e6643ae172df1bb34031dbf5007bf597f21f378744f865c5e2bb9ff385cfc"
    end
  end

  def install
    bin.install Dir["fcm-*"].first => "fcm"
  end

  test do
    system "#{bin}/fcm", "-v"
  end
end
