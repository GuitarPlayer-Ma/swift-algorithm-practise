import Foundation

func moveZeroes1(_ nums: inout [Int]) {
    var j = 0
    for i in 0 ..< nums.count {
        if nums[i] != 0 {
            nums.swapAt(j, i)
            j += 1
        }
    }
}

func moveZeroes2(_ nums: inout [Int]) {
    var j = 0
    for i in 0 ..< nums.count {
        if nums[i] != 0 {
            if i > j {
                nums[j] = nums[i]
                nums[i] = 0
            }
            j += 1
        }
    }
    
}

var nums = [2,1,0,3,0,5]
moveZeroes1(&nums)
moveZeroes2(&nums)
