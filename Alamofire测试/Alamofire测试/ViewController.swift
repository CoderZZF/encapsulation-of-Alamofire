//
//  ViewController.swift
//  Alamofire测试
//
//  Created by zhangzhifu on 2017/3/17.
//  Copyright © 2017年 seemygo. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*
        Alamofire.request(Method.GET, "http://httpbin.org/get").responseJSON { (response) in
            guard let result = response.result.value else {
                print(response.result.error)
                return
            }
            print(result)
        }*/
        
        /*
        Alamofire.request(.POST, "http://httpbin.org/post", parameters: ["name" : "why"]).responseJSON { (response) in
            guard let result = response.result.value else {
                print(response.result.error)
                return
            }
            print(result)
        }*/
        
        /*
        NetworkTools.requestData(.GET, URLString: "http://httpbin.org/get") { (result) in
            print(result)
        }*/
        
        NetworkTools.requestData(.POST, URLString: "http://httpbin.org/post", parameters: ["name" : "why"]) { (result) in
            print(result)
        }
    }
}

