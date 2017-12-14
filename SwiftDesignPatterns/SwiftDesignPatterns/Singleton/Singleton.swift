//
//  Singleton.swift
//  SwiftDesignPatterns
//
//  Created by 顾晅 on 2017/12/14.
//  Copyright © 2017年 StoryTeaRoom. All rights reserved.
//

import Foundation

//let globalSingleton = Singleton();

final class Singleton {
    
    static let singleton = Singleton()
    
    private var data: [String]
    
    private let runQueue: DispatchQueue
    
    private init() {
        data = [String]()
        
        runQueue = DispatchQueue(label: "SingletonRunQueue")
    }
    
    func addDescription(_ desc: String) -> Void {
//        weak var weakSelf = self
        runQueue.async { [weak self] in
            // weakSelf?.data.append(desc)
            self?.data.append(desc)
        }
    }
    
    func description() -> Void {
        print("this is a singleton object")
    }
    
    func test() {
        
    }
}
