import Foundation

// 递归解法，斐波那契数列: f(1) = 1, f(2) = 2
func climbStairs(_ n: Int) -> Int {
    if n <= 2 {
        return n
    }
    return climbStairs(n-1) + climbStairs(n-2)
}

climbStairs(2)
