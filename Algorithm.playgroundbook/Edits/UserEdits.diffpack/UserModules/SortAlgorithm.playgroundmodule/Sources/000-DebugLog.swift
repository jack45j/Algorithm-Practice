public struct DebugLog {
    public init(_ message: Any) {    
        if SortAlgorithm.enableDebugLog {
            print("[Sort] \(message)")
        }
    }
}
