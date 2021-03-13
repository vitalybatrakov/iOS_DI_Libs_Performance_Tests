//
//  DITranquillityComplexGraphTests.swift
//  di.performance.test
//
//  Created by v.batrakov on 23.09.2020.
//  Copyright © 2020 v.batrakov. All rights reserved.
//

import Foundation
import DITranquillity

struct DITranquillityComplexGraphTests {
    
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
        
        let container = DIContainer()
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
            let container1 = DIContainer()
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
            let container2 = DIContainer()
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
            let container3 = DIContainer()
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
    
    // ObjectGraph dependencies injected
    
    // register: 100 / resolve: 1000
        // Average time register 0.0046
        // Average time resolving 0.73
    
    // register: 200 / resolve: 1000
        // Average time register 0.0093
        // Average time resolving 0.854
    
    // register: 500 / resolve: 1000
        // Average time register 0.024
        // Average time resolving 1.28
    
    // register: 1000 / resolve: 1000
        // Average time register 0.057
        // Average time resolving 2.055
    
    
    // Transient dependencies injected (prototype)
    
    // register: 100 / resolve: 1000
        // Average time register 0.0045
        // Average time resolving 12.75
    
    // register: 200 / resolve: 1000
        // Average time register 0.0091
        // Average time resolving 15.05
    
    // register: 500 / resolve: 1000
        // Average time register 0.024
        // Average time resolving 23.86
    
    // register: 1000 / resolve: 1000
        // Average time register 0.056
        // Average time resolving 38.31
    
}
