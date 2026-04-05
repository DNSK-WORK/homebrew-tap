cask "claude-usage-tool" do
  version "0.15.2"
  sha256 "1ede25bfab76d171fb082c30a3566180c8adb9af5f622b7d8f56ac60a38a6fb8"

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
