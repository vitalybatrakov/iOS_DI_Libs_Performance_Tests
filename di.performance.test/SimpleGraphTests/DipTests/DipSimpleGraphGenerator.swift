//
//  DipSimpleGraphGenerator.swift
//  di.performance.test
//
//  Created by v.batrakov on 22.09.2020.
//  Copyright © 2020 v.batrakov. All rights reserved.
//

import Foundation

struct DipSimpleGraphGenerator {
    
    static func generate(count: Int) {

        for i in 1...count/4 {
            print(
                """
                container.register  {
                    SimpleGraph1000TestClass\(i)() as SimpleGraph1000TestProtocol\(i)
                }
                """
            )
        }
        
        for i in (count/4)+1...count/2 {
            print(
                """
                container.register  {
                    SimpleGraph1000TestClass\(i)(param1: try container.resolve()) as SimpleGraph1000TestProtocol\(i)
                }
                """
            )
        }
        
        for i in (count/2)+1...count/4*3 {
            print(
                """
                container.register  {
                    SimpleGraph1000TestClass\(i)(param1: try container.resolve(),
                                             param2: try container.resolve()) as SimpleGraph1000TestProtocol\(i)
                }
                """
            )
        }
        
        for i in (count/4*3)+1...count {
            print(
                """
                container.register  {
                    SimpleGraph1000TestClass\(i)(param1: try container.resolve(),
                                             param2: try container.resolve(),
                                             param3: try container.resolve()) as SimpleGraph1000TestProtocol\(i)
                }
                """
            )
        }
        
        for i in 1...count {
            print("_ = try! container.resolve() as SimpleGraph1000TestProtocol\(i)")
        }
    }
}
