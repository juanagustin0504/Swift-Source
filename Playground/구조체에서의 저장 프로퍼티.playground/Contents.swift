import UIKit

struct FixedLengthRange {
    var startValue : Int
    
    let length : Int
}

struct FlexbleLengthRange {
    let startValue : Int
    
    var length : Int
}

// 0, 1, 2
var rangeOfFixedIntegers = FixedLengthRange(startValue: 0, length: 3)

// 4, 5, 6
rangeOfFixedIntegers.startValue = 4

// 0, 1, 2
var rangeOfFlexbleIntegers = FlexbleLengthRange(startValue: 0, length: 3)

// 0, 1, 2, 3, 4
rangeOfFlexbleIntegers.length = 5

// 상수에 할당된 구조체 인스턴스
let constantsOfInstance = FixedLengthRange(startValue: 3, length: 4)

// 오류 발생
constantsOfInstance.startValue = 0

// 반면, 변수에 할당된 구조쳋 인스턴스라면
var variablesOfIntstance = FixedLengthRange(startValue: 3, length: 4)

// 아래와 같이 저장 프로퍼티를 수정할 수 있음
variablesOfIntstance.startValue = 0
