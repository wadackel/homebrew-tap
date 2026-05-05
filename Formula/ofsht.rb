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
      url "https://github.com/wadackel/ofsht/releases/download/v0.8.0/ofsht-aarch64-apple-darwin.tar.gz"
      sha256 "e7ad348e5a5a976bb3dced247640ab1cc7542913b76a713bf37bfc999abfa440"
    end

    on_intel do
      url "https://github.com/wadackel/ofsht/releases/download/v0.8.0/ofsht-x86_64-apple-darwin.tar.gz"
      sha256 "734c30d73219d48da0f1d911c4f690b48057e6831bd776c890e5bb474665f7a7"
    end
  end

  def install
    bin.install "ofsht"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ofsht --version")
  end
end
