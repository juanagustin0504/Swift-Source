import UIKit

func basic(param : Int) -> (Int) -> Int {
    let value = param + 20
    
    func append(add : Int) -> Int {
        return value + add
    }
    
    return append
}

let b = basic(param: 10)
b(10)
