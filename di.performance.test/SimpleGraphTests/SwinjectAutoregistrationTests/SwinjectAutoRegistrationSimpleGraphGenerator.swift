//
//  SwinjectAutoRegistrationSimpleGraphGenerator.swift
//  di.performance.test
//
//  Created by v.batrakov on 25.09.2020.
//  Copyright © 2020 v.batrakov. All rights reserved.
//

import Foundation

struct SwinjectAutoRegistrationSimpleGraphGenerator {
    
    static func generate() {
        
        for i in 1...100 {
            print(
                """
                container.autoregister(TestProtocol\(i).self, initializer: SimpleGraphTestClass\(i).init)//.inObjectScope(.transient)
                """
            )
        }
        
        for i in 1...100 {
            print(
                """
                container.autoregister(SimpleGraphNextTestProtocol\(i).self, initializer: SimpleGraphNextTestClass\(i).init)//.inObjectScope(.transient)
                """
            )
        }
        
        for i in 1...300 {
            print(
                """
                container.autoregister(SimpleGraph500TestProtocol\(i).self, initializer: SimpleGraph500TestClass\(i).init)//.inObjectScope(.transient)
                """
            )
        }
        
       for i in 1...500 {
           print(
               """
               container.autoregister(SimpleGraph1000TestProtocol\(i).self, initializer: SimpleGraph1000TestClass\(i).init)//.inObjectScope(.transient)
               """
           )
       }
    }
}
