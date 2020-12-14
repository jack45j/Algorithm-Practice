extension Solution {
    public static func _003_lengthOfLongestSubstring(_ s: String) -> Int {
        if s.count < 2 { return s.count }
        var dict = [Character: Int](), start = 0, ans = 0
        
        for (i, char) in s.enumerated() {
            print("Current i: \(i) Char: \(char)")
            print("Current dict: \(dict)")
            if let val = dict[char], val >= start {
                print("val = dict[char]: \(val) start: \(start)")
                start = val+1
            }
            dict[char] = i
            ans = max(ans, i-start+1)
        }
        
        return ans
    }
    
    public static func _003_myAnswer(_ s: String) -> Int {
        var str: [Character] = []
        let currentIndex = 0
        for char in s {
            if str.isEmpty || char == str[currentIndex] {
                str.append(char)
            } else {
                
            }
        }
        
        
        return 0
    }
}
