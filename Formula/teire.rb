class Teire < Formula
  desc "Keeps a machine's dotfiles in the shape that a repository declares"
  homepage "https://github.com/fabioueno/teire"
  url "https://github.com/fabioueno/teire/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "0773e82bfe3e78d477ea6e90e006e75fa8745f6dd6e6806c175561d2064234f9"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X github.com/fabioueno/teire/internal/cli.version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags), "./cmd/teire"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/teire version").strip
  end
end
