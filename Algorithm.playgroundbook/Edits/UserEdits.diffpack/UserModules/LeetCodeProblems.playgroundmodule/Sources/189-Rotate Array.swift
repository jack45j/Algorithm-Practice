/*
 https://leetcode.com/problems/rotate-array/
 Given an array, rotate the array to the right by k steps, where k is non-negative.
 
 Follow up:
 
 Try to come up as many solutions as you can, there are at least 3 different ways to solve this problem.
 Could you do it in-place with O(1) extra space?
 
 
 Example 1:
 
 Input: nums = [1,2,3,4,5,6,7], k = 3
 Output: [5,6,7,1,2,3,4]
 Explanation:
 rotate 1 steps to the right: [7,1,2,3,4,5,6]
 rotate 2 steps to the right: [6,7,1,2,3,4,5]
 rotate 3 steps to the right: [5,6,7,1,2,3,4]
 Example 2:
 
 Input: nums = [-1,-100,3,99], k = 2
 Output: [3,99,-1,-100]
 Explanation: 
 rotate 1 steps to the right: [99,-1,-100,3]
 rotate 2 steps to the right: [3,99,-1,-100]
 
 
 Constraints:
 
 1 <= nums.length <= 2 * 104
 -231 <= nums[i] <= 231 - 1
 0 <= k <= 105
 */

extension Solution {
    // This solution comes to O(2n) because insert is O(n) and within loop it comes to O(2n)
    public static func _189_rotate(_ nums: inout [Int], _ k: Int) {
        guard !nums.isEmpty else { return }
        for i in 0..<k {
            nums.insert(nums.last!, at: 0)
            nums.removeLast()
        }
    }
    
    public static func _189_preferRotate(_ nums: inout [Int], _ k: Int) {
        guard k > 1 || !nums.isEmpty else { return }
        
        var k = k % nums.count
        nums = Array(nums[nums.count - k..<nums.count] + nums[0..<nums.count-k])
    }
}
