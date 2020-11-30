
extension SortAlgorithm {
    // FR: https://github.com/raywenderlich/swift-algorithm-club/tree/master/Bubble%20Sort
    public static func bubbleSort(_ list: inout [Int]) -> [Int] {
        for left in 0..<list.count {
            // list.count - left的原因
            // 因為Bubble sort每次排序完都會將最大的數移至最後一位
            // 所以最後一個比較可以省略
            // 簡而言之Outer跑過n次 就會有最後n個位為已排序完成
            for right in 1..<list.count-left {
                DebugLog("Outer: \(left), Inner: \(right)")
                if list[right-1] > list[right] {
                    list.swapAt(right-1, right)
                }
                DebugLog(list)
            }
        }
        return list
    }
}
