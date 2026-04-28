class Omniplayr < Formula
  desc "OmniPlayr CLI"
  homepage "https://github.com/OmniPlayr/OmniPlayr-CLI"
  version "1.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OmniPlayr/OmniPlayr-CLI/releases/download/v1.1.0/omniplayr-macos-arm64"
      sha256 "cd31f73714859030c269e8a7e1c4ab50db831da55128edac6658a64b40335dd4"
    else
      url "https://github.com/OmniPlayr/OmniPlayr-CLI/releases/download/v1.1.0/omniplayr-macos-x64"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/OmniPlayr/OmniPlayr-CLI/releases/download/v1.1.0/omniplayr-linux-arm64"
      sha256 "SHA_LINUX_ARM"
    else
      url "https://github.com/OmniPlayr/OmniPlayr-CLI/releases/download/v1.1.0/omniplayr-linux"
      sha256 "SHA_LINUX"
    end
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
