extension SortAlgorithm {
    public static func insertionSort(_ list: inout [Int]) -> [Int] {
        
        
        return []
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
