class Agentbackup < Formula
  desc "Cross-harness AI coding agent conversation backup CLI"
  homepage "https://github.com/anilzeybek/agentbackup"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anilzeybek/agentbackup/releases/download/v0.1.0/agentbackup-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "8199fbe0191de78ba08308cdd5792bf0c20ad27c8ea0ade1b1ef8924b2b872e9"
    end
    on_intel do
      url "https://github.com/anilzeybek/agentbackup/releases/download/v0.1.0/agentbackup-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "cfc1733314a9ed0b8acb96e42344f29656b694e44461417d743f8b5345c66845"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anilzeybek/agentbackup/releases/download/v0.1.0/agentbackup-v0.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "caf6cf3b59a3aacfb674e2db672e151e1a07f4a80568035f3ae5d2e4c5982623"
    end
    on_intel do
      url "https://github.com/anilzeybek/agentbackup/releases/download/v0.1.0/agentbackup-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b1b91e3f3605523d472de76b2d8420a73e4cb993ba6d09b85e6c869b79bca0d5"
    end
  end

  def install
    bin.install "agentbackup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentbackup --version")
  end
end
