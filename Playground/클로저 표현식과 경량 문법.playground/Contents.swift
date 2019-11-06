import UIKit

var value = [1, 9, 5, 7, 3, 2]

func order(s1:Int, s2:Int) -> Bool {
    if s1 > s2 {
        return true
    } else {
        return false
    }
}

value.sort(order)

value.sort({(s1:Int, s2:Int) -> Bool in
    if s1 > s2 {
        return true
    } else {
        return false
    }
    
})

value.sort({(s1:Int, s2:Int) -> Bool in return s1 > s2})

value.sort({(s1:Int, s2:Int) in return s1 > s2})

value.sort({s1, s2 in return s1 > s2})

value.sort({$0 > $1})

value.sort( > )
