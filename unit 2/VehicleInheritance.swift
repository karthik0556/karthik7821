
class Vehicle {
    func description() -> String {
        return "This is a vehicle"
    }
}

class Car: Vehicle {
    override func description() -> String {
        return "This is a car"
    }
}

class Bike: Vehicle {
    override func description() -> String {
        return "This is a bike"
    }
}

let car = Car()
let bike = Bike()
let vehicle = Vehicle()

let vehicles: [Vehicle] = [vehicle, car, bike]

for item in vehicles {
    print(item.description())
}
