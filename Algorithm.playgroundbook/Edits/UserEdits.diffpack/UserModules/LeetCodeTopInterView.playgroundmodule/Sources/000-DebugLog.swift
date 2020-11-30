public struct DebugLog {
    public init(_ message: Any) {    
        if LCInterview.debugLog {
            print("[Sort] \(message)")
        }
    }
}
