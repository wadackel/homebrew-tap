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
      url "https://github.com/wadackel/ofsht/releases/download/v0.7.0/ofsht-aarch64-apple-darwin.tar.gz"
      sha256 "a66f29fe4a20de043498c2d58b533a1980b7947646ecabc35a8e5a8c129c3539"
    end

    on_intel do
      url "https://github.com/wadackel/ofsht/releases/download/v0.7.0/ofsht-x86_64-apple-darwin.tar.gz"
      sha256 "84767700446446d6dcd849e3bfbb84e5d66aae0cf8225bfffa5656f03918f391"
    end
  end

  def install
    bin.install "ofsht"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ofsht --version")
  end
end
