//
//  ViewControllerC.swift
//  HelloSwift
//
//  Created by Navi on 2020/8/5.
//  Copyright © 2020 leiwen. All rights reserved.
//

import UIKit

class ViewControllerC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "数组"
        view.backgroundColor = .white
        self.play()
    }
    
    func play() {
        // 1.定义数组
        // 1.1 定义不可变数组：使用let修饰标识符
        let array = ["why", "as", "fj"]


        // 1.2 定义可变数组  数组是泛型结合，必须要告诉里面什么类型
        //var arrayM = Array<String>()
        //声明的数组需要进行初始化才能使用，数组类型往往是在声明的同时进行初始化的
        var arrayM = [String]()

        // 定义时直接初始化
        let array1 = ["why", "lnj", "lmj"]
        print(array1)
        
        // 先定义,后初始化
        var array2 : Array<String>
        array2 = ["why", "lnj", "lmj"]
        print(array2)


        // 2.对可变数组的基本操作
        // 2.1 添加元素
        arrayM.append("fjfj")
        arrayM.append("222")
        arrayM.append("3333")

        // 2.2删除元素
        arrayM.remove(at: 0)
        print(arrayM)

        // 2.3修改元素
        arrayM[0] = "aaaa"
        print(arrayM)

        // 2.4取出某个一个元素
        print(arrayM[1])


        // 3.数组的遍历
        // 3.1 根据下标值
        for i in 0..<array.count {
            print(array[i])
        }

        // 3.2.直接遍历数组中的元素
        for string in array {
            print(string)
        }

        // 3.3.遍历数组中的前两个元素
        for string in array[0..<2] {
            print(string)
        }


        // 4.数组的合并
        //注意相同类型数组才可以进行合并，不同类型的不能相加合并
        for name in array {
            arrayM.append(name)
        }
        let resultArray = array + arrayM
        print(resultArray)
    }

}
