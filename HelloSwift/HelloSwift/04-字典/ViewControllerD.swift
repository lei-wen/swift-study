//
//  ViewControllerD.swift
//  HelloSwift
//
//  Created by Navi on 2020/8/5.
//  Copyright © 2020 leiwen. All rights reserved.
//

import UIKit

class ViewControllerD: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "字典"
        view.backgroundColor = .white
        self.play()
    }
    
    func play() {
        // 1.定义字典
        // 1.1.定义不可变字典
        let dict:[String : Any] = ["name":"jinchao", "age":18]
        print(dict)
        var someDict:[Int:String] = [1:"One", 2:"Two", 3:"Three"]
        print(someDict)

        // 2.2.定义可变字典
        //var dictM = Dictionary<String, NSObject>()
        // AnyObject:一般指定类型 NSObject:一般用于创建对象
        var dictM = [String : AnyObject]()

        // 2.对可变字典的基本操作
        // 2.1.添加元素
        dictM["sex"] = "man" as AnyObject
        dictM["age"] = 12 as AnyObject
        print(dictM)

        // 2.2.删除元素
        dictM.removeValue(forKey: "age")
        print(dictM)

        // 2.3.修改元素
        dictM["sex"] = "woman" as AnyObject
        print(dictM)

        // 2.4.获取元素
        print(dictM["sex"])

        // 2.5.遍历字典
        for key in dictM.keys {
            print(key)
        }

        for value in dictM.values {
            print(value)
        }

        for (key, value) in dictM {
            print(value)
            print(key)
        }

        // 4.合并 无法使用相加进行合并
        var dict1 = ["name" : "why", "age" : 18] as [String : Any]
        let dict2 = ["height" : 188, "phone" : 159]

        for (key, value) in dict2 {
            dict1[key] = value
        }
        print(dict1)
    }

}
