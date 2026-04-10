class Omniplayr < Formula
  desc "OmniPlayr CLI"
  homepage "https://github.com/OmniPlayr/OmniPlayr-CLI"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OmniPlayr/OmniPlayr-CLI/releases/download/v0.0.1/omniplayr-macos-arm64"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/OmniPlayr/OmniPlayr-CLI/releases/download/v0.0.1/omniplayr-macos-x64"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    url "https://github.com/OmniPlayr/OmniPlayr-CLI/releases/download/v0.0.1/omniplayr-linux"
    sha256 "PLACEHOLDER"
  end

  def install
    binary_name = if OS.mac? && Hardware::CPU.arm?
      "omniplayr-macos-arm64"
    elsif OS.mac?
      "omniplayr-macos-x64"
    else
      "omniplayr-linux"
    end

    bin.install binary_name => "omniplayr"
  end
end
