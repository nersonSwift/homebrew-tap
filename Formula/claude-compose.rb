class ClaudeCompose < Formula
  desc "Multi-project launcher for Claude Code — merge MCP, permissions, skills across projects"
  homepage "https://github.com/nersonSwift/claude-compose"
  url "https://github.com/nersonSwift/claude-compose/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "111c29584f1383e7573a9cc82eb52ba45eda7ea5208e11945e4dd580592b8ede"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "claude-compose"
  end

  test do
    assert_match "claude-compose v#{version}", shell_output("#{bin}/claude-compose --version")
  end
end
