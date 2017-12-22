//
//  AbstractTemplateMethodClass.swift
//  SwiftDesignPatterns
//
//  Created by 顾晅 on 2017/12/21.
//  Copyright © 2017年 StoryTeaRoom. All rights reserved.
//

// https://github.com/apple/swift-evolution/blob/master/proposals/0026-abstract-classes-and-methods.md
// 目前Swift语言机制本身并不支持类似Java中的抽象类的概念，相关的讨论参见https://github.com/apple/swift-evolution/blob/master/proposals/0026-abstract-classes-and-methods.md 所以目前对于传统Java采用抽象类来实现模板方法模式的方式还无法完全用Swift语言表示，目前用Swift实现模板方法模式比较好的一种做法是采用协议扩展，但是协议扩展有一个问题就是无法对模板方法本身实现保护，子类可以覆写模板方法
import Foundation

typealias Action = () -> Void

protocol TemplateMethodProtocol {
    func templateMethod()
    func method1()
    func method2()
}


extension TemplateMethodProtocol {
    // 在extension中增加final关键字是没有用的
    func templateMethod() {
        method1()
        method2()
    }
}


class ConcreteClass1: TemplateMethodProtocol {
    
    var name: String?
    
    func method1() -> Void {
        print("ConcreteClass1 method1")
    }
    
    func method2() -> Void {
        print("ConcreteClass2 method2")
    }
    
    func templateMethod() {
        
    }
}
