//
//  ViewControllerH.swift
//  HelloSwift
//
//  Created by Navi on 2020/8/5.
//  Copyright © 2020 leiwen. All rights reserved.
//

import UIKit

class ViewControllerH: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "函数的使用注意"
        view.backgroundColor = .white
        self.play()
    }

    func play() {
        func sum(num1 : Int, num2 : Int) -> Int {
            return num1 + num2
        }
        print( sum(num1: 10, num2: 30) )

        // 注意一:内部参数和外部参数
        // 内部参数：在函数内部能看到的参数就是内部参数，默认情况下所有的参数都是内部参数
        // 外部参数：在函数外部可以看到参数名称就是外部参数，默认情况下第二个参数开始即是内部参数也是外部参数
        // 如果希望第一个参数也是外部参数，可以在标识符前给该参数添加一个别名

        // 注意二:swift中的默认参数
        func getCoffee(coffeeName : String = "蓝山咖啡") -> String {
            return "制作了一杯\(coffeeName)"
        }
        print( getCoffee(coffeeName: "拿铁") )
        print( getCoffee(coffeeName: "卡布奇诺") )
        print( getCoffee(coffeeName: "雀巢") )
        print( getCoffee() )
        
        // 注意三:可变参数
        func sum3(_ num : Int...) -> Int {
            var result = 0
            for n in num {
                result += n
            }
            return result
        }
        print( sum3(10, 20, 30) )

        //注意四：引用类型(指针的传递)
        // 默认情况下,函数的参数是值传递.如果想改变外面的变量,则需要传递变量的地址
        // 必须是变量,因为需要在内部改变其值
        // Swift提供的inout关键字就可以实现
        var m = 33
        var n = 13

        func swapNum( m : inout Int, n : inout Int) {
            let temp = m
            m = n
            n = temp
        }
        swapNum(m: &m, n: &n)
        print("m:\(m), n:\(n)")

        swap(&m, &n)
        print("m:\(m), n:\(n)")


        // 注意五：函数的嵌套使用(不推荐)
        func test0() {
            func demo() {
                print("demo")
            }
            print("test")
            demo()
        }

        test0()
    }
}
