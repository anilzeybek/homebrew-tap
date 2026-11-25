class Agentbackup < Formula
  desc "Cross-harness AI coding agent conversation backup CLI"
  homepage "https://github.com/anilzeybek/agentbackup"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/anilzeybek/agentbackup/releases/download/v0.1.1/agentbackup-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "39c0a2c9b28856282c2f395aa193977e18212e24de9d57ee6cd23af921ca765c"
    end
    on_intel do
      url "https://github.com/anilzeybek/agentbackup/releases/download/v0.1.1/agentbackup-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "3b4f617bd68fd8b0d83f0c977cc1af5c427a6ecfd9b3916eed7362208d69332a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/anilzeybek/agentbackup/releases/download/v0.1.1/agentbackup-v0.1.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2fcbabcbf4903e50950a2ecce9958ae9280878b3d64f429b87c5e63a4479689c"
    end
    on_intel do
      url "https://github.com/anilzeybek/agentbackup/releases/download/v0.1.1/agentbackup-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4b57206fdde9621b7fc79c09bd92bfe41e25a716ffa3ea8e937cac79f6e9eaa4"
    end
  end

  def install
    bin.install "agentbackup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentbackup --version")
  end
end
