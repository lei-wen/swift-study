//
//  ViewControllerB.swift
//  HelloSwift
//
//  Created by Navi on 2020/8/5.
//  Copyright © 2020 leiwen. All rights reserved.
//

import UIKit

class ViewControllerB: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "字符串"
        view.backgroundColor = .white
        
        self.play()
    }
    
    
    
    func play() {
        // 1.定义字符串
        let opration = "Hello world"

        // 2.遍历字符串
        for c in opration {
            print(c)
        }

        // 3.字符串拼接
        let str1 = "Hello"
        let str2 = "World"
        let str3 = str1 + str2
        print(str3)

        // 3.2 字符串和其他标识符之间的拼接
        let name   = "Alan Walker"
        let age    = 18
        let height = 172
        let info = "my name is \(name),my age is \(age),my height is \(height)"
        print(info)
        
        // 3.3 拼接字符串时，字符串格式化
        let min        = 2
        let second     = 18
        let timeString = String(format: "%02d:%02d", arguments: [min, second])
        print(timeString)

        // 4. 字符串截取
        let urlString = "www.baidu.com"
        //将string类型转化成NSString类型,这样比较简单
        let header = (urlString as NSString).substring(to: 3)
        print(header)
        let middle = (urlString as NSString).substring(with: NSMakeRange(4, 5))
        print(middle)
        let footer = (urlString as NSString).substring(from: 10)
        print(footer)
    }

}
