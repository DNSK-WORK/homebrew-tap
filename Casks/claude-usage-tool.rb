cask "claude-usage-tool" do
  version "0.11.0"
  sha256 "1bd1f301c9e334a028e2ec519433e03abf12a5d9b46e8ca0f6fcc8ce702a63bc"

  url "https://github.com/DNSK-WORK/claude-usage-tool/releases/download/v#{version}/Claude.Usage.Tool-#{version}-arm64.dmg"
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
