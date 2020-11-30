public func randomArray(elements: Int) -> [Int] {
    var array:[Int] = []
    for _ in 0..<elements {
        array.append(Int.random(in: -100...100))
    }
    return array
}
