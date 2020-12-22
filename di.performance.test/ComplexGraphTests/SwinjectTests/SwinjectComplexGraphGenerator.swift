//
//  Generator.swift
//  di.performance.test
//
//  Created by v.batrakov on 12.08.2020.
//  Copyright © 2020 v.batrakov. All rights reserved.
//

import Foundation

struct SwinjectComplexGraphGenerator {
    
    static func generate(count: Int) {
        
//        for i in 1...count {
//            print("protocol TestProtocol\(i) {}")
//        }

        for i in 1...count {
            print(
                """
                final class TestClass\(i): TestProtocol\(i) {
                
                            let param1: InjectedTestProtocol\(1)
                            let param2: InjectedTestProtocol\(2)
                            let param3: InjectedTestProtocol\(3)
                            let param4: InjectedTestProtocol\(4)
                            let param5: InjectedTestProtocol\(5)
                            let param6: InjectedTestProtocol\(6)
                            let param7: InjectedTestProtocol\(7)
                            let param8: InjectedTestProtocol\(8)
                            let param9: InjectedTestProtocol\(9)
                            let param10: InjectedTestProtocol\(10)
                    
                            init(param1: InjectedTestProtocol\(1),
                                 param2: InjectedTestProtocol\(2),
                                 param3: InjectedTestProtocol\(3),
                                 param4: InjectedTestProtocol\(4),
                                 param5: InjectedTestProtocol\(5),
                                 param6: InjectedTestProtocol\(6),
                                 param7: InjectedTestProtocol\(7),
                                 param8: InjectedTestProtocol\(8),
                                 param9: InjectedTestProtocol\(9),
                                 param10: InjectedTestProtocol\(10)) {
                                self.param1 = param1
                                self.param2 = param2
                                self.param3 = param3
                                self.param4 = param4
                                self.param5 = param5
                                self.param6 = param6
                                self.param7 = param7
                                self.param8 = param8
                                self.param9 = param9
                                self.param10 = param10
                            }
                }
                """
            )
        }
        
        for i in 1...count {
            print(
                """
                container.register(TestProtocol\(i).self) { resolver in
                    let param1 = resolver.resolve(InjectedTestProtocol\(1).self)!
                    let param2 = resolver.resolve(InjectedTestProtocol\(2).self)!
                    let param3 = resolver.resolve(InjectedTestProtocol\(3).self)!
                    let param4 = resolver.resolve(InjectedTestProtocol\(4).self)!
                    let param5 = resolver.resolve(InjectedTestProtocol\(5).self)!
                    let param6 = resolver.resolve(InjectedTestProtocol\(6).self)!
                    let param7 = resolver.resolve(InjectedTestProtocol\(7).self)!
                    let param8 = resolver.resolve(InjectedTestProtocol\(8).self)!
                    let param9 = resolver.resolve(InjectedTestProtocol\(9).self)!
                    let param10 = resolver.resolve(InjectedTestProtocol\(10).self)!
                    return TestClass\(i)(param1: param1, param2: param2, param3: param3, param4: param4, param5: param5, param6: param6, param7: param7, param8: param8, param9: param9, param10: param10)
                }//.inObjectScope(.transient)
                """
            )
        }
        
//        for i in 1...count {
//            print("let _ = container.resolve(TestProtocol\(i).self)")
//        }
    }
}
