class Ofsht < Formula
  desc "Command-line tool for managing Git worktrees with automation features"
  homepage "https://github.com/wadackel/ofsht"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/wadackel/ofsht/releases/download/v#{version}/ofsht-aarch64-apple-darwin.tar.gz",
          verified: "github.com/wadackel/ofsht/"
      sha256 "6583812ff88305f7b9d7fb388266400e2ca3eb177754e27c3707a3f604df4973"
    end

    on_intel do
      url "https://github.com/wadackel/ofsht/releases/download/v#{version}/ofsht-x86_64-apple-darwin.tar.gz",
          verified: "github.com/wadackel/ofsht/"
      sha256 "54592083885b68c7ec5f6b1052d05b0f907aa0eab4699fbb09a786d184bce63b"
    end
  end

  livecheck do
    url :stable
    strategy :github_latest
  end

  def install
    bin.install "ofsht"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ofsht --version")
  end
end
