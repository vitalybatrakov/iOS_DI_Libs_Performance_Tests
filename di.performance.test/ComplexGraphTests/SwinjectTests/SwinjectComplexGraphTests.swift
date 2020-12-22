//
//  SwinjectComplexGraphTests.swift
//  di.performance.test
//
//  Created by v.batrakov on 11.08.2020.
//  Copyright © 2020 v.batrakov. All rights reserved.
//

import Foundation
import Swinject

struct SwinjectComplexGraphTests {
    
    static let registerCount = 200
    
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
    
    // ObjectGraph dependencies injected
    
    // register: 100 / resolve: 1000
        // Average time register 0.00038
        // Average time resolving 0.225
    
    // register: 200 / resolve: 1000
        // Average time register 0.00078
        // Average time resolving 0.249
    
    // register: 500 / resolve: 1000
        // Average time register 0.0028
        // Average time resolving 0.313
    
    // register: 1000 / resolve: 1000
        // Average time register 0.0104
        // Average time resolving 0.428
    
    
    // Transient dependencies injected
    
    // register: 100 / resolve: 1000
        // Average time register 0.0005
        // Average time resolving 2.98
    
    // register: 200 / resolve: 1000
        // Average time register 0.00077
        // Average time resolving 3.03
    
    // register: 500 / resolve: 1000
        // Average time register 0.0038
        // Average time resolving 3.13
    
    // register: 1000 / resolve: 1000
        // Average time register 0.098
        // Average time resolving 3.24
    
}
