
struct MathHelper {
    static func square(_ number: Int) -> Int {
        return number * number
    }
}

class Counter {
    static var instanceCount = 0

    init() {
        Counter.instanceCount += 1
    }
}

// Using static method
print("Square of 5: \(MathHelper.square(5))")

// Creating Counter instances
let counter1 = Counter()
let counter2 = Counter()
let counter3 = Counter()

print("Total instances created: \(Counter.instanceCount)")
