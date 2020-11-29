public struct DebugLog {
    public init(_ message: Any) {    
        if SortAlgorithm.debugLog {
            print("[Sort] \(message)")
        }
    }
}
