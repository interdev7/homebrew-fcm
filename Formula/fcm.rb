class Fcm < Formula
  desc "Production-ready Firebase Cloud Messaging CLI for Go"
  homepage "https://github.com/interdev7/fcm-cli"
  version "v1.2.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/interdev7/fcm-cli/releases/download/v1.2.0/fcm-darwin-arm64"
      sha256 "9c2f70756c8cbc845caa5686720e1f875307e243534facdf1c0f0a7d29466a7b"
    else
      url "https://github.com/interdev7/fcm-cli/releases/download/v1.2.0/fcm-darwin-amd64"
      sha256 "bcd8218451df635cc8ee5e00484e0104f6365107af1dba4f186e9698e1ef6ff2"
    end
  end

  def install
    bin.install Dir["fcm-*"].first => "fcm"
  end

  test do
    system "#{bin}/fcm", "-v"
  end
end
