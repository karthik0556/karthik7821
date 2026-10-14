
var number: Int = 15
var original = number
var temp = number
var reversed = 0

while temp > 0 {
    let digit = temp % 10
    reversed = reversed * 10 + digit
    temp /= 10
}

if original == reversed {
    print("\(original) is a Palindrome")
} else {
    print("\(original) is not a Palindrome")
}
original = number
temp = number
var sum = 0
let digits = String(number).count

while temp > 0 {
    let digit = temp % 10
    var power = 1

    for _ in 1...digits {
        power *= digit
    }

    sum += power
    temp /= 10
}

if sum == original {
    print("\(original) is an Armstrong number")
} else {
    print("\(original) is not an Armstrong number")
}
