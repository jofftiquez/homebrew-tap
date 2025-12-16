class Lsnote < Formula
  desc "ls with notes - list directory contents with file notes, emoji icons, and git integration"
  homepage "https://github.com/jofftiquez/lsnote"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jofftiquez/lsnote/releases/download/v1.2.0/lsnote-aarch64-apple-darwin.tar.gz"
      sha256 "3bbe9484ecc3c4dca131f21fac90417c344e1b72cc1a9fd4fd4417b230399ab7"
    end
    on_intel do
      url "https://github.com/jofftiquez/lsnote/releases/download/v1.2.0/lsnote-x86_64-apple-darwin.tar.gz"
      sha256 "f20c7b6ae3f52d7d5bb4025f6b3b76cdf6915f87d9cb0940666f2c17c8e13b71"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jofftiquez/lsnote/releases/download/v1.2.0/lsnote-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a27926d7eda086df6a1dd81bfa7a298204a3a4ddfd0a4fdd9574f1219ec21720"
    end
    on_intel do
      url "https://github.com/jofftiquez/lsnote/releases/download/v1.2.0/lsnote-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a2eab73957dec04f0bfc32359a5009e5d09b05c4ecc6bc6cce239df695caf020"
    end
  end

  def install
    bin.install "lsnote"
  end

  test do
    system "#{bin}/lsnote", "--version"
  end
end
