import ShellOut

public func sleepNow() throws {
    try shellOut(to: "pmset", arguments: ["sleepnow"])
}
