
var number: Int = 7
var isPrime = number > 1

if number > 1 {
    for i in 2..<number {
        if number % i == 0 {
            isPrime = false
            break
        }
    }
}

if isPrime {
    print("\(number) is Prime")
} else {
    print("\(number) is Not Prime")
}

print("Prime numbers between 1 and 50:")

for num in 2...50 {
    var prime = true

    for i in 2..<num {
        if num % i == 0 {
            prime = false
            break
        }
    }

    if prime {
        print(num)
    }
}
