class ClaudeCompose < Formula
  desc "Multi-project launcher for Claude Code — merge MCP, permissions, skills across projects"
  homepage "https://github.com/nersonSwift/claude-compose"
  url "https://github.com/nersonSwift/claude-compose/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "c539cad575646f7580718e7f34c6acc21ce87eed44f4310fec0dbcf8c7ce0cd0"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "claude-compose"
  end

  test do
    assert_match "claude-compose v#{version}", shell_output("#{bin}/claude-compose --version")
  end
end
