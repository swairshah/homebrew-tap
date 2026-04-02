class Agent < Formula
  desc "Context-aware coding agent with local observability dashboard"
  homepage "https://github.com/swairshah/contextagent"
  url "https://github.com/swairshah/contextagent.git",
      tag:      "v0.1.0",
      revision: "fa6565082ac9ed162b7b74f60c046dab8f61bdd2"
  license "MIT"

  depends_on xcode: ["15.0", :build]
  depends_on macos: :ventura

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox",
           "--arch", "arm64", "--arch", "x86_64"

    bin.install ".build/apple/Products/Release/agent"

    # Install prompts alongside the binary
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
    EOS
  end

  test do
    assert_match "Available models:", shell_output("#{bin}/agent -l")
  end
end
