import Foundation

func maxArea(_ height: [Int]) -> Int {
    var result = 0
    var left = 0
    var right = height.count - 1
    while left < right {
        let area = (right - left) * min(height[left], height[right])
        result = max(area, result)
        if height[left] <= height[right] {
            left += 1
        } else {
            right -= 1
        }
    }
    return result
}

maxArea([1,8,19,2,5,19,8,3,7])
