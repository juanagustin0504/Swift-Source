import UIKit

func plus(a : Int, b : Int) -> Int {
    return a + b;
}

func minus(a : Int, b : Int) -> Int {
    return a - b
}

func times(a : Int, b : Int) -> Int {
    return a * b
}

func divide(a : Int, b : Int) -> Int {
    guard b != 0 else {
        return 0
    }
    return a / b
}

func calc(operand : String ) -> (Int, Int) -> Int {
    switch operand {
    case "+" :
        return plus
    case "-" :
        return minus
    case "*" :
        return times
    case "/" :
        return divide
    default:
        return plus
    }
}

let c = calc(operand: "+")
c(3, 4)

let c2 = calc(operand: "-")
c2(3, 4)

let c3 = calc(operand: "*")
c3(3, 4)

let c4 = calc(operand: "/")
c4(3, 4)
