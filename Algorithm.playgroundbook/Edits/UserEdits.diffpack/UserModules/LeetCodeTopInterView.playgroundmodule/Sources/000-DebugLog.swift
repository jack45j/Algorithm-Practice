public struct DebugLog {
    public init(_ message: Any) {    
        if LCInterview.enableDebugLog {
            print("[LCInterview] \(message)")
        }
    }
}
