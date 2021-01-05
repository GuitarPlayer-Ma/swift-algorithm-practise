import Foundation

func largeGroupPositions1(_ s: String) -> [[Int]] {
    var j = 0
    var result = [[Int]]()
    for (i, char) in s.enumerated() {
        if i == j {
            continue
        }
        if char != s[s.index(s.startIndex, offsetBy: j)]{
            if i - j >= 3 {
                result.append([j,i-1])
            }
            j = i
        }
        if  i == s.count - 1 {
            if i - j + 1 >= 3 {
                result.append([j,i])
            }
        }
    }
    return result
}

func largeGroupPositions2(_ s: String) -> [[Int]] {
    var j = 0
    var result = [[Int]]()
    for i in 0 ..< s.count {
        if i == s.count - 1 || s[s.index(s.startIndex, offsetBy: i)] != s[s.index(s.startIndex, offsetBy: i+1)] {
            if i - j + 1 >= 3 {
                result.append([j,i])
            }
            j = i + 1
        }
    }
    return result
}

largeGroupPositions1("ccccbaaa")
largeGroupPositions2("ccccbaaa")
