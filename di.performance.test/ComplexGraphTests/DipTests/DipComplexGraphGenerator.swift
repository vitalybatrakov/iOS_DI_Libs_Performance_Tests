//
//  DipComplexGraphGenerator.swift
//  di.performance.test
//
//  Created by v.batrakov on 22.09.2020.
//  Copyright © 2020 v.batrakov. All rights reserved.
//

import Foundation

struct DipComplexGraphGenerator {
    
    static func generate(count: Int) {
        
        for i in 1...count {
            print(
                """
                container.register  {
                    TestClass\(i)(param1: try container.resolve(),
                                   param2: try container.resolve(),
                                   param3: try container.resolve(),
                                   param4: try container.resolve(),
                                   param5: try container.resolve(),
                                   param6: try container.resolve(),
                                   param7: try container.resolve(),
                                   param8: try container.resolve(),
                                   param9: try container.resolve(),
                                   param10: try container.resolve()) as TestProtocol\(i)
                }
                """
            )
        }
        
        for i in 1...count {
            print("_ = try! container.resolve() as TestProtocol\(i)")
        }
    }
}
