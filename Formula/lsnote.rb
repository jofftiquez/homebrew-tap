class Lsnote < Formula
  desc "ls with notes - list directory contents with file notes, emoji icons, and git integration"
  homepage "https://github.com/jofftiquez/lsnote"
  version "1.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jofftiquez/lsnote/releases/download/v1.3.2/lsnote-aarch64-apple-darwin.tar.gz"
      sha256 "41a03b9a6f31b3cc4ff5a9dbc41568569c98c22f8e8f54d19952447abadd1bd3"
    end
    on_intel do
      url "https://github.com/jofftiquez/lsnote/releases/download/v1.3.2/lsnote-x86_64-apple-darwin.tar.gz"
      sha256 "11e25e7ed62a89cf7e2523ed9424fbc29b4ffab614be34dd2bb50c7a7227ace9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jofftiquez/lsnote/releases/download/v1.3.2/lsnote-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "90660778ae6b547f76adde6ce00b03fa20fbd2e7a68e129f8c6fd9050812869a"
    end
    on_intel do
      url "https://github.com/jofftiquez/lsnote/releases/download/v1.3.2/lsnote-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e2dee71d90aaf10f5d7d31fc526be28eecd4520ba2dbfbc722a09fbcf28478bd"
    end
  end

  def install
    bin.install "lsnote"
  end

  test do
    system "#{bin}/lsnote", "--version"
  end
end
