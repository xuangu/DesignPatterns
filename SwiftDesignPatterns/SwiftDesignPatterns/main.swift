//
//  main.swift
//  SwiftDesignPatterns
//
//  Created by 顾晅 on 2017/12/14.
//  Copyright © 2017年 StoryTeaRoom. All rights reserved.
//

import Foundation

public func example(of description: String, action: () -> Void) {
    print("\n--- Example of:", description, "---")
    action()
}

example(of: "Singleton") {
    Singleton.testcase()
}







