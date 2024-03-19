//
//  LoggerManager.swift
//  CXSocial
//
//  Created by Tomorrow on 2024/3/19.
//  Copyright © 2024 czc. All rights reserved.
//

import Foundation
import OSLog

public let Logger = LoggerManager.shared.logger

public class LoggerManager: LoggerProtocol {
    public static let shared = LoggerManager()
}

