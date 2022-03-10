import IOBluetooth
import ShellOut

public func isPaired(id: String) throws -> Bool {
    let result = try shellOut(to: "blueutil", arguments: ["--paired"])
    return result.contains(id)
}

public func isConnected(id: String) throws -> Bool {
    let result = try shellOut(to: "blueutil", arguments: ["--is-connected", id])
    return result == "1"
}

public func pair(id: String) throws {
    try shellOut(to: "blueutil", arguments: ["--pair", id])
}

public func unpair(id: String) throws {
    try shellOut(to: "blueutil", arguments: ["--unpair", id])
}

public func connect(id: String) throws {
    try shellOut(to: "blueutil", arguments: ["--connect", id])
}

public func isPowerOn() throws -> Bool {
    let result = try shellOut(to: "blueutil", arguments: ["--power"])
    return result == "1"
}

public func setBluetooth(powerOn: Bool) throws {
    try shellOut(to: "blueutil", arguments: ["--power", powerOn ? "1" : "0"])
}
