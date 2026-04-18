class Omniplayr < Formula
  desc "OmniPlayr CLI"
  homepage "https://github.com/OmniPlayr/OmniPlayr-CLI"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OmniPlayr/OmniPlayr-CLI/releases/download/v1.0.0/omniplayr-macos-arm64"
      sha256 "c90181d4fe6b89d162965de74bb4df534ea066127b2e7300b32313640cb24f93"
    else
      url "https://github.com/OmniPlayr/OmniPlayr-CLI/releases/download/v1.0.0/omniplayr-macos-x64"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    url "https://github.com/OmniPlayr/OmniPlayr-CLI/releases/download/v1.0.0/omniplayr-linux"
    sha256 "b903d05d4b4570725f48ed2832afaa917e67bf7652fb06d300c7c96342f40c2c"
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
