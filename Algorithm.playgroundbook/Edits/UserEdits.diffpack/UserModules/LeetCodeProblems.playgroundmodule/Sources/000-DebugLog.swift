public struct DebugLog {
    public init(_ message: Any) {    
        if Solution.enableDebugLog {
            print("[Solution] \(message)")
        }
    }
}
