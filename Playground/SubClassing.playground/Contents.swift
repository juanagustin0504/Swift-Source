import UIKit

class Vehicle {
    var currentSpeed = 0.0
    
    var description : String {
        return "시간당 \(self.currentSpeed)의 속도로 이동하고 있습니다"
    }
    
    func makeNoise() {
        
    }
}

let baseVehicle = Vehicle()
baseVehicle.description


class Bicycle : Vehicle {
    var hasBasket = false
}

let bicycle = Bicycle()
bicycle.hasBasket = true

bicycle.currentSpeed = 20.0

print("자전거: \(bicycle.description)")

class Tandem : Bicycle {
    var passengers = 0
}

let tandem = Tandem()

tandem.hasBasket = true
tandem.passengers = 2
tandem.currentSpeed = 14.0

print("Tandem : \(tandem.description)")



class Car : Vehicle {
    var gear = 0
    var engineLevel = 0
    
    override var currentSpeed: Double {
        get {
            return Double(self.engineLevel * 50)
        }
        set {
            
        }
    }
    
    override var description: String {
        get {
            return "Car : engineLevel=\(self.engineLevel), so currentSpeed=\(self.currentSpeed)"
        }
        set {
            print("New Value is \(newValue)")
        }
    }
}

let c = Car()

c.engineLevel = 5
c.currentSpeed
c.description = "New Class Car"

print(c.description)

class AutomaticCar : Car {
    override var currentSpeed: Double {
        didSet {
            self.gear = Int(currentSpeed / 10.0) + 1
        }
    }
}

class Bike : Vehicle {
    override func makeNoise() {
        print("빠라빠라빠라밤")
    }
}

let bk = Bike()
bk.makeNoise()

class HybridCar : Car {
    
}

class KickBoard : Vehicle {
    
}

let h = HybridCar()
h.description

let k = KickBoard()
k.description

class SUV : Car {
    var fourWheel = false
}

let jeep : Vehicle = SUV()

let anyCar : Car = SUV()
let anyVehicle = anyCar as Vehicle // 업캐스팅

let anySUV = anyCar as? SUV
if anySUV != nil {
    print("\(anySUV!) 캐스팅이 성공하였습니다")
}

var allCar : AnyObject = Car()
allCar = SUV()

func move(param:AnyObject) -> AnyObject {
    return param
}

move(param:Car())
move(param:Vehicle())
