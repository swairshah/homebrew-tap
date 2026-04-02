class Agent < Formula
  desc "Context-aware coding agent with local observability dashboard"
  homepage "https://github.com/swairshah/contextagent"
  version "0.1.0"
  license "MIT"

  url "https://github.com/swairshah/contextagent/releases/download/v0.1.0/agent-0.1.0-macos-universal.tar.gz",
      headers: ["Authorization: Bearer #{ENV.fetch("HOMEBREW_GITHUB_API_TOKEN", "")}"]
  sha256 "44d09f545ef53b679902f54ffa612ba0e63d08bf05721659ced951da7dc88f5a"

  depends_on macos: :ventura

  def install
    bin.install "agent"
    (share/"contextagent/prompts").install Dir["prompts/*.md"]
  end

  def caveats
    <<~EOS
      Set your OpenRouter API key in ~/.env:
        OPENROUTER_API_KEY=your_key_here

      Optional Braintrust tracing:
        BRAINTRUST_API_KEY=your_key_here

      Usage:
        agent --context -C /path/to/project
        agent -p "Summarize this project" -m anthropic/claude-haiku-4-5
        agent -d                              # launch dashboard

      Prompts installed to:
        #{share}/contextagent/prompts/

      Note: this is a private repo formula.
      Set HOMEBREW_GITHUB_API_TOKEN to install:
        export HOMEBREW_GITHUB_API_TOKEN=$(gh auth token)
    EOS
  end

  test do
    assert_match "Available models:", shell_output("#{bin}/agent -l")
  end
end
