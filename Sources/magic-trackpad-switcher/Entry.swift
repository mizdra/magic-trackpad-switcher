import AppKit

@main
struct Entry {
    static func main() async throws {
        let trackpadDeviceId = getTrackpadDeviceId()

        let isPaired = try isPaired(id: trackpadDeviceId)
        let isConnected = try isConnected(id: trackpadDeviceId)

        if isBuiltInDisplayActive() {
            try setBluetooth(powerOn: true)
            if isConnected {
                // noop
            } else if isPaired {
                try connect(id: trackpadDeviceId)
            } else {
                try pair(id: trackpadDeviceId)
            }
        } else {
            if isPaired {
                if !isConnected {
                    try connect(id: trackpadDeviceId)
                }
                try unpair(id: trackpadDeviceId)
            }
            try setBluetooth(powerOn: false)
            try sleepNow()
        }
    }
}
