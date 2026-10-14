
var n: Int = 10
var first: Int = 0
var second: Int = 1

for _ in 1...n {
    print(first)
    
    let next = first + second
    first = second
    second = next
}
