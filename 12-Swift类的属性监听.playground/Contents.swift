import UIKit

class Person: NSObject {
    // 属性监听器
    var name : String? {
        // 属性即将改变时进行监听
        willSet {
            print(newValue)
        }
        
        // 属性已经改变时进行监听
        didSet {
            print(oldValue)
        }
    }
}

let p = Person()
p.name = "xx"
p.name = "yz"
