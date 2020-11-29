public struct DebugLog {
    public init(_ message: Any) {    
        if Solution.debugLog {
            print("[Solution] \(message)")
        }
    }
}
