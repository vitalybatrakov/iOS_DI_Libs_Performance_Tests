//
//  EasyDIComplexGraphTests.swift
//  di.performance.test
//
//  Created by v.batrakov on 20.09.2020.
//  Copyright © 2020 v.batrakov. All rights reserved.
//

import Foundation
import EasyDi

struct EasyDIComplexGraphTests {
    
    static let registerCount = 100
    
    static let resolveMultiplier = 1000 / registerCount
    static let testsCount = 100
    static let testsCountDevider: Double = Double(testsCount)
    
    static func testPerformance() {
        
        print("EasyDIComplexGraphTests")
        print("RegisterCount \(registerCount)")
        print("ResolveMultiplier \(resolveMultiplier)")
        
        // Use 3 different types of time measure
        
        //first
        
        var registerTime: TimeInterval = 0
        var resolvingTime: TimeInterval = 0
        
        registerTime += measure(name: "register_first") {
            _ = createAssembly(count: registerCount)
        }
        let assembly = createAssembly(count: registerCount)
        resolvingTime += measure(name: "resolving_first") {
            for _ in 1...resolveMultiplier {
                resolve(assembly: assembly, count: registerCount)
            }
        }

        print("First register time \(registerTime)")
        print("First resolving time \(resolvingTime)")
        
        //1
        
        registerTime = 0
        resolvingTime = 0

        for _ in 0..<testsCount {
            registerTime += measure(name: "register1") {
                _ = createAssembly(count: registerCount)
            }
            let assembly = createAssembly(count: registerCount)
            resolvingTime += measure(name: "resolving1") {
                for _ in 1...resolveMultiplier {
                    resolve(assembly: assembly, count: registerCount)
                }
            }
        }
        print("Average time register1 \(registerTime / testsCountDevider)")
        print("Average time resolving1 \(resolvingTime / testsCountDevider)")

        //2

        registerTime = 0
        resolvingTime = 0

        for _ in 0..<testsCount {
            registerTime += measure(name: "register2") {
                _ = createAssembly(count: registerCount)
            }
            let assembly = createAssembly(count: registerCount)
            resolvingTime += measure(name: "resolving2") {
                for _ in 1...resolveMultiplier {
                    resolve(assembly: assembly, count: registerCount)
                }
            }
        }
        print("Average time register2 \(registerTime / testsCountDevider)")
        print("Average time resolving2 \(resolvingTime / testsCountDevider)")

        //3

        registerTime = 0
        resolvingTime = 0

        for _ in 0..<testsCount {
            registerTime += measure(name: "register3") {
                _ = createAssembly(count: registerCount)
            }
            let assembly = createAssembly(count: registerCount)
            resolvingTime += measure(name: "resolving3") {
                for _ in 1...resolveMultiplier {
                    resolve(assembly: assembly, count: registerCount)
                }
            }
        }
        print("Average time register3 \(registerTime / testsCountDevider)")
        print("Average time resolving3 \(resolvingTime / testsCountDevider)")
    }
    
    // IPad 2017
    
    // Release
    // ObjectGraph dependencies injected
    
    // register: 100 / resolve: 1000
        // Average time register 0.000007
        // Average time resolving 0.709
    
    // register: 200 / resolve: 1000
        // Average time register 0.000008
        // Average time resolving 0.713
    
    // register: 500 / resolve: 1000
        // Average time register 0.000009
        // Average time resolving 0.718
    
    // register: 1000 / resolve: 1000
        // Average time register 0.00001
        // Average time resolving 0.727
    
    
    
    // Debug
    
    // ObjectGraph dependencies injected
    
    // register: 100 / resolve: 1000
        // Average time register 0.0000118
        // Average time resolving 0.77
    
    // register: 200 / resolve: 1000
        // Average time register 0.0000123
        // Average time resolving 0.785
    
    // register: 500 / resolve: 1000
        // Average time register 0.000013
        // Average time resolving 0.793
    
    // register: 1000 / resolve: 1000
        // Average time register 0.0000134
        // Average time resolving 0.806
    
    
    // Prototype dependencies injected
    
    // register: 100 / resolve: 1000
        // Average time register 0.000012
        // Average time resolving 16.74
    
    // register: 200 / resolve: 1000
        // Average time register 0.000012
        // Average time resolving 16.8
    
    // register: 500 / resolve: 1000
        // Average time register 0.000012
        // Average time resolving 16.87
    
    // register: 1000 / resolve: 1000
        // Average time register 0.000012
        // Average time resolving 16.98

}
