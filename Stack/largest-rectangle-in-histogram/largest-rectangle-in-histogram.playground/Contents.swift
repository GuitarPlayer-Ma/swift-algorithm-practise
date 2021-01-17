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
func largestRectangleArea1(_ heights: [Int]) -> Int {
    var area = 0
    var stack: [Int] = []
    
    // 在数组末尾追加Int.min，通常在单调栈算法中称之为哨兵，其作用
    // 在于保证栈中所有元素都能够出栈，确保所有元素得到计算
    // 本题中为了保证栈中所有元素都能出栈，追加Int.min
    let heightPlus = heights + [Int.min]
    for i in heightPlus.indices {
        while !stack.isEmpty && heightPlus[stack.last!] > heightPlus[i] {
            let height = heightPlus[stack.removeLast()]
            area = max(area, height * (i - (stack.last ?? -1) - 1))
        }
        stack.append(i)
    }
    return area
}

largestRectangleArea1([2,1,5,6,2,3])
