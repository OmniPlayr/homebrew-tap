class Omniplayr < Formula
  desc "OmniPlayr CLI"
  homepage "https://github.com/your-org/omniplayr-cli"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/your-org/omniplayr-cli/releases/download/v1.0.0/omniplayr-macos-arm64"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/your-org/omniplayr-cli/releases/download/v1.0.0/omniplayr-macos-x64"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    url "https://github.com/your-org/omniplayr-cli/releases/download/v1.0.0/omniplayr-linux"
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
