//
//  ViewController.swift
//  tableView简单使用
//
//  Created by lei-wen on 2019/4/17.
//  Copyright © 2019 lei-wen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // mark - 懒加载的属性
    // 懒加载的本质是,在第一次使用的时候执行闭包,将闭包的返回值赋值给属性
    // lazy的作用是只会赋值一次
    lazy var tableView : UITableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
}


extension ViewController {
    
    //  设置UI界面
    func setUpUI() {
        // 0.添加tableView
        view.addSubview(tableView)
        
        // 1.设置frame
        tableView.frame = view.bounds
        
        // 3.设置数据源
        tableView.dataSource = self
        
        // 4.设置代理
        tableView.delegate = self
        
        tableView.contentInset = UIEdgeInsets.init(top: 20, left: 0, bottom: 0, right: 0)
    }
}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellID = "cell"
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        
        if nil == cell {
            // 在swift中使用枚举： 1> 枚举类型.具体类型 2> .具体的类型
            cell = UITableViewCell(style: .value1, reuseIdentifier: cellID)
        }
        cell?.textLabel?.text = "测试数据\(indexPath.row)行"
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("点击了\(indexPath.row)")
    }
}
