/*
 https://leetcode.com/problems/single-number/
 Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.
 
 Follow up: Could you implement a solution with a linear runtime complexity and without using extra memory?
 
 
 
 Example 1:
 
 Input: nums = [2,2,1]
 Output: 1
 Example 2:
 
 Input: nums = [4,1,2,1,2]
 Output: 4
 Example 3:
 
 Input: nums = [1]
 Output: 1
 
 
 Constraints:
 
 1 <= nums.length <= 3 * 104
 -3 * 104 <= nums[i] <= 3 * 104
 Each element in the array appears twice except for one element which appears only once.
 */
extension Solution {
    
    // Hash table
    // Time complexity: O(n)
    public static func _136_singleNumber(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else { return -1 }
        var dict: [Int: Int] = [:]
        // O(n)
        for num in nums {
            DebugLog("Current dict \(dict)")
            if let index = dict[num] {
                dict[num] = nil
            } else {
                dict[num] = 1
            }
        }
        
        // O(1)
        for item in dict {
            return item.key
        }
        return -1
    }
}
