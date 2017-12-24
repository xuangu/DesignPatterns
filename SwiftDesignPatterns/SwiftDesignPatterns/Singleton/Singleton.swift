//
//  Singleton.swift
//  SwiftDesignPatterns
//
//  Created by 顾晅 on 2017/12/14.
//  Copyright © 2017年 StoryTeaRoom. All rights reserved.
//

import Foundation

final class Singleton {
    
    static let singleton = Singleton()
    
    private var data: [String]
    
    private let runQueue: DispatchQueue
    
    private init() {
        data = [String]()
        
        runQueue = DispatchQueue(label: "SingletonRunQueue")
    }
    
    func addDescription(_ desc: String) -> Void {
        runQueue.async { [weak self] in
            self?.data.append(desc)
        }
    }
    
    func description() -> Void {
        print("this is a singleton object")
    }
    
    class func testcase() {
        let singleton = Singleton.singleton
        
        singleton.description()
    }
}
