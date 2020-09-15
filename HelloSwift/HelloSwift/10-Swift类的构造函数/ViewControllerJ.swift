//
//  ViewControllerJ.swift
//  HelloSwift
//
//  Created by Navi on 2020/8/5.
//  Copyright © 2020 leiwen. All rights reserved.
//

import UIKit

class ViewControllerJ: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Swift类的构造函数"
        view.backgroundColor = .white
        self.play()
    }

}

extension ViewControllerJ {
    
    func play() {
        
        let p1 = Person(name: "xx", age: 25)
        print(p1.name!, p1.age)

        let p2 = Person(dict: ["name" : "xxx", "age" : 23])
        print(p2.name!, p2.age)
    }
    
}

private class Person: NSObject {
    var name : String?
    var age  = 0

    override init() {
        // 在构造函数中，如果没有明确super.init(),系统会帮助调用，但是是放在最后调用
        print("-----")
    }

    // 自定义构造函数
    init(name : String, age : Int) {
        self.name = name
        self.age  = age
    }
    // 不常见
    //    init(dict : [String : AnyObject]) {
    //        name = dict["name"] as? String
    //        // 最好不要强制解包
    ////        age  = dict["age"]  as! Int
    //        if let temAage = dict["age"] as? Int {
    //            age = temAage
    //        }
    //    }

    init(dict : [String : Any]) {
        // 必须要先有对象
        super.init()
        setValuesForKeys(dict)
    }

    func setValue(value: Any?, forUndefinedKey key: String) {
        
    }
}
