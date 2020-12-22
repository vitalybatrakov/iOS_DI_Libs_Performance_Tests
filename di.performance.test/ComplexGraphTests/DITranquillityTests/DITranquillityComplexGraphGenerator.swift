//
//  DITranquillityComplexGraphGenerator.swift
//  di.performance.test
//
//  Created by v.batrakov on 23.09.2020.
//  Copyright © 2020 v.batrakov. All rights reserved.
//

import Foundation

struct DITranquillityComplexGraphGenerator {
    
    static func generate(count: Int) {
        
        for i in 1...count {
            print(
                """
                container.register(TestClass\(i).init)
                    .as(TestProtocol\(i).self)
                    .lifetime(.objectGraph)
                """
            )
        }
        
        for i in 1...count {
            print("let _: TestProtocol\(i) = container.resolve()")
        }
    }
}
