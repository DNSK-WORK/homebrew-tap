cask "claude-usage-tool" do
  version "0.12.0"
  sha256 "74dcb08a858a15ad247abff765eb1034ee3297bd80ab2d82e9f707c49e7ac18a"

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
