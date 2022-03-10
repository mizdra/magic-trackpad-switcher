import AppKit

public func isBuiltInDisplayActive() -> Bool {
    let activeDisplayNames = NSScreen.screens.map { $0.localizedName }
    let result = activeDisplayNames.contains { $0.hasPrefix("Built-in ") }
    return result
}
