//
//  Test.swift
//  HelloSwift
//
//  Created by Navi on 2020/8/5.
//  Copyright © 2020 leiwen. All rights reserved.
//

import UIKit

class Test: NSObject {
    // 1.没有参数没有返回值的函数
    func test() -> Void {
        print("aaa")
    }


    func test1() {
        print("bbb")
    }


    // 2.没有参数有返回值的函数
    func readMessage() -> String {
        return "你好"
    }


    // 3.有参数，没有返回值的函数
    func callPhone(phoneNum : String) -> Void {
        //    print("打电话给" + phoneNum)
        print("打电话给\(phoneNum)")
    }


    // 4.有参数有返回值的函数
    func sum(num1 : Int, num2 : Int) -> Int {
        return num1 + num2
    }
}
