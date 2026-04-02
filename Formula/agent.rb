class Agent < Formula
  desc "Context-aware coding agent with local observability dashboard"
  homepage "https://github.com/swairshah/contextagent"
  version "0.1.0"
  license "MIT"

  @@token = ENV["HOMEBREW_GITHUB_API_TOKEN"]

  if @@token
    url "https://#{@@token}@github.com/swairshah/contextagent/archive/refs/tags/v0.1.0.tar.gz"
  else
    url "https://github.com/swairshah/contextagent/archive/refs/tags/v0.1.0.tar.gz"
  end

  depends_on xcode: ["15.0", :build]
  depends_on macos: :ventura

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/agent"
    (share/"contextagent/prompts").install Dir["prompts/*.md"]
  end

  def caveats
    <<~EOS
      Private repo — requires HOMEBREW_GITHUB_API_TOKEN:
        export HOMEBREW_GITHUB_API_TOKEN=$(gh auth token)

      Set your OpenRouter API key in ~/.env:
        OPENROUTER_API_KEY=your_key_here

      Usage:
        agent --context -C /path/to/project
        agent -p "Summarize this project" -m anthropic/claude-haiku-4-5
        agent -d                              # launch dashboard
    EOS
  end

  test do
    assert_match "Available models:", shell_output("#{bin}/agent -l")
  end
end
