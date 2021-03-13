//
//  SwinjectSimpleGraphTests.swift
//  di.performance.test
//
//  Created by v.batrakov on 11.08.2020.
//  Copyright © 2020 v.batrakov. All rights reserved.
//

import Foundation
import Swinject

struct SwinjectSimpleGraphTests {
    
    static let registerCount = 100
    
    static let resolveMultiplier = 1000 / registerCount
    static let testsCount = 100
    static let testsCountDevider: Double = Double(testsCount)
    
    static func testPerformance() {
        
        print("RegisterCount \(registerCount)")
        print("ResolveMultiplier \(resolveMultiplier)")
        
        // Use 3 different types of time measure
        
        //first
        
        var registerTime: TimeInterval = 0
        var resolvingTime: TimeInterval = 0
        
        let container = Container()
        registerTime += measure(name: "register_first") {
            register(container: container, count: registerCount)
        }
        resolvingTime += measure(name: "resolving_first") {
            for _ in 1...resolveMultiplier {
                resolve(container: container, count: registerCount)
            }
        }
        
        print("First register time \(registerTime)")
        print("First resolving time \(resolvingTime)")
        
        //1
        
        registerTime = 0
        resolvingTime = 0
        
        for _ in 0..<testsCount {
            let container1 = Container()
            registerTime += measure(name: "register1") {
                register(container: container1, count: registerCount)
            }
            resolvingTime += measure(name: "resolving1") {
                for _ in 1...resolveMultiplier {
                    resolve(container: container1, count: registerCount)
                }
            }
        }
        print("Average time register1 \(registerTime / testsCountDevider)")
        print("Average time resolving1 \(resolvingTime / testsCountDevider)")
        
        //2
        
        registerTime = 0
        resolvingTime = 0
        
        for _ in 0..<testsCount {
            let container2 = Container()
            registerTime += measure2(name: "register2") {
                register(container: container2, count: registerCount)
            }
            resolvingTime += measure2(name: "resolving2") {
                for _ in 1...resolveMultiplier {
                    resolve(container: container2, count: registerCount)
                }
            }
        }
        print("Average time register2 \(registerTime / testsCountDevider)")
        print("Average time resolving2 \(resolvingTime / testsCountDevider)")
        
        //3
        
        registerTime = 0
        resolvingTime = 0
        
        for _ in 0..<testsCount {
            let container3 = Container()
            registerTime += measure3(name: "register3") {
                register(container: container3, count: registerCount)
            }
            resolvingTime += measure3(name: "resolving3") {
                for _ in 1...resolveMultiplier {
                    resolve(container: container3, count: registerCount)
                }
            }
        }
        print("Average time register3 \(registerTime / testsCountDevider)")
        print("Average time resolving3 \(resolvingTime / testsCountDevider)")
    }
    
    // IPad 2017
    
    // register: 100 / resolve: 1000
        // Average time register 0.00035
        // Average time resolving 0.05
    
    // register: 200 / resolve: 1000
        // Average time register 0.00076
        // Average time resolving 0.075
    
    // register: 500 / resolve: 1000
        // Average time register 0.0028
        // Average time resolving 0.143
    
    // register: 1000 / resolve: 1000
        // Average time register 0.01
        // Average time resolving 0.249
}
