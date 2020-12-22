//
//  EasyDIComplexGraphGenerator.swift
//  di.performance.test
//
//  Created by v.batrakov on 20.09.2020.
//  Copyright © 2020 v.batrakov. All rights reserved.
//

import Foundation

struct EasyDIComplexGraphGenerator {
    
    static func generate(count: Int) {
        
        for i in 1...count {
            print(
                """
                    var property\(i): TestProtocol\(i) {
                      return define(init: TestClass\(i)(param1: self.injectedAssembly.injectedTestProperty1,
                                                          param2: self.injectedAssembly.injectedTestProperty2,
                                                          param3: self.injectedAssembly.injectedTestProperty3,
                                                          param4: self.injectedAssembly.injectedTestProperty4,
                                                          param5: self.injectedAssembly.injectedTestProperty5,
                                                          param6: self.injectedAssembly.injectedTestProperty6,
                                                          param7: self.injectedAssembly.injectedTestProperty7,
                                                          param8: self.injectedAssembly.injectedTestProperty8,
                                                          param9: self.injectedAssembly.injectedTestProperty9,
                                                          param10: self.injectedAssembly.injectedTestProperty10))
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
