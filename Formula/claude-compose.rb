class ClaudeCompose < Formula
  desc "Multi-project launcher for Claude Code — merge MCP, permissions, skills, agents across projects"
  homepage "https://github.com/nersonSwift/claude-compose"
  url "https://github.com/nersonSwift/claude-compose/archive/refs/tags/v2.2.0.tar.gz"
  sha256 "ed57a5a25ce789e9d39436e45f1f821d7b6d3369e9b09192dad102dfc1ec2cea"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "claude-compose"
  end

  test do
    assert_match "claude-compose v#{version}", shell_output("#{bin}/claude-compose --version")
  end
end
