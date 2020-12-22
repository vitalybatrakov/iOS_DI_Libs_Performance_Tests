//
//  EasyDISimpleGraphGenerator.swift
//  di.performance.test
//
//  Created by v.batrakov on 20.09.2020.
//  Copyright © 2020 v.batrakov. All rights reserved.
//

import Foundation

struct EasyDISimpleGraphGenerator {
    
    static func generate(count: Int) {
        
        for i in 1...count/4 {
            print(
                """
                var property\(i): SimpleGraph1000TestProtocol\(i) {
                    return define(init: SimpleGraph1000TestClass\(i)())
                }
                """
            )
        }
        
        for i in (count/4)+1...count/2 {
            print(
                """
                var property\(i): SimpleGraph1000TestProtocol\(i) {
                    return define(init: SimpleGraph1000TestClass\(i)(param1: self.injectedAssembly.injectedTestProperty3))
                }
                """
            )
        }
        
        for i in (count/2)+1...count/4*3 {
            print(
                """
                var property\(i): SimpleGraph1000TestProtocol\(i) {
                    return define(init: SimpleGraph1000TestClass\(i)(param1: self.injectedAssembly.injectedTestProperty3,
                                                                 param2: self.injectedAssembly.injectedTestProperty2))
                }
                """
            )
        }
        
        for i in (count/4*3)+1...count {
            print(
                """
                var property\(i): SimpleGraph1000TestProtocol\(i) {
                    return define(init: SimpleGraph1000TestClass\(i)(param1: self.injectedAssembly.injectedTestProperty3,
                                                                 param2: self.injectedAssembly.injectedTestProperty2,
                                                                 param3: self.injectedAssembly.injectedTestProperty1))
                }
                """
            )
        }
        
        for i in 1...count {
            print(
                """
                    _ = assembly.property\(i)
                """
            )
        }
    }
}
