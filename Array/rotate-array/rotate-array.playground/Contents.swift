import Foundation

func rotate1(_ nums: inout [Int], _ k: Int) {
    let count = nums.count
    var temArray = Array(repeating: 0, count: count)
    for i in 0..<count {
        let j = (i+k) % count
        temArray[j] = nums[i]
    }
    nums = temArray
}

func rotate2(_ nums: inout [Int], _ k: Int) {
    let position = k % nums.count
    nums.reverse()
    nums[0..<position].reverse()
    nums[position..<nums.count].reverse()
}

var nums = [1]
rotate2(&nums, 0)
