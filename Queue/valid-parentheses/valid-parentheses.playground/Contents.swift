import Foundation

func isValid(_ s: String) -> Bool {
    var stack = [Character]()
    let pairs : [Character:Character] = [")":"(","}":"{","]":"["]
    for char in s {
        char
        if pairs.contains(where: { (key: Character, value: Character) -> Bool in
            return key == char
        }) {
            if stack.isEmpty || stack.last != pairs[char] {
                return false
            }
            stack.removeLast()
        } else {
            stack.append(char)
        }
    }
    return stack.isEmpty
}

isValid("[(){}]")
