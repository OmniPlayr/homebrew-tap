class Omniplayr < Formula
  desc "OmniPlayr CLI"
  homepage "https://github.com/OmniPlayr/OmniPlayr-CLI"
  version "1.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OmniPlayr/OmniPlayr-CLI/releases/download/v1.2.2/omniplayr-macos-arm64"
      sha256 "cd31f73714859030c269e8a7e1c4ab50db831da55128edac6658a64b40335dd4"
    else
      url "https://github.com/OmniPlayr/OmniPlayr-CLI/releases/download/v1.2.1/omniplayr-macos-x64"
      sha256 "REPLACE_ME"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/OmniPlayr/OmniPlayr-CLI/releases/download/v1.2.2/omniplayr-linux-arm64"
      sha256 "1b929881138c94ead470f15c22068a0d1b1d8dcce18a4d2e772cb4e2210d3b09"
    else
      url "https://github.com/OmniPlayr/OmniPlayr-CLI/releases/download/v1.2.1/omniplayr-linux"
      sha256 "f777e7d97cdf700b1c011e649147ab0f682739b74dc661a7c19281bc0f43f4db"
    end
  end

  def install
    binary_name =
      if OS.mac? && Hardware::CPU.arm?
        "omniplayr-macos-arm64"
      elsif OS.mac?
        "omniplayr-macos-x64"
      elsif Hardware::CPU.arm?
        "omniplayr-linux-arm64"
      else
        "omniplayr-linux"
      end

    bin.install binary_name => "omniplayr"
  end
end
