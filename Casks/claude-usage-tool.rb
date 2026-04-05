cask "claude-usage-tool" do
  version "0.13.0"
  sha256 "aa85ff9625818066d958f3bfaea9e21581c2a0dd237773678bdff294c1941429"

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
