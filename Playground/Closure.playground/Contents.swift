import UIKit

({() -> Void in
    print("클로저가 실행됩니다")
})()

let c = {(s1: Int, s2: String) -> Void in
    print("s1:\(s1), s2:\(s2)")
}
c(1, "closure")
