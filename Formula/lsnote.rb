class Lsnote < Formula
  desc "ls with notes - list directory contents with file notes, emoji icons, and git integration"
  homepage "https://github.com/jofftiquez/lsnote"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jofftiquez/lsnote/releases/download/v1.1.0/lsnote-aarch64-apple-darwin.tar.gz"
      sha256 "134c5019e19cad6992c1567a938c458eadc17b4bf4ce56e0e98dacff1722f297"
    end
    on_intel do
      url "https://github.com/jofftiquez/lsnote/releases/download/v1.1.0/lsnote-x86_64-apple-darwin.tar.gz"
      sha256 "ba1b3bff2485e1a1ae9df6246dac9bf5562961eb605c7dcfe027b12f90d80cce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jofftiquez/lsnote/releases/download/v1.1.0/lsnote-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "42ecd7628539670fe9bf5cf39394130677ad12d0d7f0030809dfc9a5c90024f6"
    end
    on_intel do
      url "https://github.com/jofftiquez/lsnote/releases/download/v1.1.0/lsnote-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "48eae7fa8da59c48535f5ecaa34e1b7f4f7fd4fbbf0aac050f4d75e00788820a"
    end
  end

  def install
    bin.install "lsnote"
  end

  test do
    system "#{bin}/lsnote", "--version"
  end
end
