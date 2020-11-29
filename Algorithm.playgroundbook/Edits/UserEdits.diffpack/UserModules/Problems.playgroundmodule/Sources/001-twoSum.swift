extension Solution { 
    public func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for fir in 0..<nums.count {
            for sec in fir+1..<nums.count {
            if nums[fir] + nums[sec] == target { return [fir, sec] }
        }
    }
    return []
    }
}

//  Hash table
extension Solution {
    func preferTwoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var result = [Int](repeatElement(0, count: 2))
        var map = [Int: Int]()
        
        for i in 0..<nums.count {
            if map.keys.contains(target - nums[i]) {
                result[1] = i
                result[0] = map[target - nums[i]]!
                return result
            }
            map[nums[i]] = i
        }
        
        return result
    }
}
