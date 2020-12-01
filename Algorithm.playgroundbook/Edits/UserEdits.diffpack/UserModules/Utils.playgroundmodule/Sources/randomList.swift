public func randomArray(elements: Int, range: ClosedRange<Int> = -100...100) -> [Int] {
    var array:[Int] = []
    for _ in 0..<elements {
        array.append(Int.random(in: range))
    }
    return array
}

