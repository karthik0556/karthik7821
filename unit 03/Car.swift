
class Car {
    var brand: String
    var speed: Int

    init(brand: String, speed: Int) {
        self.brand = brand
        self.speed = speed
    }

    func accelerate() {
        speed += 10
        print("Accelerated! Speed: \(speed) km/h")
    }

    func brake() {
        speed = max(0, speed - 10)
        print("Braking! Speed: \(speed) km/h")
    }
}

let car1 = Car(brand: "Toyota", speed: 40)

print("Brand: \(car1.brand)")
print("Initial Speed: \(car1.speed) km/h")

car1.accelerate()
car1.brake()
