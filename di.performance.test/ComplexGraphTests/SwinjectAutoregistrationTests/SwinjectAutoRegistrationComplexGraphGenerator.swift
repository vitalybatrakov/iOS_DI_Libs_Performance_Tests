//
//  SwinjectAutoRegistrationComplexGraphGenerator.swift
//  di.performance.test
//
//  Created by v.batrakov on 25.09.2020.
//  Copyright © 2020 v.batrakov. All rights reserved.
//

import Foundation

struct SwinjectAutoRegistrationComplexGraphGenerator {
    
    static func generate(count: Int) {
        
        for i in 1...count {
            print(
                """
                container.autoregister(TestProtocol\(i).self, initializer: TestClass\(i).init)//.inObjectScope(.transient)
                """
            )
        }
    }
}
