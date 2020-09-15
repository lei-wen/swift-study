//
//  ViewControllerG.swift
//  HelloSwift
//
//  Created by Navi on 2020/8/5.
//  Copyright © 2020 leiwen. All rights reserved.
//

import UIKit

class ViewControllerG: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "函数的使用"
        view.backgroundColor = .white
        self.play()
    }
    
    func play() {

        Test().test()
        Test().test1()
        print( Test().readMessage() )
        Test().callPhone(phoneNum: "110")
        
        //直接调用sum(num1: 20, num2: 30)  会报警告，因为返回值没有被调用
        print( Test().sum(num1: 20, num2: 20) )
    }

}
