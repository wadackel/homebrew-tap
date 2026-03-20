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
      url "https://github.com/wadackel/ofsht/releases/download/v0.5.0/ofsht-aarch64-apple-darwin.tar.gz"
      sha256 "b976ddd1813e276dec071cba312c5d0e55a098afbfd7f2ed9d8a43f69c5cbb8b"
    end

    on_intel do
      url "https://github.com/wadackel/ofsht/releases/download/v0.5.0/ofsht-x86_64-apple-darwin.tar.gz"
      sha256 "f5f0c7212b24601261cc0f0d1232f58d775064cd378ff3a15066945e9e321cf0"
    end
  end

  def install
    bin.install "ofsht"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ofsht --version")
  end
end
