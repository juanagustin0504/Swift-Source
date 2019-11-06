import UIKit

class A {
    var name = "Class A"
    
    var description : String {
        return "This class name is \(self.name)"
    }
    
    func foo() {
        print("\(self.name)'s method foo is called")
    }
}


let a = A()

a.name
a.description
a.foo()

class B : A {
    var prop = "Class B"
    
    func boo() -> String {
        return "Class B prop = \(self.prop)"
    }
}

let b = B()

b.prop
b.boo()

b.name
b.foo()

b.name = "Class C"
b.foo()
