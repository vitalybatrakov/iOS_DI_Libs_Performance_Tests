//
//  SwinjectSimpleGraphGenerator.swift
//  di.performance.test
//
//  Created by v.batrakov on 12.08.2020.
//  Copyright © 2020 v.batrakov. All rights reserved.
//

import Foundation

struct SwinjectSimpleGraphGenerator {
    
    static func generate(count: Int) {
        for i in 1...count {
            print("protocol SimpleGraph1000TestProtocol\(i) {}")
        }
        
        for i in 1...count/4 {
            print(
                """
                final class SimpleGraph1000TestClass\(i): SimpleGraph1000TestProtocol\(i) {}
                """
            )
        }
        
        for i in (count/4)+1...count/2 {
            print(
                """
                final class SimpleGraph1000TestClass\(i): SimpleGraph1000TestProtocol\(i) {
                
                            let param1: InjectedTestProtocol10
                    
                            init(param1: InjectedTestProtocol10) {
                                self.param1 = param1
                            }
                }
                """
            )
        }
        
        for i in (count/2)+1...count/4*3 {
            print(
                """
                final class SimpleGraph1000TestClass\(i): SimpleGraph1000TestProtocol\(i) {
                
                            let param1: InjectedTestProtocol10
                            let param2: InjectedTestProtocol9
                    
                            init(param1: InjectedTestProtocol10, param2: InjectedTestProtocol9) {
                                self.param1 = param1
                                self.param2 = param2
                            }
                }
                """
            )
        }
        
        for i in (count/4*3)+1...count {
            print(
                """
                final class SimpleGraph1000TestClass\(i): SimpleGraph1000TestProtocol\(i) {
                
                            let param1: InjectedTestProtocol10
                            let param2: InjectedTestProtocol9
                            let param3: InjectedTestProtocol8
                    
                            init(param1: InjectedTestProtocol10, param2: InjectedTestProtocol9, param3: InjectedTestProtocol8) {
                                self.param1 = param1
                                self.param2 = param2
                                self.param3 = param3
                            }
                }
                """
            )
        }
        
        for i in 1...count/4 {
            print(
                """
                container.register(SimpleGraph1000TestProtocol\(i).self) { _ in
                    return SimpleGraph1000TestClass\(i)()
                }
                """
            )
        }
        
        for i in (count/4)+1...count/2 {
            print(
                """
                container.register(SimpleGraph1000TestProtocol\(i).self) { resolver in
                    let param1 = resolver.resolve(InjectedTestProtocol10.self)!
                    return SimpleGraph1000TestClass\(i)(param1: param1)
                }
                """
            )
        }
        
        for i in (count/2)+1...count/4*3 {
            print(
                """
                container.register(SimpleGraph1000TestProtocol\(i).self) { resolver in
                    let param1 = resolver.resolve(InjectedTestProtocol10.self)!
                    let param2 = resolver.resolve(InjectedTestProtocol9.self)!
                    return SimpleGraph1000TestClass\(i)(param1: param1, param2: param2)
                }
                """
            )
        }
        
        for i in (count/4*3)+1...count {
            print(
                """
                container.register(SimpleGraph1000TestProtocol\(i).self) { resolver in
                    let param1 = resolver.resolve(InjectedTestProtocol10.self)!
                    let param2 = resolver.resolve(InjectedTestProtocol9.self)!
                    let param3 = resolver.resolve(InjectedTestProtocol8.self)!
                    return SimpleGraph1000TestClass\(i)(param1: param1, param2: param2, param3: param3)
                }
                """
            )
        }
        
        for i in 1...count {
            print("let _ = container.resolve(SimpleGraph1000TestProtocol\(i).self)")
        }

    }
}
