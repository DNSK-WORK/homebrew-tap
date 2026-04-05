cask "claude-usage-tool" do
  version "0.13.0"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

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
