import Foundation

func removeDuplicates(_ nums: inout [Int]) -> Int {
    var j = 0
    for num in nums {
        if nums[j] != num {
            j += 1
            nums[j] = num
        }
    }
    return j + 1
}

var nums = [0,0,1,1,1,2,2,3,3,4]
removeDuplicates(&nums)
nums
