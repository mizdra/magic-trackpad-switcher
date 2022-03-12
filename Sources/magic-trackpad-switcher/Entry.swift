import AppKit

@main
struct Entry {
    static func main() async throws {
        let trackpadDeviceId = getTrackpadDeviceId()

        let isPowerOn = try isPowerOn()

        if isBuiltInDisplayActive() && !isPowerOn {
            print("Waking up...")
            try setBluetooth(powerOn: true)
            if !(try isPaired(id: trackpadDeviceId)) {
                try pair(id: trackpadDeviceId)
            }
            if !(try isConnected(id: trackpadDeviceId)) {
                try connect(id: trackpadDeviceId)
            }
        } else if !isBuiltInDisplayActive() && isPowerOn {
            print("Sleeping...")
            if try isPaired(id: trackpadDeviceId) {
                if !(try isConnected(id: trackpadDeviceId)) {
                    try connect(id: trackpadDeviceId)
                }
                try unpair(id: trackpadDeviceId)
            }
            try setBluetooth(powerOn: false)
            try sleepNow()
        }
    }
}
