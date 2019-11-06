import UIKit

/*
struct Rect {
    var originX : Double = 0.0, originY : Double = 0.0
    
    var sizeX : Double = 0.0, sizeY : Double = 0.0
    
    var centerX : Double {
        get {
            return self.originX + (sizeX / 2)
        }
        set(newCenterX) {
            self.originX = newCenterX - (sizeX / 2)
        }
    }
    
    var centerY : Double {
        get {
            return self.originY + (self.sizeY / 2)
        }
        set(newCenterY) {
            self.originY = newCenterY - (self.sizeY / 2)
        }
    }
}
*/

struct Position {
    var x : Double = 0.0
    var y : Double = 0.0
}

struct Size {
    var width  : Double = 0.0
    var height : Double = 0.0
}


struct Rect {
    var origin = Position()
    
    var size = Size()
    
    var center : Position {
        get {
            let centerX = self.origin.x + (self.size.width / 2)
            let centerY = self.origin.y + (self.size.height / 2)
            
            return Position(x:centerX, y:centerY)
        }
        set(newCenter) {
            self.origin.x = newCenter.x - (size.width / 2)
            self.origin.y = newCenter.y - (size.height / 2)
        }
    }
}

var square = Rect(origin:Position(x:0.0, y:0.0), size: Size(width: 10.0, height: 10.0))
print("square.centerX = \(square.center.x), square.centerY = \(square.center.y)")

square.center = Position(x: 20.0, y: 20.0)
print("square.originX = \(square.origin.x), square.originY = \(square.origin.y)")

// 읽기 전용 (Read-Only) 속성으로 정의된 center 프로퍼티
func getCenter() -> Position {
    let centerX = self.origin.x + (self.size.width / 2)
    let centerY = self.origin.y + (self.size.height / 2)
    return Position(x: centerX, y: centerY)
}

mutating func setCenter(newCenter : Position) {
    self.origin.x = newCenter.x - (size.width / 2)
    self.origin.y = newCenter.y - (sizez.height / 2)
}
