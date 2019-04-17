import UIKit

//类型不一致，不能直接赋值，所以是错的
//let url : NSURL = NSURL(string: "www.baidu.com")

let url : NSURL? = NSURL(string: "www.baidu.com")

// 根据url创建NSURLRequest对象
//if url != nil {
//    let request = NSURLRequest(URL: url!)
//}

if let url = url {
    let request = NSURLRequest(url: url as URL)
    print(request)
}
