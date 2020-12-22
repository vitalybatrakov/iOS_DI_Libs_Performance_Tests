//
//  Measure.swift
//  di.performance.test
//
//  Created by v.batrakov on 14.08.2020.
//  Copyright © 2020 v.batrakov. All rights reserved.
//

import Foundation
import UIKit

@discardableResult
func measure(name: String = "", shouldPrintTime: Bool = false, _ block: () -> Void) -> TimeInterval {
    let start = DispatchTime.now()
    block()
    let end = DispatchTime.now()
    let time = Double(end.uptimeNanoseconds - start.uptimeNanoseconds) / 1_000_000_000.0
    if shouldPrintTime {
        print("Time: \(name) - \(time)")
    }
    return time
}

@discardableResult
func measure2(name: String = "", shouldPrintTime: Bool = false, _ block: () -> Void) -> TimeInterval {
    let start = CFAbsoluteTimeGetCurrent()
    block()
    let diff = CFAbsoluteTimeGetCurrent() - start
    if shouldPrintTime {
        print("Time: \(name) - \(diff)")
    }
    return diff
}

@discardableResult
func measure3(name: String = "", shouldPrintTime: Bool = false, _ block: () -> Void) -> TimeInterval {
    let startTime = CACurrentMediaTime()
    block()
    let timeElapsed = CACurrentMediaTime() - startTime
    if shouldPrintTime {
        print("Time: \(name) - \(timeElapsed)")
    }
    return timeElapsed
}
