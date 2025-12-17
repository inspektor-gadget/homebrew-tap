# Inspektor Gadget Homebrew Tap

Homebrew tap for [Inspektor Gadget Desktop](https://github.com/inspektor-gadget/ig-desktop).

## Installation

```bash
brew tap inspektor-gadget/tap
brew install --cask ig-desktop
```

Or install directly:

```bash
brew install --cask inspektor-gadget/tap/ig-desktop
```

## Important: Unsigned App

This app is not code-signed. macOS Gatekeeper will block it by default when you first try to open it.

### To bypass Gatekeeper

**Option 1: Right-click to open**
1. Right-click (or Control-click) on "Inspektor Gadget Desktop" in Applications
2. Select "Open" from the context menu
3. Click "Open" in the dialog that appears

**Option 2: Remove quarantine attribute**
```bash
xattr -dr com.apple.quarantine "/Applications/Inspektor Gadget Desktop.app"
```

## Upgrade

```bash
brew upgrade --cask ig-desktop
```

## Uninstall

```bash
brew uninstall --cask ig-desktop
```

## About Inspektor Gadget

[Inspektor Gadget](https://inspektor-gadget.io/) is a collection of tools (gadgets) to debug and inspect Kubernetes resources and applications using eBPF. This desktop application provides a graphical interface for running gadgets on Kubernetes clusters or local Docker environments.

## Links

- [Inspektor Gadget Desktop Repository](https://github.com/inspektor-gadget/ig-desktop)
- [Inspektor Gadget Website](https://inspektor-gadget.io/)
- [Inspektor Gadget Documentation](https://inspektor-gadget.io/docs/)
