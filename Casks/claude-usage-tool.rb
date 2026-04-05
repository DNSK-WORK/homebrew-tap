cask "claude-usage-tool" do
  version "0.14.0"
  sha256 "4efc5a4d019c4ce8b24eb64988f0216674dc2d15b4d73829a183fe0184f60d1a"

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
