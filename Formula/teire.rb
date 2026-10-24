class Teire < Formula
  desc "Keeps a machine's dotfiles in the shape that a repository declares"
  homepage "https://github.com/fabioueno/teire"
  url "https://github.com/fabioueno/teire/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "8eb2c702cf313f82e193252d0b562b2fc3bb5a12d559a5853928dbdd263505e6"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = "-X github.com/fabioueno/teire/internal/cli.version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags), "./cmd/teire"
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/teire version").strip
  end
end
