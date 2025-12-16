class Lsnote < Formula
  desc "ls with notes - list directory contents with file notes, emoji icons, and git integration"
  homepage "https://github.com/jofftiquez/lsnote"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jofftiquez/lsnote/releases/download/v1.3.0/lsnote-aarch64-apple-darwin.tar.gz"
      sha256 "a16db2749b5194ef746ae2e1d42f7e7883be1bdd08c18cba6b3a088f7681a459"
    end
    on_intel do
      url "https://github.com/jofftiquez/lsnote/releases/download/v1.3.0/lsnote-x86_64-apple-darwin.tar.gz"
      sha256 "d9a9a423593437d10a33bff959572ae75e22ded455b106b8c7671c928936d91b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jofftiquez/lsnote/releases/download/v1.3.0/lsnote-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "44c9b95bc0c2b1b03722ea4abbef23e65fc353c2881644739219d50e5db82943"
    end
    on_intel do
      url "https://github.com/jofftiquez/lsnote/releases/download/v1.3.0/lsnote-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b82f8bd98263087c7daad0e8dbe6dd8bfe2d263fce569963d07117befe6a3563"
    end
  end

  def install
    bin.install "lsnote"
  end

  test do
    system "#{bin}/lsnote", "--version"
  end
end
