import UIKit

struct Job {
    var income : Int = 0 {
        willSet(newIncome) {
            print("이번 달 월급은 \(newIncome)원입니다.")
        }
        didSet {
            if income > oldValue {
                print("축하합니다. 월급이 \(income - oldValue)원 증가하셨네요. 소득세가 상향조정될 예정입니다.")
            } else {
                print("힘내세요. 월급이 삭감되셨군요. 그래도 소득세는 깎아드리지 않습니다.")
            }
        }
    }
}

var job = Job(income: 1000000)
job.income = 2000000

job.income = 1500000

