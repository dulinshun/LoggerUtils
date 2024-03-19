//
//  LoggerExtension.swift
//  CXSocial
//
//  Created by Tomorrow on 2024/3/19.
//  Copyright © 2024 czc. All rights reserved.
//

import Foundation
import OSLog

public extension OSLog {
    
    func log(_ type: OSLogType = .default, message: String, file: String = #file, function: String = #function, line: Int = #line) {
        let className = URL(fileURLWithPath: file).deletingPathExtension().lastPathComponent
        os_log("========================\nlogger:%{public}@ → %{public}@ → %{public}d → \n%{public}@\n========================", log: self, type: type, className, function, line, message)
    }
    
    func `default`(_ message: String, file: String = #file, function: String = #function, line: Int = #line) {
        log(.default, message: message, file: file, function: function, line: line)
    }
    
    func debug(_ message: String, file: String = #file, function: String = #function, line: Int = #line) {
        log(.debug, message: message, file: file, function: function, line: line)
    }
    
    func info(_ message: String, file: String = #file, function: String = #function, line: Int = #line) {
        log(.info, message: message, file: file, function: function, line: line)
    }
    
    func error(_ message: String, file: String = #file, function: String = #function, line: Int = #line) {
        log(.error, message: message, file: file, function: function, line: line)
    }
}
