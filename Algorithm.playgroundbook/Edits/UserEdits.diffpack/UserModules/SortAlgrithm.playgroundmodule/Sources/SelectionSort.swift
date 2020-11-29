extension SortAlgorithm {
    public enum SelectionSortDirection {
        case Large
        case Small
    }
    
    public func selectionSort(_ list: inout [Int], by dir: SelectionSortDirection = .Small) -> [Int] {
        for left in 0..<list.count {
            var smallestOrLargest = dir == .Small ? left : list.count-left-1
            switch dir {
            case .Small:
                for right in left..<list.count {
                    if list[right] < list[smallestOrLargest] { smallestOrLargest = right }
                    print("Outer: \(left), Inner: \(right), Compare: (\(list[right]), \(list[smallestOrLargest])), Smallest: \(list[smallestOrLargest])")
                }
                list.swapAt(smallestOrLargest, left)
            case .Large:
                for right in 0..<list.count-left {
                    if list[right] > list[smallestOrLargest] { smallestOrLargest = right }
                    print("Outer: \(left), Inner: \(right), Compare: (\(list[right]), \(list[smallestOrLargest])), Largest: \(list[smallestOrLargest])")
                    
                }
                list.swapAt(smallestOrLargest, list.count-left-1)
                
            }
            print(list)
        }
        return list
    }
}