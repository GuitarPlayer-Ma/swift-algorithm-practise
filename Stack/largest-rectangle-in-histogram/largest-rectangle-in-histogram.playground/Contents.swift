import Foundation

// 暴力解法，枚举所有矩形比较
func largestRectangleArea(_ heights: [Int]) -> Int {
    var result = 0
    for left in 0..<heights.count {
        var minHeight = Int.max
        for right in left..<heights.count {
            minHeight = min(minHeight, heights[right])
            result = max(result, minHeight * (right - left + 1))
        }
    }
    return result
}

// 单调栈
//func largestRectangleArea1(_ heights: [Int]) -> Int {
//    var result = 0
//
//    return result
//}

largestRectangleArea([2,1,5,6,2,3])
