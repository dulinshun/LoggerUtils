//
//  LoggerProtocol.swift
//  CXSocial
//
//  Created by Tomorrow on 2024/3/19.
//  Copyright © 2024 czc. All rights reserved.
//

import Foundation
import OSLog

fileprivate var keyLogger: Int = 0

public protocol LoggerProtocol {
    var logger: OSLog { get }
}

public extension LoggerProtocol {
    var logger: OSLog {
        get {
            if let result = objc_getAssociatedObject(self, &keyLogger) as? OSLog {
                return result
            }
            let bundleId = Bundle.main.bundleIdentifier ?? ""
            let result = OSLog(subsystem: bundleId, category: "\(type(of: self))")
            objc_setAssociatedObject(self, &keyLogger, result, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
            return result
        }
    }
}
