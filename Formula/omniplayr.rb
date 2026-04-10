class Omniplayr < Formula
  desc "OmniPlayr CLI"
  homepage "https://github.com/OmniPlayr/OmniPlayr-CLI"
  version "0.0.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OmniPlayr/OmniPlayr-CLI/releases/download/v0.0.10/omniplayr-macos-arm64"
      sha256 "b6785b17a39f7b9a3606689c657b500bdc17efe5fdf4872e5a095bdc48e38e0b"
    else
      url "https://github.com/OmniPlayr/OmniPlayr-CLI/releases/download/v0.0.10/omniplayr-macos-x64"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    url "https://github.com/OmniPlayr/OmniPlayr-CLI/releases/download/v0.0.10/omniplayr-linux"
    sha256 "bb248bde1f01f3a1e50563dfcd4b972eab7ce038d660c285125bc53404b33465"
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
