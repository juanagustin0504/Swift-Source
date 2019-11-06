import UIKit

func successThrough() {
    print("연산 처리가 성공했습니다.")
}

func failThrough() {
    print("처리과정에 오류가 발생하였습니다.")
}

func foo(base : Int, success sCallBack : () -> Void, fail fCallBack : () -> Void) -> Int {
    guard base != 0 else {
        fCallBack()
        return 0
    }
    
    defer {
        sCallBack()
    }
    return 100 / base
}


foo(base : 30, success : successThrough, fail: failThrough)


foo(base: 30,
    success: {
        () -> Void in
        print("연산 처리가 성공했습니다.")
},
    fail: {
        () -> Void in print("처리과정에 오류가 발생하였습니다.");
        }
)
