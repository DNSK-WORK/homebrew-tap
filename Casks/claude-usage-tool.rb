cask "claude-usage-tool" do
  version "0.15.1"
  sha256 "01f3e24055589c5a789efd4a7641b7885ea7eae134eee87780526a3915a2c3a5"

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
