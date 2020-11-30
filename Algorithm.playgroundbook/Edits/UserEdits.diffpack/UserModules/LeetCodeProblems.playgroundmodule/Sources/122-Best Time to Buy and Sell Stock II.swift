/*
 https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/564/
 Say you have an array prices for which the ith element is the price of a given stock on day i.
 
 Design an algorithm to find the maximum profit. You may complete as many transactions as you like (i.e., buy one and sell one share of the stock multiple times).
 
 Note: You may not engage in multiple transactions at the same time (i.e., you must sell the stock before you buy again).
 
 Example 1:
 
 Input: [7,1,5,3,6,4]
 Output: 7
 Explanation: Buy on day 2 (price = 1) and sell on day 3 (price = 5), profit = 5-1 = 4.
 Then buy on day 4 (price = 3) and sell on day 5 (price = 6), profit = 6-3 = 3.
 Example 2:
 
 Input: [1,2,3,4,5]
 Output: 4
 Explanation: Buy on day 1 (price = 1) and sell on day 5 (price = 5), profit = 5-1 = 4.
 Note that you cannot buy on day 1, buy on day 2 and sell them later, as you are
 engaging multiple transactions at the same time. You must sell before buying again.
 Example 3:
 
 Input: [7,6,4,3,1]
 Output: 0
 Explanation: In this case, no transaction is done, i.e. max profit = 0.
 
 
 Constraints:
 
 1 <= prices.length <= 3 * 10 ^ 4
 0 <= prices[i] <= 10 ^ 4
 
 */

// 思路上可以賣出同時買進
// 所以只要隔天是比前一天高就可以將profit增加
// 可以理解為如果第一天買第三天賣
// 則拆成 第一天買第二天賣 第二天買第三天賣來理解
extension Solution {
    public static func _122_maxProfit(_ prices: [Int]) -> Int {
        guard !prices.isEmpty else { return 0 }
        var profit = 0
        for day in 0..<prices.count - 1 {
            if prices[day+1] - prices[day] > 0 {
                profit += prices[day+1] - prices[day]
            }
        }
        return profit
    }
}
