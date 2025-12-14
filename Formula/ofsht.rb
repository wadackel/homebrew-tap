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
      url "https://github.com/wadackel/ofsht/releases/download/v0.2.0/ofsht-aarch64-apple-darwin.tar.gz"
      sha256 "1607fc380701dbb11157fbcbc9ca09ef12c56b32ce734bac087df3a3f1582ab7"
    end

    on_intel do
      url "https://github.com/wadackel/ofsht/releases/download/v0.2.0/ofsht-x86_64-apple-darwin.tar.gz"
      sha256 "7a299d54fa0116d3a6e433fb179914baf7d20554f3c2dc2740036a34ec91eee8"
    end
  end

  def install
    bin.install "ofsht"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ofsht --version")
  end
end
