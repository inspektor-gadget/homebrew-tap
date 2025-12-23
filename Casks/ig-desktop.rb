cask "ig-desktop" do
  version "0.3.2"
  sha256 "3e8717128f49f4f599a57bad347fecd34ec43bf152d3c781eca51d822fe914c6"

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
