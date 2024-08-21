//
//  File.swift
//  
//
//  Created by 阿部紘明 on 2024/08/21.
//

import Foundation
import Common

public struct ActivityServiceKey: InjectionKey {
  static public var currentValue: ActivityService = ActivityService()
}
