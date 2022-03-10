import AppKit

@main
struct Entry {
    static func main() async throws {
        let trackpadDeviceId = getTrackpadDeviceId()

        let isPowerOn = try isPowerOn()
        let isPaired = try isPaired(id: trackpadDeviceId)
        let isConnected = try isConnected(id: trackpadDeviceId)

        if isBuiltInDisplayActive() && !isPowerOn {
            print("Waking up...")
            try setBluetooth(powerOn: true)
            if isConnected && !isConnected {
                try connect(id: trackpadDeviceId)
            } else if !isPaired {
                try pair(id: trackpadDeviceId)
            }
        } else if !isBuiltInDisplayActive() && isPowerOn {
            print("Sleeping...")
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
