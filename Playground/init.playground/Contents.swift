import UIKit

struct Resolution {
    var width = 0
    var height = 0
    
    init(width: Int) {
        self.width = width
    }
}

class VideoMode {
    
    var resolution = Resolution(width: 2048)
    var interlaced = false
    var frameRate = 0.0
    var name : String?
    
    init(interlaced : Bool) {
        self.interlaced = interlaced
    }
    
    init(name : String) {
        self.name = name
    }
    
    init(interlaced : Bool, frameRate : Double) {
        self.interlaced = interlaced
        self.frameRate = frameRate
    }
    
    init(interlaced : Bool, frameRate : Double, name : String) {
        self.interlaced = interlaced
        self.frameRate = frameRate
        self.name = name
    }
}

let resolution = Resolution(width: 2048)

let videoMode = VideoMode(interlaced: true, frameRate: 40.0)


let nameVideoMode = VideoMode(name: "홍길동")
let simpleVideoMode = VideoMode(interlaced: true)
let doubleVideoMode = VideoMode(interlaced: true, frameRate: 40.0)
let tripleVideoMode = VideoMode(interlaced: true, frameRate: 40.0, name: "홍길동")

