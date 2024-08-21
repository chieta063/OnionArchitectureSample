//
//  File.swift
//  
//
//  Created by 阿部紘明 on 2024/08/21.
//

import Foundation
import Common

extension InjectedValues {
  public var activityService: ActivityService {
    get { Self[ActivityServiceKey.self] }
    set { Self[ActivityServiceKey.self] = newValue}
  }
}
