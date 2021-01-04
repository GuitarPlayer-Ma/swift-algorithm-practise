import Foundation

func fib(_ n: Int) -> Int {
    if n < 2 {
        return n
    }
    return fib(n-2) + fib(n-1)
}

fib(4)
