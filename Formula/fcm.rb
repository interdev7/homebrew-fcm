class Fcm < Formula
  desc "Production-ready Firebase Cloud Messaging CLI for Go"
  homepage "https://github.com/interdev7/fcm-cli"
  version "v1.1.1"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/interdev7/fcm-cli/releases/download/v1.1.1/fcm-darwin-arm64"
      sha256 "459cda14389894220aca88eccfc1b563d4b8d397343d2dbccb15d6eb13317ebc"
    else
      url "https://github.com/interdev7/fcm-cli/releases/download/v1.1.1/fcm-darwin-amd64"
      sha256 "8973c0c267fdefceb6fc254a6978daed6e9ca43d6f90277d6688f02131fd5793"
    end
  end

  def install
    bin.install Dir["fcm-*"].first => "fcm"
  end

  test do
    system "#{bin}/fcm", "-v"
  end
end
