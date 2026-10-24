class Teire < Formula
  desc "Keeps a machine's dotfiles in the shape that a repository declares"
  homepage "https://github.com/fabioueno/teire"
  url "https://github.com/fabioueno/teire/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "e56ba4df87e376f85ebd5fb6f7568d117c04d1fa3aff19b3cc3040d492655c85"
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
