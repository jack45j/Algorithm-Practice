// https://github.com/shenyun2304/swift-algorithm-club-zhTW/tree/master/Merge%20Sort

import Utils
extension SortAlgorithm {
    public static func mergeSort(_ list: [Int]) -> [Int] {
        DebugLog("list: \(list)")
        guard list.count > 1 else { return list }
        
        let middleIndex = list.count / 2
        let leftArray = mergeSort(Array(list[0..<middleIndex]))
        let rightArray = mergeSort(Array(list[middleIndex..<list.count]))
        DebugLog("left: \(leftArray) right: \(rightArray)")
        return merge(leftPile: leftArray, rightPile: rightArray)
    }

    fileprivate static func merge(leftPile: [Int], rightPile: [Int]) -> [Int] {
        var leftIndex = 0
        var rightIndex = 0
        
        var orderedPile = [Int]()
        
        while leftIndex < leftPile.count && rightIndex < rightPile.count {
            if leftPile[leftIndex] < rightPile[rightIndex] {
                orderedPile.append(leftPile[leftIndex])
                leftIndex += 1
            } else if leftPile[leftIndex] > rightPile[rightIndex] {
                orderedPile.append(rightPile[rightIndex])
                rightIndex += 1
            } else {
                orderedPile.append(leftPile[leftIndex])
                leftIndex += 1
                orderedPile.append(rightPile[rightIndex])
                rightIndex += 1
            }
        }
        
        while leftIndex < leftPile.count {
            orderedPile.append(leftPile[leftIndex])
            leftIndex += 1
        }
        
        while rightIndex < rightPile.count {
            orderedPile.append(rightPile[rightIndex])
            rightIndex += 1
        }
        
        return orderedPile
    }
}
