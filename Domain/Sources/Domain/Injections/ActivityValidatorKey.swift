//
//  ActivityValidatorKey.swift
//
//
//  Created by 阿部紘明 on 2024/08/29.
//

import Common
import Foundation

/// ActivityValidatorの注入Key
public struct ActivityValidatorKey: InjectionKey {
  public static var currentValue: ActivityValidator = .init()
}
