class Ofsht < Formula
  desc "Command-line tool for managing Git worktrees with automation features"
  homepage "https://github.com/wadackel/ofsht"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/wadackel/ofsht/releases/download/v0.5.2/ofsht-aarch64-apple-darwin.tar.gz"
      sha256 "a1e48a34269adb1c644124a289688c54a3cfad9b6346366a8c81caf57a91166e"
    end

    on_intel do
      url "https://github.com/wadackel/ofsht/releases/download/v0.5.2/ofsht-x86_64-apple-darwin.tar.gz"
      sha256 "f29c6e623d70d7843024af62426009338a32dcda778e1d8d7426a47716bf1b54"
    end
  end

  def install
    bin.install "ofsht"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ofsht --version")
  end
end
