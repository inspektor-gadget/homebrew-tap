cask "ig-desktop" do
  version "0.3.0"
  sha256 "cf7215fc52c937ad2da4d92dd70010c9fa9af6692ee45f038d5aa139af1ca2db"

  url "https://github.com/inspektor-gadget/ig-desktop/releases/download/v#{version}/ig-desktop-macos.app.zip"
  name "Inspektor Gadget Desktop"
  desc "Desktop application for Inspektor Gadget - eBPF-based debugging and observability"
  homepage "https://inspektor-gadget.io/"

  depends_on macos: ">= :catalina"

  app "ig-desktop.app", target: "Inspektor Gadget Desktop.app"

  caveats <<~EOS
    This app is not signed. macOS Gatekeeper will block it by default.

    To open the app for the first time, either:
    1. Right-click the app → Open → click "Open" in the dialog
    2. Or run: xattr -dr com.apple.quarantine "/Applications/Inspektor Gadget Desktop.app"
  EOS
end
