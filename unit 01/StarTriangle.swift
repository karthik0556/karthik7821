
var n: Int = 5

for i in 1...n {
    for _ in 1...i {
        print("*", terminator: "")
    }
    print()
}

var n: Int = 5

for i in 1...n {
    if i % 2 == 0 {
        continue
    }

    for _ in 1...i {
        print("*", terminator: "")
    }
    print()
}
