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
      url "https://github.com/wadackel/ofsht/releases/download/v0.6.2/ofsht-aarch64-apple-darwin.tar.gz"
      sha256 "c7351c4cfc9ccfa8e9dfab6cbfb8febb0315b8b803456e9bd244b7c8086ee830"
    end

    on_intel do
      url "https://github.com/wadackel/ofsht/releases/download/v0.6.2/ofsht-x86_64-apple-darwin.tar.gz"
      sha256 "ab418778663f06bb469d0e8de469caa9d59d6283f5ad862f500c11e370cef92e"
    end
  end

  def install
    bin.install "ofsht"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ofsht --version")
  end
end
