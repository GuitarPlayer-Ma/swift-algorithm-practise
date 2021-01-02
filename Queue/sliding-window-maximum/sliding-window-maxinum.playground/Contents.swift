import Foundation

func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
    var deque = [Int]()
    var result = [Int]()
    for (index, num) in nums.enumerated() {
        while !deque.isEmpty && nums[deque.last!] <= num {
            deque.popLast()
        }
        deque.append(index)
        // 判断队列队首是否滑出窗口左侧
        if deque.first! <= index - k {
            deque.removeFirst()
        }
        // 从初始的窗口开始，保持窗口中的最大值
        if index + 1 >= k {
            result.append(nums[deque.first!])
        }
    }
    return result
}

maxSlidingWindow([1,3,-1,-3,5,3,6,7], 3)
