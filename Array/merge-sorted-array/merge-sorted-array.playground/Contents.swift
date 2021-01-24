import Foundation

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    var p1 = m - 1
    var p2 = n - 1
    var tail = m + n - 1
    while p1 >= 0 && p2 >= 0 {
        if nums2[p2] > nums1[p1] {
            nums1[tail] = nums2[p2]
            p2 = p2 - 1
        } else {
            nums1[tail] = nums1[p1]
            p1 = p1 - 1
        }
        tail = tail - 1
    }
//    nums1.replaceSubrange(0..<(p2+1), with: nums2[0..<(p2+1)])
    nums1[0..<(p2+1)] = nums2[0..<(p2+1)]
}

var nums1 = [1,2,3,0,0,0]
merge(&nums1, 3, [2,5,6], 3)
