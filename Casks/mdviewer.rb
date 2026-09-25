cask "mdviewer" do
  version "1.29"
  sha256 "de6de424f4f92307aa596c8d7b2d8506b7c7c3e686b77402734e28bd1ca02023"

  url "https://sandbox-cdn.skytechsport.cloud/web-content/updt/MDViewer-#{version}.dmg"
  name "MDViewer"
  desc "Native macOS Markdown viewer with Mermaid diagrams and Git history"
  homepage "https://getmd.ma"

  depends_on macos: ">= :ventura"

  app "MDViewer.app"

  zap trash: [
    "~/Library/Application Support/com.crocopliers.mdviewer",
    "~/Library/Preferences/com.crocopliers.mdviewer.plist",
    "~/Library/Caches/com.crocopliers.mdviewer",
  ]
end
