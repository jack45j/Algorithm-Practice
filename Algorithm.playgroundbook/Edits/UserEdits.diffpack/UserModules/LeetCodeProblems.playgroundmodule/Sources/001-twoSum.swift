extension Solution { 
    public static func _001_twoSum(_ nums: [Int], _ target: Int) -> [Int] {
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
    public static func _001_preferTwoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dic = [Int:Int]()
        
        for i in 0..<nums.count {
            DebugLog("Current i: \(i)")
            if let index = dic[target - nums[i]] {
                DebugLog("Current dict: \(dic)")
                DebugLog("Target(\(target)) - nums[i](\(nums[i]))")
                DebugLog("Found dic[target - nums[i]]: \(dic[target - nums[i]])")
                return [index,i]
            } else {
                dic[nums[i]] = i
                DebugLog("Current dic: \(dic)")
            }
        }
        return [0,0]
    }
}
