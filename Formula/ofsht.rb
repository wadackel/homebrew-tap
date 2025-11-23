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
      url "https://github.com/wadackel/ofsht/releases/download/v0.1.7/ofsht-aarch64-apple-darwin.tar.gz"
      sha256 "6aba46d701affccb0befcfc46879f85db4e952948fd6dc64b3654c09711f9880"
    end

    on_intel do
      url "https://github.com/wadackel/ofsht/releases/download/v0.1.7/ofsht-x86_64-apple-darwin.tar.gz"
      sha256 "a965718f03195b2d16b90ca654a48d3f225a27808701528c419a748f63233977"
    end
  end

  def install
    bin.install "ofsht"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ofsht --version")
  end
end
