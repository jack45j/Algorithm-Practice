import Foundation
public struct Time {
    static private var startTime: TimeInterval?
    static private var endTime: TimeInterval?
    
    static public func start() {
        startTime = Date().timeIntervalSince1970
    }
    
    static public func stop() {
        endTime = Date().timeIntervalSince1970
        guard let startTime = startTime,
              let endTime = endTime else {
            print("Should call Time.start() first.")
            return
        }
        print("Excute time: \(Int((endTime - startTime)*1000))ms")
    }
}
