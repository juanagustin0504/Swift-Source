import UIKit

class OnCreate {
    init() {
        print("OnCreate!!")
    }
}

class LazyTest {
    var base = 0
    lazy var late = OnCreate()
    
    init() {
        print("Lazy Test")
    }
}

let lz = LazyTest()
// 처음으로 호출 될 때 인스턴스가 만들어진다. lazy
lz.late

