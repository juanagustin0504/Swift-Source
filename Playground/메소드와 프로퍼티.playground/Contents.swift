import UIKit

struct Resolution {
    var width = 0
    var height = 0
    
    func desc() -> String {
        return "Resolution 구조체"
    }
}

class VideoMode {
    var interlaced = false
    var frameRate = 0.0
    var name : String?
    var resolution = Resolution()
}

let vMode = VideoMode()

print("res 인스턴스의 width 값은 \(vMode.resolution.width)입니다")

vMode.name = "Sample"
vMode.resolution.width = 1280

print("\(vMode.name!) 인스턴스의 width 값은 \(vMode.resolution.width)입니다")

let hd = Resolution(width: 1920, height: 1080)
var cinema = hd

cinema.width = 2048
print("cinema 인스턴스의 width 값은 \(cinema.width)입니다")

print("hd 인스턴스의 width 값은 \(hd.width)입니다")

let video = VideoMode()
video.name = "Original Video Instance"
print("video 인스턴스의 name 값은 \(video.name!)입니다")

let dvd = video
dvd.name = "DVD Video Instance"
print("video 인스턴스의 name 값은 \(video.name!)입니다")

func changeName(v : VideoMode) {
    v.name = "Function Video Instance"
}

changeName(v: video)
print("video 인스턴스의 name 값은 \(video.name!)입니다.")

// 동일한 인스턴스인지 비교 ===, !==
if video === dvd {
    print("동일")
} else {
    print("다름")
}

let vs = VideoMode()
let ds = VideoMode()

if vs === ds {
    print("동일")
    } else {
    print("다름")
}
