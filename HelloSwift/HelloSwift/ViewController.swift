//
//  ViewController.swift
//  HelloSwift
//
//  Created by Navi on 2020/8/5.
//  Copyright © 2020 leiwen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var tableView: UITableView = UITableView()
    
    let titleList: Array<String> = ["01-初识Swift", "02-字符串", "03-数组", "04-字典",
                                    "05-元组", "06-可选类型", "07-函数的使用", "08-函数的使用注意",
                                    "09-Swift类的定义", "10-Swift类的构造函数", "11-Swift类的属性监听",
                                    "12-Block回顾", "13-Swift闭包"]
    
    let controllerList: Array<UIViewController> = [ViewControllerA(), ViewControllerB(), ViewControllerC(),
                                                   ViewControllerD(), ViewControllerE(), ViewControllerF(),
                                                   ViewControllerG(), ViewControllerH(), ViewControllerI(),
                                                   ViewControllerJ(), ViewControllerK(), ViewControllerL(), ViewControllerM()]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "学习Swift"
        view.backgroundColor = .green
        self.initUI()
    }
}

extension ViewController {
    func initUI() {
        tableView.frame = view.bounds
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    // MARK: UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titleList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let str = "SwiftCellIdentifier"
        var cell = tableView.dequeueReusableCell(withIdentifier: str)
        
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: str)
            cell?.textLabel?.textColor = .magenta
        } else {
            cell?.textLabel?.text = nil
        }

        cell?.textLabel?.text = titleList[indexPath.row]
        return cell!
    }
    
    // MARK: UITableViewDelegate
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 54.0
    }
    // 选中cell后执行此方法
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        self.navigationController?.pushViewController(controllerList[indexPath.row], animated: true)
    }
}
