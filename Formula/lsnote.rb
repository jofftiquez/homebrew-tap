class Lsnote < Formula
  desc "ls with notes - list directory contents with file notes, emoji icons, and git integration"
  homepage "https://github.com/jofftiquez/lsnote"
  version "1.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jofftiquez/lsnote/releases/download/v1.3.1/lsnote-aarch64-apple-darwin.tar.gz"
      sha256 "d469f7f8dfcdd33fc20864ff3b586b15d7eaa144d1d13787769bc564bf1344fc"
    end
    on_intel do
      url "https://github.com/jofftiquez/lsnote/releases/download/v1.3.1/lsnote-x86_64-apple-darwin.tar.gz"
      sha256 "d4a41553eb0375cd0b8b6baaae695342d48de6137337a5ac51df97b02c1d1884"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jofftiquez/lsnote/releases/download/v1.3.1/lsnote-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cc7e33fbb5f05bb3cbfbf85175d68b60c40740c6e1f08ccf4984240d26ce1467"
    end
    on_intel do
      url "https://github.com/jofftiquez/lsnote/releases/download/v1.3.1/lsnote-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bcb0aa269cab3d66031f41e0632a8788ab48d8eaca7dd7197c3bc3075b4bb202"
    end
  end

  def install
    bin.install "lsnote"
  end

  test do
    system "#{bin}/lsnote", "--version"
  end
end
