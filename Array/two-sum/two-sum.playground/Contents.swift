import Foundation

func twoSum1(_ nums: [Int], _ target: Int) -> [Int] {
    var result = [Int]()
    for (index, num) in nums.enumerated() {
        for nextIndex in (index+1)..<nums.count {
            if (num + nums[nextIndex]) == target {
                result.append(index)
                result.append(nextIndex)
            }
        }
    }
    return result
}

func twoSum2(_ nums: [Int], _ target: Int) -> [Int] {
    var map = [Int:Int]()
    for (index, num) in nums.enumerated() {
        if map.contains(where: { (key: Int, value: Int) -> Bool in
            return key == target - num;
        }) {
            return [map[target-num]!, index]
        }
        map[num] = index
    }
    return []
}


let test1 = [2,7,11,15]
let test2 = [3,0,1,3]
twoSum1(test1, 13)
twoSum1(test2, 6)
twoSum2(test1, 13)
twoSum2(test2, 6)
