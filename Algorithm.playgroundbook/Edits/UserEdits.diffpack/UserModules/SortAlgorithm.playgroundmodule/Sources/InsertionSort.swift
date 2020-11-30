extension SortAlgorithm {
    // FR: https://github.com/raywenderlich/swift-algorithm-club/tree/master/Insertion%20Sort
    // Step by Step.
    // | means the current index
    //    V start
    // [5 | 4  3  2  1]
    // compare index 1 -> value: 4 and index 0 -> value: 5 
    // 4 < 5 so index 1 should swap with index 0
    // index -= 1 currentIndex = 0
    // Next for loop index = 2
    //   start V
    // [4  5 | 3  2  1]
    // compare index 2 -> value: 3 and index 1 -> value: 5 
    // 3 < 5 so index 2 should swap with index 1
    //   start V
    // [4 | 3  5  2  1]
    // compare index 1 -> value: 3 and index 0 -> value: 3 
    // 3 < 4 so index 1 should swap with index 0
    // index -= 1 currentIndex = 0
    // Next for loop index = 3
    // .....
    public static func insertionSort(_ list: inout [Int], _ order: (Int, Int) -> Bool) -> [Int] {
        for index in 1..<list.count {
            var currentIndex = index
            DebugLog("CurrentIndex: \(currentIndex)(\(list[currentIndex]) compare (\(list[currentIndex - 1]))")
            DebugLog("CurrentList: \(list)")
            while currentIndex > 0 && order(list[currentIndex], list[currentIndex - 1]) {
                DebugLog("Compared and should swap two numbers")
                DebugLog("Before swap: \(list)")
                list.swapAt(currentIndex, currentIndex - 1)
                currentIndex -= 1
                DebugLog("After  swap: \(list)")
            }
        }
        return list
    }
    
    public static func insertionSortWithExtraSpace(_ list: inout [Int]) -> [Int] {
        var sortedList: [Int] = [list.first!]
        // i is current picked unsorted value
        for i in list.dropFirst() { 
            // j is current picked value in sortedList
            for (index, j) in sortedList.enumerated() {
                DebugLog("Current Sorted List: \(sortedList)")
                DebugLog("Compare: \(i) \(j)")
                if i < j {
                    DebugLog("unsortedVal(\(i)) < pickedVal in sortedList(\(j))")
                    DebugLog("Insert \(i) to index(\(index))")
                    sortedList.insert(i, at: index)
                    break
                } else if index == sortedList.count - 1 {
                    DebugLog("Insert unsortedVal(\(i)) to the last index")
                    sortedList.insert(i, at: sortedList.count)
                }
            }
        }
        
        return sortedList
    }
}
