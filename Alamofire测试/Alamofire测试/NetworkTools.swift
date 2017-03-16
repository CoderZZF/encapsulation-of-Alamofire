//
//  NetworkTools.swift
//  Alamofire测试
//
//  Created by zhangzhifu on 2017/3/17.
//  Copyright © 2017年 seemygo. All rights reserved.
//

import UIKit
import Alamofire

enum MethodType {
    case GET
    case POST
}

class NetworkTools {
    class func requestData(type : MethodType, URLString : String, parameters : [String : NSString]? = nil, finishedCallBack : (result : AnyObject)-> ()) {
        // 1. 获取类型
        let method = type == .GET ? Method.GET : Method.POST
        
        // 2. 发送网络请求
        Alamofire.request(method, URLString, parameters: parameters).responseJSON { (response) in
            // 3. 获取结果
            guard let result = response.result.value else {
                print(response.result.error)
                return
            }
            
            // 4. 将结果回调出去
            finishedCallBack(result: result)
        }
    }
}
