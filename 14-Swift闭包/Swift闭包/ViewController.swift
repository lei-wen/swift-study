//
//  ViewController.swift
//  Swift闭包
//
//  Created by lei-wen on 2019/4/17.
//  Copyright © 2019 lei-wen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var httpViewModel : HTTPViewModel = HTTPViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        httpViewModel.loadData { (jsonData) -> (Void) in
            print("在VC中拿到数据: \(jsonData)")
            self.view.backgroundColor = UIColor.red
        }
    }

}

