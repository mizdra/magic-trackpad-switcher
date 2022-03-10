import Foundation

public func getTrackpadDeviceId() -> String {
    let homeDir = FileManager.default.homeDirectoryForCurrentUser
    let trackpadDeviceIdFile = homeDir.appendingPathComponent(".config/magic-trackpad-switcher/TRACKPAD_DEVICE_ID")
    guard let text = try? String(contentsOf: trackpadDeviceIdFile) else {
        print("Trackpad Device ID not found.")
        exit(EXIT_FAILURE)
    }
    return text.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
}
