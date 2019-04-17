//
//  HTTPViewModel.swift
//  Swift闭包
//
//  Created by lei-wen on 2019/4/17.
//  Copyright © 2019 lei-wen. All rights reserved.
//

import UIKit

class HTTPViewModel: NSObject {
    var callBack : ((_ jsonData : String) -> () )?
    
    // 闭包类型 : () -> ()
    func loadData(callBack : @escaping (_ jsonData : String) -> (Void) ) {
        DispatchQueue.global().async() { () -> Void in
            print("加载数据", Thread.current)
            
            DispatchQueue.main.async {
                print("获取到数据，进行回调\(Thread.current)")
                callBack("我是json数据")
            }
        }
    }
    
    // deinit相当于OC中的dealloc方法
    deinit {
        print("VC ----deinit")
    }
}
