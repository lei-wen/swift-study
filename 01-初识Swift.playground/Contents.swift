//: Playground - noun: a place where people can play

// 1.导入框架
import UIKit

// 2.定义标识符
/*
 1.swift中定义标志符：定义的标识符必须告诉编译器一个常量还是一个变量
 2.声明常量用let修饰,定义之后不可以修改
 3.声明变量用var修饰,定义之后可以修改
 4.let/var 标识符名称 : 标识符的数据类型 = 值
 */

let a : Int    = 20;

var b : Double = 1.44
b              = 2.44

// 3.语句结束
// 如果一行中只有一条语句，那么该语句结束后，可以不加；但是如果一行中有多条语句，那么需要用；来分割


// 4.打印内容
var str = "Hello, playground"

let view : UIView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
view.backgroundColor = UIColor.red

let button : UIButton = UIButton(type: UIButton.ButtonType.custom)
button.backgroundColor = UIColor.blue
button .setTitle("Hello", for: UIControl.State.normal)
button.frame = CGRect(x: 0, y: 0, width: 50, height: 20)
view.addSubview(button)


// 5.Swift数据类型(Swift类型可以进行推导)
let c = 4 //推导是整形
let d = 2.44 //推导是double类型

// 不同类型不能直接进行运算,错误写法
//let e = c + d

// 正确写法
let e = Double(c) + d


// 6.逻辑分支
/*
 1.if后面的()可以省略
 2.判断句不再有非0/nil为真，判断句必须有明确真假（BOOL-->true/false）
 3.else if用法和if用法一致
 4.三目运算符和oc完全一致
 5.guard是2.0新增语法，目的是为了提高代码可读性
 gurad语句必须要带有else语句，如果条件表达式为真就会执行语句组，否则执行括号里
 gurad必须在函数里使用
 guard 条件表达式 else {
 
 xxx
 }
 语句组
 6.switch后面的()可以省略，，case语句之后，break也可以省略
 */
if a < 10 {
    print("a小于10")
} else {
    print("a大于10")
}

let i = 20
let j = 30
var res = i > j ? i : j

let age = 20
// 多个判断条件，可以用guard，可读性更高
func test(age : Int) {
    guard age >= 18 else {
        print("回家看书去")
        //必须要跟上条件表达式
        return
    }
    print("可以上网")
}
test(age: age)

// 0 : 男   1 : 女
let sex = 0

switch sex {
case 0:
    print("男")
case 1:
    print("女")
default:
    print("其他")
}

// switch用法的补充
/*
 1.如果希望某个case中产生case穿透，使用fallthrough
 2.case后面可以判断多个条件,以，分割
 3.switch可以判断浮点型
 4.可以判断字符串
 5.可以使用区间：
 开区间：0..<20 0~19
 闭区间：0...20 0~20
 */

let m = 5
let n = 10
var result = 0

let opration = "+"

switch opration {
case "+":
    result = m + n
case "-":
    result = m - n
case "*":
    result = m * n
case "/":
    result = m / n
default:
    result = 0
}
print(result)

let score = 92

switch score {
case 0..<60:
    print("不及格")
case 60..<80:
    print("中")
case 80..<90:
    print("良好")
case 90...100:
    print("优秀")
default:
    print("没有分数")
}


// 7.循环
for k in 0..<10 {
    print(k)
}
