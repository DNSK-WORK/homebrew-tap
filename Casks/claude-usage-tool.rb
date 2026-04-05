cask "claude-usage-tool" do
  version "0.15.0"
  sha256 "a5a122cbdf5c53b1e6c201ea03bddf8764771307c49fcb7dcd2e04cd14179a53"

  url "https://github.com/DNSK-WORK/claude-usage-tool/releases/download/v#{version}/Claude-Usage-Tool-#{version}-arm64.dmg"
  name "Claude Usage Tool"
  desc "macOS menu bar app to monitor Claude Max/Pro subscription usage and API costs"
  homepage "https://github.com/DNSK-WORK/claude-usage-tool"

  app "Claude Usage Tool.app"

  zap trash: [
    "~/Library/Application Support/claude-usage-tool",
    "~/Library/Preferences/com.claude-usage-tool.plist",
    "~/Library/Saved Application State/com.claude-usage-tool.savedState",
  ]
end
