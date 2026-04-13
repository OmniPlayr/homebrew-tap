class Omniplayr < Formula
  desc "OmniPlayr CLI"
  homepage "https://github.com/OmniPlayr/OmniPlayr-CLI"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OmniPlayr/OmniPlayr-CLI/releases/download/v0.1.0/omniplayr-macos-arm64"
      sha256 "e3b4857e66632650c635478cde358f6ac8c01dfdb84549961c568f7cb6fed1f5"
    else
      url "https://github.com/OmniPlayr/OmniPlayr-CLI/releases/download/v0.1.0/omniplayr-macos-x64"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    url "https://github.com/OmniPlayr/OmniPlayr-CLI/releases/download/v0.1.0/omniplayr-linux"
    sha256 "be607826596dc75df1561f2ef7ba6aa5b8a04f8645afa86d131a14fca9e1320b"
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
