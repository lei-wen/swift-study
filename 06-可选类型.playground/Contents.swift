import UIKit

// swift中有规定：对象中的任何属性在创建对象时，都必须有明确的初始化值
//class Student: NSObject {
//    var name : "xx"
//    var age  = 25
//}


// 1.定义可选类型
// 1> 方式一:常规方式(不常用)
//var name : Optional<String> = nil

// 2> 方式二:语法糖
var name : String? = nil

// 2.给可选类型赋值
name = "xx"

// 3.取出可选类型中的值
print(name)

//可选类型 + ! 强制解包
print(name!)

// 4.注意强制解包是非常危险的操作，如果可选类型为nil，强制解包会崩溃
// 注意:如果可选类型为nil,强制取出其中的值(解包),会出错
let string : String? = nil
//print(string!) // 报错

// 正确写法:
if string != nil {
    print(string!)
}

// 5.可选绑定
// 1> 判断name是否有值，如果没有值，直接不执行{}
// 2> 如果name有值，系统会自动将name进行解包，并且将解包后的值，赋值给tempName

// 写法一:不常用
if let tempName = name {
    print(tempName)
}

// 写法二：常用 ,OC和swift有就近原则
if let name = name {
    print(name)
}
