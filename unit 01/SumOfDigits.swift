
var number: Int = 1234
var sum: Int = 0

while number > 0 {
    let digit = number % 10
    sum += digit
    number /= 10
}

print("Sum of digits is \(sum)")
