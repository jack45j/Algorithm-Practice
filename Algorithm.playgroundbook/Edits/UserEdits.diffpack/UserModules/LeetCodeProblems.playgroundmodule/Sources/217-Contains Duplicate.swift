/*
 https://leetcode.com/problems/contains-duplicate/
 Given an array of integers, find if the array contains any duplicates.
 
 Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.
 
 Example 1:
 
 Input: [1,2,3,1]
 Output: true
 Example 2:
 
 Input: [1,2,3,4]
 Output: false
 Example 3:
 
 Input: [1,1,1,3,3,4,3,2,4,2]
 Output: true
 */

extension Solution {
    public static func _217_containsDuplicate(_ nums: [Int]) -> Bool {
        guard nums.count > 1 else { return false }
        var sorted = nums.sorted()
        for index in 1..<sorted.count {
            if sorted[index] == sorted[index - 1] { return true }
        }
        return false
    }
    
    public static func _217_preferContainsDuplicate(_ nums: [Int]) -> Bool {
        return Set(nums).count != nums.count
    }
}
